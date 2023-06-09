﻿using IISAutoParts.Class;
using IISAutoParts.DBcontext;
using IISAutoParts.DBcontext.MyEntities;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using CheckBox = System.Windows.Controls.CheckBox;
using MessageBox = System.Windows.MessageBox;

namespace IISAutoParts.pages
{
    /// <summary>
    /// Логика взаимодействия для providePage.xaml
    /// </summary>
    public partial class providePage : Page
    {
        Paginator paginator;
        IISAutoPartsEntities _dbContext;
        List<OrdersView> provide = new List<OrdersView>();
        private List<int> selectedIds = new List<int>();

        public providePage()
        {
            InitializeComponent();

            _dbContext = new IISAutoPartsEntities();

            provide = fillData();

            providerCb.ItemsSource = _dbContext.providers.AsNoTracking().ToList();
            providerCb.DisplayMemberPath = "name";
            providerCb.SelectedValuePath = "id";

            paginator = new Paginator(provide.ToList<object>(), 1, 10);

            pageNumber.Text = paginator.GetPage().ToString();
            countPage.Content = paginator.GetCountpage();

            provideDGV.ItemsSource = paginator.GetTable();

            if (UserController.permissionList.Where(x => x.Sector == "Поставки").Select(x => x.Add).FirstOrDefault())
                AddnewProvide.IsEnabled = true;
            else
                AddnewProvide.IsEnabled = false;
            if (UserController.permissionList.Where(x => x.Sector == "Поставки").Select(x => x.Delete).FirstOrDefault())
                DeleteBtn.IsEnabled = true;
            else
                DeleteBtn.IsEnabled = false;


        }

        private void provideDGV_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            OrdersView selectedPart = provideDGV.SelectedItem as OrdersView;

            if (selectedPart != null)
            {
                byte[] file = _dbContext.provideDoc.AsNoTracking()
                    .Where(x => x.provideId == selectedPart.id).Select(x => x.doc).FirstOrDefault();
                if (file is null)
                {
                    MessageBox.Show("Файлы отсутствуют");
                }
                else
                {
                    string SavePath = System.IO.Path.Combine(AppDomain.CurrentDomain.BaseDirectory, $@"Templates/Акт№{selectedPart.orderNumber} поставки автозапчастей для информационной системы.docx");

                    File.WriteAllBytes(SavePath, file);
                    Process.Start(SavePath);
                }
            }
            else
            {
                MessageBox.Show("Не удалось открыть выбранный объект.");
            }
        }
        private void nextBtn_Click(object sender, RoutedEventArgs e)
        {
            paginator.NextPage();
            pageNumber.Text = paginator.GetPage().ToString();
            provideDGV.ItemsSource = paginator.GetTable();
        }

        private void previousBtn_Click(object sender, RoutedEventArgs e)
        {
            paginator.PreviousPage();
            pageNumber.Text = paginator.GetPage().ToString();
            provideDGV.ItemsSource = paginator.GetTable();
        }

        private void pageNumber_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (pageNumber.Text != null && pageNumber.Text != "")
            {
                paginator.SetPage(Convert.ToInt32(pageNumber.Text));
                provideDGV.ItemsSource = paginator.GetTable();
            }
        }

        private void AddnewProvide_Click(object sender, RoutedEventArgs e)
        {
            FrameController.MainFrame.Navigate(new provideAddEdit());
        }

        private void pageNumber_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!Char.IsDigit(e.Text, 0)) e.Handled = true;
        }

        private void AddnewOrder_Click(object sender, RoutedEventArgs e)
        {
            FrameController.MainFrame.Navigate(new ordersAddEdit(0));
        }

        private void CheckBox_Checked(object sender, RoutedEventArgs e)
        {
            // Получить строку DataGrid, соответствующую этому CheckBox
            var row = (sender as CheckBox)?.DataContext as OrdersView;

            // Добавить ID элемента в список выбранных элементов, если он еще не был добавлен
            if (row != null && !selectedIds.Contains(row.id))
            {
                selectedIds.Add(row.id);
            }

        }

        private void CheckBox_Unchecked(object sender, RoutedEventArgs e)
        {
            // Получить строку DataGrid, соответствующую этому CheckBox
            var row = (sender as CheckBox)?.DataContext as OrdersView;

            // Удалить ID элемента из списка выбранных элементов, если он был добавлен ранее
            if (row != null && selectedIds.Contains(row.id))
            {
                selectedIds.Remove(row.id);
            }
        }

        private void filterBtn_Click(object sender, RoutedEventArgs e)
        {
            int? _provider = (int?)providerCb.SelectedValue;
            DateTime? _startDate = startDateDt.SelectedDate;
            DateTime? _endDate = endDateDt.SelectedDate;


            provide = fillData();

            provide = provide.Where(x => (string.IsNullOrEmpty(provideNumTb.Text) 
            || provideNumTb.Text.Contains(x.orderNumber.GetValueOrDefault().ToString())) &&
            (_provider == null || x.customerId == _provider) 
            && (_startDate == null || x.dateOrder >= _startDate) && (_endDate == null || x.dateOrder <= _endDate)).ToList();




            paginator = new Paginator(provide.ToList<object>(), 1, 10);

            pageNumber.Text = paginator.GetPage().ToString();
            countPage.Content = paginator.GetCountpage();

            provideDGV.ItemsSource = paginator.GetTable();

        }

        private void DeleteBtn_Click(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.DialogResult result = System.Windows.Forms.MessageBox
                .Show("Действительно удалить выбранные записи?", "Подтвердите действие",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == System.Windows.Forms.DialogResult.Yes)
            {
                var deleted = _dbContext.provide.Where(x => selectedIds.Contains(x.id)).ToList();
                _dbContext.provide.RemoveRange(deleted);

                _dbContext.SaveChanges();
                provide = fillData();

                paginator = new Paginator(provide.ToList<object>(), paginator.GetPage(), 10);
                provideDGV.ItemsSource = paginator.GetTable();
            }
        }

        private List<OrdersView> fillData()
        {
            var _provide = _dbContext.provide.Join(_dbContext.providers, x => x.idProvider, y => y.id, (x, y) => new OrdersView
                {
                    id = x.id,
                    orderNumber = x.provideNumber,
                    dateOrder = x.dateDelivery,
                    customerId = y.id,
                    customer = y.name,
                    address = y.address,
                }).ToList();
            return _provide;
        }
    }
}
