   M S B A M L   `   `   `  ����G  CIISAutoParts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:IISAutoParts.pagesIISAutoParts.pages  5      #    IISAutoParts.pages.ordersPage   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      c _MaterialDesignThemes.MahApps, Version=0.2.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962ab ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:IISAutoParts.pages     5        N� Title$  
ordersPage��5
      .��5      � 
�������.+�5   
   � -   5         �Name$ carPage��5       � ColumnDefinitions 5      �� 5      $��3* �6#   �� 5      $��1* �6#    � RowDefinitions 5      �� 5      $��5* �6    �� 5      $��1* �6    .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ 	ordersDGV��5   A   $��18(�6      AutoGenerateColumns .     
IsReadOnly . $��0��6f      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Код��6)   	   
Visibility$	 Hidden=�5   A   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6%   ��  �� Path$ id�5      4  .System.Windows.Controls.DataGridCheckBoxColumn  5         
IsReadOnly .     HeaderTemplate 5      �� 5      .R�5   "   ��  ��Name$ selectAllCheckBox��6(   5          ElementStyle 5"      �� 5#       �� 
TargetType" ��6$   .�5$   "   ��  �� Property �@d�	IsChecked �� Value 6>   �� *
isSelected+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�-   5        5'      5)        5*      $ Номер заказа��6)   
 5+   %   �� $ orderNumber�5-        5.      $ Дата заказа��6)   
 5/   %   �� $ 	dateOrder� �� StringFormat$ 
dd.MM.yyyy��51        52      $ Заказчик��6)   
 53   %   �� $ customer�54        55      $ 
Адрес��6)   
 56   %   �� $ address�57      59      � 5;      $��1��6   $��5q�6#   
�������.+�5<      �� .+�5=      �� $��20(�6   $��
Поиск��6*   $��Center=�6:   5?      �� 5@      -   5         ��Name$ numberOrder��5C   T   $��18(�5@      $��Center=�5A      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Номер заказа��5B       %  !MaterialDesignFloatingHintTextBox#��[  5C      6T   �� 5D      -   5         ��Name$ 
customerCb��5E   4   $��18(�5D       $��Center=�5E      $ Заказчик��5F      .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton .  & "MaterialDesignFloatingHintComboBox#��[ 5H      (  "System.Windows.Controls.DatePicker  5I      -   5          Name$ startDateDt��5K   S   $��18(�5I   !   $��Center=�5J      $3 -Не раньше указанной даты��5K       .  ( $MaterialDesignFloatingHintDatePicker#��[ 5M        5N      -   5        $ 	endDateDt��5P   R   $��18(�5N   !   $��Center=�5O      $1 +Не позже указанной даты��5P       . #��[ 5R      �� 5S      -   5         ��Name$ 	searchBtn��5S   s    � ToolTip$ 
Поиск��6   $��50��6-   $��10q�69   +	  %MaterialDesignThemes.Wpf.ButtonAssist 	  CornerRadius$ 10��6E   .��5T      '
  !MaterialDesignThemes.Wpf.PackIcon
   
  Kind$ Magnify=�62   $��40��6B   $��40��6M   5U      ]� 5V      $��10q�6    .+�5W      �� -	   5        $ AddnewOrder��5W   f   $ Добавить��6!   $��50��64   $��70��6@   $
��Left=�6K   .��5X      
  $ PlusBox=�66   $��40��6F   $��40��6Q   5Y      �� 5Z      -
   5        $ 	deleteBtn��5Z   p   $' !Удалить выбранное��6!   $��50��6=   $��70��6I   $��Right=�6T   .��5[      
  $ Delete=�66   $��40��6E   $��40��6P   5\      5]      5^      5_      � 5`      $��1��6   $��2��6     5a      �� 5b      $��1* �6'   �� 5c      $��4* �6'   �� 5d      $��1* �6'   .+�5f      �� -   5        $ previousBtn��5f      $��0��6.   $��50��6>   $��70��6J   .��5g      
  $��40��6/   $��40��6:   $ ArrowLeftBold=�5h      5i      �� 5j      -   5        $ nextBtn��5j   0   $��50��6   $��70��6%   $��2��6A   .��5k      
  $��40��6/   $��40��6:   $ ArrowRightBold=�5l      5m      �� 5o      $��1��6    �� Orientation$ 
Horizontal=�6-   $��Center=�6F   $��Center=�6a   .+�5p      �� -   5        $��
pageNumber��5p   D   $��18(�6     �� TextAlignment$  Center=�6-   6{   �� 5q      $��18(�6   $��-��6+   69   �� 5r      -   5        $��	countPage��5r   +   $��18(�6   $��99��6<   6K   5s      5u      5v      5w      5x      