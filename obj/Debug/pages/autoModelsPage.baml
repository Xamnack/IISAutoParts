   M S B A M L   `   `   `  ����G  CIISAutoParts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:IISAutoParts.pagesIISAutoParts.pages  5      '    !IISAutoParts.pages.autoModelsPage   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      c _MaterialDesignThemes.MahApps, Version=0.2.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962ab ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:IISAutoParts.pages     5        N� Title$  autoModelsPage��5
      .��5      � -   5         �Name$ autoGrid��5      
������� � RowDefinitions 5   
   �� 5      $��7* �6   �� 5      $��1* �6    � ColumnDefinitions 5   
   �� 5      $��8* �6   �� 5      $��3* �6   .+�5   
   �� -   5        $��carModelList��5      $��18(�6'   ��5      �� 5      .R�5      ��  ��Name$ Border��5       �� Padding$ 8q�5         MaterialDesignDivider#���   5      $��0,0,0,1q�5      ._�5      �  5      �� 5   "    z� SharedSizeGroup$ Checkerz��5    %   �� 5!   "   .+�5#      �� -   5        $	��400��5#   B   $	��250��6N   $��Uniform=�6[   ��6$   ��  �� Path$ photo�6m   �� 5$      $	��400��6)   $��1��5%   !   $��8,0,0,0q�5&   !   .+�5'   "   �� $��Center=�6H   $
��Bold"�6e   $��10q�6w   ��6,   �� $ model�6w   �� 5(   "    �� Orientation$ 
Horizontal=�6-   $��Right=�6F   .+�5)   &   �� 	 ��Name$	 EditElement��6\   -   5        
 � ToolTip$ 
 Редактировать��5)   -   $��50��6E   $��70��6Q   $��2q�6�   
 � Tag 6�   �� *id+.��5*   *   '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 Edit=�6B   $��40��6N   $��40��6Y   5+   '   �� 5,   &   $	 deleteElements��6V   -   5        $
 Удалить��5,   -   $��50��6?   $��70��6K   $��2q�6�    6�   �� *id+.��5-   *     $ Delete=�6B   $��40��6P   $��40��6[   5.   '   5/   #   51      53      54      55      57      � 59   
   $��1��6   $��5q�6   
�������.+�5:      �� .+�5;      �� $��
Поиск��6   $��Center=�6(   $��20(�6E   5=      �� 5>      -   5         ��Name$ nameTb��5?      $��18(�5>      $��Center=�5@      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Наименование��5A       % !MaterialDesignFloatingHintTextBox#��[ 5B      �� 5D      -   5        $	 	filterBtn��5D   o   $��10q�6   $
 
Поиск��6%   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10��65   $��50��6c   .��5E        $ Magnify=�6.   $��40��6=   $��40��6H   5F      ]� 5G      $��10q�6   .+�5H      �� -   5        $	 backBtn��5H   L   $
 Вернуться��6   $
��Left=�61   $��50��6]   $��70��6i   .��5I        $ 	ArrowBack=�62   $��40��6C   $��40��6N   5J      �� 5K      -	   5        $	 AddnewAutoParts��5K   L   $
 Добавить��6   $��Right=�60   $��50��6e   $��70��6q   .��5L        $ PlusBox=�62   $��40��6A   $��40��6L   5M      5O      5P      5R      � 5S   
   $��1��6   $��2��6    5T      �� 5U      $��1* �6#   �� 5V      $��4* �6#   �� 5W      $��1* �6#   .+�5Y      �� -
   5        $	 previousBtn��5Y      $��0��6*   $��50��6:   $��70��6F   .��5Z        $��40��6*   $��40��65   $ ArrowLeftBold=�5[      5\      �� 5]      -   5        $	 nextBtn��5]      $��2��6&   $��50��66   $��70��6B   .��5^        $��40��6*   $��40��65   $ ArrowRightBold=�5_      5`      �� 5b      $��1��6   $ 
Horizontal=�6)   $��Center=�6B   $��Center=�6]   .+�5c      �� -   5        $��
pageNumber��5c   J   $��18(�6   $��20��6(    �� TextAlignment$ Center=�63   6�   �� 5d      $��18(�6   $��-��6&   64   �� 5e      -   5        $��	countPage��5e   &   $��18(�6   $��99��67   6F   5f      5h      5i      5j      