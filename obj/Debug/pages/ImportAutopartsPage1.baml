   M S B A M L   `   `   `  ����G  CIISAutoParts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:IISAutoParts.pagesIISAutoParts.pages  5      -    'IISAutoParts.pages.ImportAutopartsPage1   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      c _MaterialDesignThemes.MahApps, Version=0.2.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962ab ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5      .local clr-namespace:IISAutoParts.pages   5        N� Title$  ImportAutopartsPage1��5
      .��5      � 
������� � RowDefinitions 5   
   �� 5      $��7* �6   �� 5      $��1* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ autopartDGV��5   O   $��18(�6      AutoGenerateColumns .     
IsReadOnly .    CanUserAddRows .     ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 5      $��2��6*      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Артикул��6&   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 5   %   �� 
 �� Path$
 article�5        5      $  Производитель��6&   	 5   %   �� $
 manufacturer�5        5      $ Наименование��6%      MaterialDesignDataGridCell   	CellStyle# [  5   %   	 5   %   �� $

 name�5        5       $ Описание��6%   # [  5"   %   	 5!   %   �� $
 description�5$        5%      $ Цена��6%   	 5&   %   �� $
 price� �� StringFormat$ {0:C}�� �� ConverterCulture$ ru-RU��5(        5)      $% Год производства��6%   	 5*   %   �� $

 year�5,        5-      $* $Количество на склад��6%   	 5.   %   �� $
 count�5/        50      $ Код категории��6%   	 51   %   �� $
 
idCategory�52      54      ]� 55   
   $��0��6   $��1��6$   .+�56      �� -   5         ��Name$ BackBtn��56   i    � ToolTip$ Вернуться��6   $��Right=�6*   $��10q�6F   $��50��6R   $��70��6^   .��57      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 	ArrowBack=�6*   $��40��6<   $��40��6G   58      �� 59      -   5        $ SaveBtn��59   h   $ Сохранить��6   $
��Left=�6*   $��10q�6E   $��50��6Q   $��70��6]   .��5:        $ ContentSave=�6*   $��40��6>   $��40��6I   5;      �� 5<      -   5        $ 	ImportBtn��5<   j   $ Выбрать файл��6   $
��Left=�6,   $��10q�6G   $��50��6S   $��70��6_   .��5=        $ 
FileImport=�6*   $��40��6<   $��40��6G   5>      �� 5?      -   5         ��Name$ NameFile��5?        MaterialDesignTextBlock#��[ 6*   $��5q�6[   6h   5@      5C      5D      