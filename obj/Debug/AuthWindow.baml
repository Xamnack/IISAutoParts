   M S B A M L   `   `   `  ����G  CIISAutoParts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:IISAutoPartsIISAutoParts  5   	       IISAutoParts.AuthWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   c _MaterialDesignThemes.MahApps, Version=0.2.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962ab ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5   	   (localclr-namespace:IISAutoParts   5   	     � Title$  Авторизация��5	   	   $	��450��6   $	��800��6*    � WindowStartupLocation$ CenterScreen=�66   .��5
      �  � RowDefinitions 5   
   �� 5      $��1* �6   �� 5      $��5* �6   �� 5      $��1* �6    � ColumnDefinitions 5   
   �� 5      $��1* �6   �� 5      $��4* �6   �� 5      $��1* �6   .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone  $��16q�5         Mode$ 
PrimaryMid=�5      $��0��6   $��3��6"   .��5      ]� .+�5      ��  �� Orientation$ 
Horizontal=�5      .+�5      �� $��18(�6    $��16,0,0,0q�5   	   $��Center=�5   	   $L��FИнформационная система автозапчастей��5   	   5!      5#      5$      �� 5%   
   $��1��6   $��1��6"   .+�5&      �� -   5         ��Name$ usernameField��5&      $��10q�6-   $��18(�69   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Логин��5'       %  !MaterialDesignFloatingHintTextBox#��[  5(      .��6Q   5)      G� 5*      -   5         G�Name$ passwordField��5*      $��10q�61   $��18(�6=   $ Пароль��5+      	   
HelperText$	  ��5,       ) %MaterialDesignFloatingHintPasswordBox#��[ 5-      ]� 5.      $��10q�6   $��40��6$   .+�5/      �� -   5        
 ��Name$
 EnterBtn��5/      $
��Left=�6+   $��18(�6]   .��6k   
Войти51      �� 52      -   5        $
 registerBtn��52   '   $��18(�6   $��Right=�6<   .��6r   &$Зарегистрироваться54      55      �� 56      -   5         ��Name$ 
resultView��56      58      � 59      -   5         �Name$ 
capchaGrid��59      $y�	Collapsed=�6'   $	��150��6>    5:      �� 5;      $��1* �6$   �� 5<      $��1* �6$   �� 5=      $��3* �6$   .+�5?      �� -   5         ��Name$ CapchaCanvas��5?   &   $��0��6   $��3��6<   �� 5@      -   5        $ AnswerTextBox��5@      $��Введите капчу��61   $��Center=�6F   $��16(�6j   $��3,3,3,3q�6x   $��3��6�   �� 5B      $��2��6   $ 
Horizontal=�6*   $��Center=�6C   $	��Top=�6`   $��0,29,0,0q�6x   .+�5C      �� -	   5        $��Новая капча��5C      $��10q�6J   �� 5D      -
   5        $��Отправить��5D      $��10q�6D   5E      5F      5G      5H      5I      