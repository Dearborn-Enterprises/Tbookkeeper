   M S B A M L   `   `   `  ����E  Abookkeeper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:accountsaccounts  5   	       accounts.GroupList   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:accounts     5   	   -   5          � Title$  Group Accounts��5
   	   $��638.673��6     � 
ResizeMode$ CanMinimize=�61   $��906.305��6J   
������� � WindowStartupLocation$ CenterOwner=�6q    � Icon$+ %images/Product-documentation-icon.png��6�    � 	Resources 5      (  "accounts.AmountBackGroundConverter   RowBackGroundConverter  ItemCollectionViewSource �� CollectionViewType��%?   &	        &	        5   
   6+   �� 5   
   " ��6@   5      .��5      � $��0,0,4,2q�6    � RowDefinitions 5   
   �� 5      $
��383* �6   �� 5      $
��150* �6    � ColumnDefinitions 5   
   �� 5      $
��438* �6   �� 5      $
��533* �6   .+�5   
   �� -   5         ��Name$ 
cmb_groups��5   n     prent_and_groups#��[ 6   	 �� SelectedItem$	 SelectedGroup��6�   
 �� DisplayMemberPath$

 Name��6�    �� 
IsEditable . $��26��6  $��
151,41,0,0q�6  $	��Top=�6.  $
��Left=�6F  $	��332��6a   J� RenderTransformOrigin$ 0.888,0.356&�6m  $��2��6�  $��2��6�  ��6�   �� *AccountGroups+6�  �� 5   
   $��Filters��6   $��16(�6"   $
��Bold"�60   $
��Left=�6B   $��37��6]   $��	10,30,0,0q�6i   $	��Top=�6|   $	��136��6�   �� 5   
     LabelUI#��[ 6   $��Pick a Account Group��61   $
��Left=�6P   $��14(�6k   $��30��6y   $��
151,11,0,0q�6�   $	��Top=�6�   $	��223��6�   �� 5   
   -   5         ��Name$ refresh_data��5   K     Standard#��[ 6    � ToolTip$ Refresh Data��64   $�� ��6a   $��
0,94,324,0q�6�   $��1��6�   $ 	0.503,0.5&�6�   4  .System.Windows.Automation.AutomationProperties   IsOffscreenBehavior$ Onscreen=�6�   $��Right=�6+  $��65��6G  $��67��6R  $	��Top=�6^  ��6�   Z� ��6�   Z� ��5      �� 5       �� ImageSource$ images/onebit_12.png��6    j� Stretch$ UniformToFill=�6@   5       �� 5!   
   $��
0,0,10,4.2q�6   
�������$��1��6B   $��1��6R   $��85��6_   $��Bottom=�6k   $��Right=�6�   $	��164��6�   .+�5"      �� -   5         ��Name$ lblcr1��5"      
�������$�� ��69   
������  �� TextAlignment$ Right=�6[   $��14(�6q   $��0q�6   $��0,0,10,0q�6�   $��4��6�   �� 5#      -   5        $ lblcr��5#      
�������$
��0.00��68   
������ $ Right=�6]   $��14(�6s   $��0q�6�   $��0,0,10,0q�6�   �� 5$      -   5        $ lbldr��5$   ,   
����  �$
��0.00��6;   
������ $ Right=�6`   $��14(�6v   $��0q�6�   $��0,0,10,0q�6�   �� 5%      -   5        $ 
lblbalance��5%      $
��0.00��6*   
������ $
��Bold"�6O   $ Right=�6a   $��21(�6w   $��0q�6�   $��0,0,10,0q�6�   $��28��6�   5&      &   System.Windows.Controls.DataGrid  5'   
   -   5          Name$ group_acc_grid��5'   �      GridLinesVisibility$
 None=�6      
IsReadOnly .   CBGHeaderStyle#��[ 6s      AlternatingRowBackground
 ����� � DataContext# [ 6�      AutoGenerateColumns .     CanUserAddRows .  $��
10,80,10,0q�5*   $   $	��433��68   $	��Top=�6E   $��2��6]   $��2��6q   ��5(      ��    RowStyle 5,      �� 5-       �� 
TargetType)  #System.Windows.Controls.DataGridRow"  6   .�5.      ��  �� Property � �� �� Value 63   ��  �� RelativeSource �� *self+  �� Path$  Item.Cr_Amount�! �� 	Converter#! [  5/      "   Columns" 52      0  *System.Windows.Controls.DataGridTextColumn  53      ,  &System.Windows.Controls.DataGridColumn#   Header$# ID��6M   $   Width5  /System.Windows.Controls.DataGridLengthConverter$$ 40 6Y   %   
FontWeight$
% Bold"�6d   1  +System.Windows.Controls.DataGridBoundColumn&   Binding& 6%   �� $  CrAccount.ID�6d     54      $# Account��6O   $	$ 400 6`   & 6%   �� $  CrAccount.Name�6`     55        rightAlignedColumn'   ElementStyle#' [ 6%   $# Dr��6�   $	$ 120 6�   & 6X   �� $  	Dr_Amount�( �� StringFormat$( {0:0.00}��6�     56      #' [ 6&   $# Cr��6�   $	$ 120 6�   & 6Y   �� $  	Cr_Amount�$( {0:0.00}��6�     57      #' [ 6%   $# Balance��6�   $	$ 100 6�   & 6X   �� $  Balance�$( {0:0.00}��6�   5<      �� 5=   
   -	   5        $ 	btn_print��5=   D   #���  6   $ Print��64   $��77,94,241,7.2q�6q   $ 0.484,0.373&�6�   $ Onscreen=�6�   $��1��6  ��6�   Z� ��6�   Z� ��5>      �� 5?      $ images/print.ico��6   5B      �� 5C   
   -
   5        $ btn_doc��5C   T   #���  6   $ Save as Word Document��64   $�� ��6e   $��155,94,168,7.2q�6q   $��1��6�   $ 0.484,0.373&�6�   $ Onscreen=�6�   ��6�   Z� ��6�   Z� ��5D      �� 5E      $% images/Office-Word-icon (1).png��6   5H      �� 5I   
   -   5        $ 	btn_excel��5I   L   #���  6   $ Save as Excel��64   $�� ��6_   $��233,94,0,7.2q�6k   $��1��6�   $ 0.957,0.373&�6�   $ Onscreen=�6�   $
