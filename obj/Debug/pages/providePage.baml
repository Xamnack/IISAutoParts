   M S B A M L   `   `   `  ����G  CIISAutoParts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:IISAutoParts.pagesIISAutoParts.pages  5      $    IISAutoParts.pages.providePage   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      c _MaterialDesignThemes.MahApps, Version=0.2.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962ab ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:IISAutoParts.pages     5        N� Title$  providePage��5
      .��5      � 
�������.+�5   
   � -   5         �Name$ carPage��5       � ColumnDefinitions 5      �� 5      $��3* �6#   �� 5      $��1* �6#    � RowDefinitions 5      �� 5      $��5* �6    �� 5      $��1* �6    .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ 
provideDGV��5   A   $��18(�6      AutoGenerateColumns .     
IsReadOnly . $��0��5   )      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Код��6)   	   
Visibility$	 Hidden=�5   A   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6%   ��  �� Path$ id�5      4  .System.Windows.Controls.DataGridCheckBoxColumn  5         
IsReadOnly .     HeaderTemplate 5      �� 5      .R�5    "   ��  ��Name$ selectAllCheckBox��6(   5!         ElementStyle 5#      �� 5$       �� 
TargetType" ��6$   .�5%   "   ��  �� Property �@d�	IsChecked �� Value 6>   �� *
isSelected+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�-   5        5(      5*        5+      $! Номер поставки��6)   
 5,   %   �� $ orderNumber�5-        5.      $ Дата заказа��6)   
 5/   %   �� $ 	dateOrder� �� StringFormat$ 
dd.MM.yyyy��50        51      $ Поставщик��6)   
 52   %   �� $ customer�53        54      $ 
Адрес��6)   
 55   %   �� $ address�56      58      � 5:      $��1��6   $��5q�6#   
�������.+�5;      �� .+�5<      �� $��
Поиск��6   $��Center=�6,   $��20(�6I   6Y   �� 5=      -   5         ��Name$ provideNumTb��5=   ,   $��18(�6   $��Center=�5>      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$! Номер поставки��5?       %  !MaterialDesignFloatingHintTextBox#��[  5@      �� 5A      -   5         ��Name$ 
providerCb��5C   D   $��18(�5A      $��Center=�5B      $ Поставщик��5C      .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton .  & "MaterialDesignFloatingHintComboBox#��[ 5E      (  "System.Windows.Controls.DatePicker  5F      -   5          Name$ startDateDt��5H   S   $��18(�5F   !   $��Center=�5G      $3 -Не раньше указанной даты��5H       ( $MaterialDesignFloatingHintDatePicker#��[ 5I        5J      -   5        $ 	endDateDt��5L   R   $��18(�5J   !   $��Center=�5K      $1 +Не позже указанной даты��5L      #��[ 5M      �� 5N      -   5         ��Name$ 	filterBtn��5N   9    � ToolTip$ 
Поиск��6   $��50��6-   $��10q�6L   +	  %MaterialDesignThemes.Wpf.ButtonAssist 	  CornerRadius$ 10��6X   .��5O      '
  !MaterialDesignThemes.Wpf.PackIcon
   
  Kind$ Magnify=�62   $��40��6B   $��40��6M   5P      ]� 5Q      $��10q�6    .+�5R      �� -	   5        $ AddnewProvide��5R   f   $ Добавить��6!   $��50��64   $��70��6@   $
��Left=�6K   .��5S      
  $ PlusBox=�66   $��40��6F   $��40��6Q   5T      �� 5U      -
   5        $ 	DeleteBtn��5U   p   $' !Удалить выбранное��6!   $��50��6=   $��70��6I   $��Right=�6T   .��5V      
  $ Delete=�66   $��40��6E   $��40��6P   5W      5X      5Y      5Z      � 5[      $��1��6   $��2��6     5\      �� 5]      $��1* �6'   �� 5^      $��4* �6'   �� 5_      $��1* �6'   .+�5a      �� -   5        $ previousBtn��5a   0   $��50��6   $��70��6%   $��0��6E    � Cursor$
 Hand��6o   .��5b      
  $��40��6/   $��40��6:   $ ArrowLeftBold=�5c      5d      �� 5e      -   5        $ nextBtn��5e   0   $��50��6   $��70��6%   $��2��6A   .��5f      
  $��40��6/   $��40��6:   $ ArrowRightBold=�5g      5h      �� 5j      $��1��6     �� Orientation$  
Horizontal=�6-   $��Center=�6F   $��Center=�6a   .+�5k      �� -   5        $��
pageNumber��5k   N   $��18(�6   $��20��6,   ! �� TextAlignment$! Center=�67   6�   �� 5l      $��18(�6   $��-��6*   68   �� 5m      -   5        $��	countPage��5m   *   $��18(�6   $��99��6;   6J   5n      5p      5q      5r      5s      