   M S B A M L   `   `   `  ����G  CIISAutoParts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:IISAutoParts.pagesIISAutoParts.pages  5      '    !IISAutoParts.pages.provideAddEdit   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      c _MaterialDesignThemes.MahApps, Version=0.2.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962ab ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5      Fmc;http://schemas.openxmlformats.org/markup-compatibility/2006   5      <d2http://schemas.microsoft.com/expression/blend/2008   5      .local clr-namespace:IISAutoParts.pages   5        N� Title$  provideAddEdit��5
      .��5      � 
������� � ColumnDefinitions 5   
   �� 5      $��1* �6   �� 5      $��1* �6   .+�5   
   �� -   5        $��ListAutoparts��5   a   $��18(�6      MaterialDesignListView#��[  6!   $��1��6Q   $��10q�6v    �� View 5      �� 5      P�5      �� 5       �� Width$
 auto��6)   $��Наименование��66    �� DisplayMemberBinding 6L   ��  �� Path$
 name�6y   �� 5      $
 auto��6)   $��Количество��66    6J   �� $ count�6x   �� 5      $��Удалить��6)    �� CellTemplate 5      �� 5   "   .R�5   &   ��  �� Orientation$ 
Horizontal=�61   .+�5   *   �� -   5        $��18(�5   1   $��50��6?   $��70��6K   .��5   .   '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Delete=�6F   $��40��6U   $��40��6`   5   +   5   '   5   #   5!      5#      5%      � 5&   
   $��0��6   .+�5(      �� $��10q�6   .+�5)      �� -   5        	 ��Name$	 orderNumberTb��5*   Q   $��18(�5)      $��10q�6(   $��Center=�64   )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$!
 Номер поставки��6O    % !MaterialDesignFloatingHintTextBox#��[ 5*      5+      �� 5,      -   5         ��Name$ CarCb��50      $��10q�5,      $��18(�6'   $��Center=�5-      $
 
Марка��5.       & "MaterialDesignFloatingHintComboBox#��[ 5/      50      �� 51      -   5        $ 
modelCarCb��55      $��10q�51      $��18(�6'   $��Center=�52      $
 Модель��53      #��[ 54      55      �� 56      -   5        $ 
autopartCb��5:      $��10q�56      $��18(�6'   $��Center=�57      $
 Автозапчасть��58      #��[ 59      ��5;      �� 5<      .R�5=      �� $ 
Horizontal=�6)   .+�5>   "   �� $��18(�6,   $��0,0,5,0q�6:   ��6K   �� *	article+�� 5?   "   $��18(�6,   $��0,0,5,0q�6:   ��6K   �� *manufacturer+�� 5@   "   $��18(�6,   $��0,0,5,0q�6:   ��6K   �� *name+5A      5B      5D      �� 5E      -   5        $	 countTb��5F   Q   $��18(�5E      $��10q�6(   $��Center=�64   $
 Количество��6O   #��[ 5F      6b   �� 5G      -   5         ��Name$ AddAutopart��5G   3   $��18(�6   $��50��6'   $��10q�6b   $��Right=�6n   $&�� Добавить в список��6�   5H      (  "System.Windows.Controls.DatePicker  5I      -	   5          Name$ DateOrderTb��5J      $��18(�5I      $��10q�6+   $��Center=�67   $
 Дата поставки��6R    ( $MaterialDesignFloatingHintDatePicker#��[ 5J   .   �� 5K      -
   5        $ ProvidersCb��5L   S   $��18(�5K      $��10q�6)   $��Center=�65   $
 Поставщик��6P   #��[ 5L      6S   ]� 5M      .+�5N      �� -   5        $ BackBtn��5N   ~    � ToolTip$ Вернуться��6   $��18(�61   $��50��6?   $��70��6K   $��Right=�6V   $��10q�6r   .��5O        $ 	ArrowBack=�62   $��40��6D   $��40��6O   5P      �� 5Q      -   5        $ SaveBtn��5Q   }   $ Сохранить��6   $��18(�61   $��50��6?   $��70��6K   $
��Left=�6V   $��10q�6q   .��5R        $ ContentSave=�62   $��40��6F   $��40��6Q   5S      5T      � 5U      -   5         �Name$ 
loadingDoc��5U   5    � IsIndeterminate . $y�	Collapsed=�6I   $��10q�6`   5V      5W      5X      5Y      