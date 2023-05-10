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
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

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

        public providePage()
        {
            InitializeComponent();

            _dbContext = new IISAutoPartsEntities();

            provide = _dbContext.provide.AsNoTracking()
                .Join(_dbContext.autoparts,
                x => x.idAutoparts, y => y.id, (x, y) => new {
                    id = x.id,
                    number = x.provideNumber,
                    autopart = y.manufacturer + " " + y.name,
                    autopartId = y.id,
                    dateOrder = x.dateDelivery,
                    countAutopart = x.countAutoparts,
                    customer = x.idProvider,
                }
                ).Join(_dbContext.providers, x => x.customer, y => y.id, (x, y) => new OrdersView
                {
                    id = x.id,
                    orderNumber = x.number,
                    autopartName = x.autopart,
                    autopartId = x.id,
                    dateOrder = x.dateOrder,
                    countAutopart = x.countAutopart,
                    customerId = y.id,
                    customer = y.name,
                    address = y.address,
                }).ToList();


            autopartCb.ItemsSource = _dbContext.autoparts.AsNoTracking().ToList();
            autopartCb.DisplayMemberPath = "name";
            autopartCb.SelectedValuePath = "id";

            providerCb.ItemsSource = _dbContext.providers.AsNoTracking().ToList();
            providerCb.DisplayMemberPath = "name";
            providerCb.SelectedValuePath = "id";



            paginator = new Paginator(provide.ToList<object>(), 1, 10);

            pageNumber.Text = paginator.GetPage().ToString();
            countPage.Content = paginator.GetCountpage();

            provideDGV.ItemsSource = paginator.GetTable();

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

        private void filterBtn_Click(object sender, RoutedEventArgs e)
        {
            int? _autopart = (int?)autopartCb.SelectedValue;
            int? _provider = (int?)providerCb.SelectedValue;
            DateTime? _startDate = startDateDt.SelectedDate;
            DateTime? _endDate = endDateDt.SelectedDate;
            
            
            provide = _dbContext.provide.AsNoTracking()
               .Join(_dbContext.autoparts,
               x => x.idAutoparts, y => y.id, (x, y) => new {
                   id = x.id,
                   number = x.provideNumber,
                   autopart = y.manufacturer + " " + y.name,
                   autopartId = y.id,
                   dateOrder = x.dateDelivery,
                   countAutopart = x.countAutoparts,
                   customer = x.idProvider,
               }
               ).Join(_dbContext.providers, x => x.customer, y => y.id, (x, y) => new OrdersView
               {
                   id = x.id,
                   orderNumber = x.number,
                   autopartName = x.autopart,
                   autopartId = x.id,
                   dateOrder = x.dateOrder,
                   countAutopart = x.countAutopart,
                   customerId = y.id,
                   customer = y.name,
                   address = y.address,
               }).ToList();

            provide = provide.Where(x => (string.IsNullOrEmpty(provideNumTb.Text) 
            || provideNumTb.Text.Contains(x.orderNumber.GetValueOrDefault().ToString())) &&
            (_autopart == null || x.autopartId == _autopart) && (_provider == null || x.customerId == _provider) 
            && (_startDate == null || x.dateOrder >= _startDate) && (_endDate == null || x.dateOrder <= _endDate)).ToList();




            paginator = new Paginator(provide.ToList<object>(), 1, 10);

            pageNumber.Text = paginator.GetPage().ToString();
            countPage.Content = paginator.GetCountpage();

            provideDGV.ItemsSource = paginator.GetTable();

        }

       
    }
}