��Left=�6  $��70��6.  ��6�   Z� ��6�   Z� ��5J      �� 5K      $) #images/Microsoft-Excel-icon (2).png��6   5N      �� 5O   
   -   5        $ btn_pdf��5O   J   #���  6   $ Save as PDF��64   $�� ��6[   $��303,94,23,7.2q�6|   $��1��6�   $ 0.484,0.373&�6�   $ Onscreen=�6�   ��6�   Z� ��6�   Z� ��5P      �� 5Q      $ images/pdf-icon (1).png��6   5T      �� 5U   
   -   5        $ btn_xps��5U   J   #���  6   $ Save as XPS��64   $�� ��6[   $��386,101,443,10.2q�6g   $��1��6�   $ 0.957,0.373&�6�   $ Onscreen=�6�   $��2��6)  ��6�   Z� ��6�   Z� ��5V      �� 5W      $0 *images/Folders-OS-Documents-Metro-icon.png��6   5Z      �� 5[   
   -   5        $��cmb_catagory��5[   �    .  	 NewUI#���  6X    
 Combo+#���  6x   $��1��6�   $
��Left=�6�   $��26��6�   $��
101,41,0,0q�6�   $	��Top=�6  $	��264��6  �� 5\   
   #��[ 6   $��Catagory��61   $
��Left=�6D   $��14(�6_   $��30��6m   $��
101,11,0,0q�6y   $	��Top=�6�   $	��223��6�   $��1��6�   5]      5^      