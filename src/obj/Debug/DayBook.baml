   M S B A M L   `   `   `  ����E  Abookkeeper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:accountsaccounts  5   	       accounts.DayBook   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:accounts     5   	   -   5          � Title$  Day Book��5
   	   $��563.606��6    � 
ResizeMode$ CanMinimize=�6+   $��977.373��6D   
������� � WindowStartupLocation$ CenterOwner=�6n    � Icon$" images/Folder-Chart-icon.png��6�   .��5      � $��0,0,0,2q�6    � RowDefinitions 5   
   �� 5      $
��383* �6   �� 5      $
��150* �6    � ColumnDefinitions 5   
   �� 5      $
��438* �6   �� 5      $
��533* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ rep_grid��5   �      
IsReadOnly .    GridLinesVisibility$
 None=�6&   	   AlternatingRowBackground
	 �����   BRRGHeaderStyle#��[  6j   $��10,72,11,82q�6�   $��2��6�   
   AutoGenerateColumns
 .  $��2��6     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Voucher Name��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 160 6;   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6G   �� *	Voucher+6e     5      $
 V.No��6%   $ 50 63    6>   �� *VNo+6X     5      $ Account��6%   $	 360 66    6B   �� *DrAccount.Name+6g     5      $ Dr��6%   $	 100 61     rightAlignedColumn   ElementStyle# [ 6=    6p   �� *	Dr_Amount+ �� StringFormat$ {0:0.00}��6�     5      $ Cr��6%   $	 100 61   # [ 6=    6p   �� *	Cr_Amount+$ {0:0.00}��6�      RowDetailsTemplate 5      �� 5       .R�5!      � 
���z��� 5"      �� 5#      �� 5$      �� 5%       5(      �� 5)      �� 5*      .+�5,      �� $��0��6%   $��0��62   $
��Date��6C   $��DemiBold"�6O   �� 5-      $��1��6%   $��0��62   ��6B   �� *Date+�� 5.      $��0��6%   $��1��62   $��Journal Invoice No��6C   $��DemiBold"�6]   �� 5/      $��1��6%   $��1��62   ��6B   �� *Invno+�� 50      $��0��6%   $��2��62   $��Invoice Balance��6C   $��DemiBold"�6Z   �� 51      $��1��6%   $��2��62   $��DemiBold"�6`   ��6B   �� *	Balance+6`   52      53      56      �� 57   
   -   5         ��Name$ cmb_ACCOUNTS��57   g     accounts#��[ 6    �� SelectedItem$ SelectedAccount��6�    �� DisplayMemberPath$ 
Short_Name��6�    �� 
IsEditable . $��427,37,261.2,0q�6  $	��Top=�6   J� RenderTransformOrigin$ 0.888,0.356&�67  $��2��6[  ��6�   �� 59      �� 5:   
   $��Filters��6   $��16(�6"   $
��Bold"�60   $
��Left=�6B   $��37��6]   $��	10,30,0,0q�6i   $	��Top=�6|   $	��136��6�   �� 5;   
     LabelUI#��[ 6   $��Pick a Cash Account��63   $
��Left=�6Q   $��31��6l   $��	427,6,0,0q�6x   $	��Top=�6�   $	��215��6�   $��2��6�   �� 5<   
   #��[ 6   $��Pick a Account Group��63   $��31��6R   $��276.6,6,79.2,0q�6^   $	��Top=�6v   $��1��6�   �� 5=   
   #��[ 6   $
��From��63   $
��Left=�6B   $��31��6]   $��85,6,0,0q�6i   $	��Top=�6{   $��60��6�   (  "System.Windows.Controls.DatePicker  5>   
   -   5        $��dtp_from��5>   g    	 NewUI#��[ 6H   $
��Left=�6w   $��	85,37,0,0q�6�   $	��Top=�6�   $	��156��6�   6�     5?   
   -   5        $��dtp_to��5?   f   #��[ 6G   $
��Left=�6t   $��
251,37,0,0q�6�   $	��Top=�6�   $	��164��6�   6�   �� 5@   
   #��[ 6   $��To��63   $
��Left=�6@   $��31��6[   $��	246,6,0,0q�6g   $	��Top=�6z   $��60��6�   �� 5A   
   $��349,68,11,0q�6   
�������$��1��6C   $��1��6S   .+�5B      �� -   5        $��lblcr��5B      
�������$�� ��66   
������ $��DemiBold"�6W    �� TextAlignment$ Right=�6n   $��14(�6�   $��0q�6�   $��0,0,10,0q�6�   �� 5C      -   5         ��Name$ lbldr��5C   ,   
����  �$�� ��6;   $
��Bold"�6C   
������ $ Right=�6n   $��14(�6�   $��0q�6�   $��0,0,10,0q�6�   �� 5D      -   5        $ 
lblbalance��5D      
������ $ Right=�6D   $��21(�6Z   $��0q�6h   $��0,0,10,0q�6|   $��28��6�   5E      �� 5F   
   -	   5         ��Name$ refresh_data��5F   K     Standard#���  6    � ToolTip$ Refresh Data��64   $�� ��6a   $��19,82.8,364.4,10.8q�6�   $��1��6�   $ 0.484,0.373&�6�   4  .System.Windows.Automation.AutomationProperties   IsOffscreenBehavior$ Onscreen=�6  ��6�   Z� ��6�   Z� ��5G      �� 5H       �� ImageSource$ images/onebit_12.png��6    j� Stretch$ UniformToFill=�6@   5K      �� 5L   
   -
   5        $ 
cmb_groups��5L   l     prent_and_groups#��[ 6   $ SelectedParent��6�   $
 Name��6�    . $��276.6,37,11.2,0q�6  $	��Top=�6'  $ 0.888,0.356&�6?  $��1��6c  $��30��6s  ��6�   �� *ParentGroups+6s  �� 5M   
   -   5        $ 	btn_print��5M   D   #���  6   $ Print��64   $�� ��6W   $��85,73,283,10q�6z   $��1��6�   $ 0.484,0.373&�6�   $ Onscreen=�6�   ��6�   Z� ��6�   Z� ��5N      �� 5O      $ images/print.ico��6   5R      �� 5S   
   -   5        $ btn_pdf��5S   J   #���  6   $ Save as PDF��64   $�� ��6[   $��311,73.8,57.4,9.8q�6|   $��1��6�   $ 0.484,0.373&�6�   $ Onscreen=�6�   ��6�   Z� ��6�   Z� ��5T      �� 5U      $ images/pdf-icon (1).png��6   5X      �� 5Y   
   -   5        $ btn_doc��5Y   T   #���  6   $ Save as Word Document��64   $�� ��6e   $��160,73.8,207.4,9.8q�6q   $��1��6�   $ 0.484,0.373&�6�   $ Onscreen=�6�   ��6�   Z� ��6�   Z� ��5Z      �� 5[      $% images/Office-Word-icon (1).png��6   5^      �� 5_   
   -   5        $ 	btn_excel��5_   L   #���  6   $ Save as Excel��64   $�� ��6_   $��236,72.8,0,9.8q�6k   $��1��6�   $ 0.957,0.373&�6�   $ Onscreen=�6�   $
��Left=�6  $��70��60  ��6�   Z� ��6�   Z� ��5`      �� 5a      $) #images/Microsoft-Excel-icon (2).png��6   5d      �� 5e   
   -   5        $ btn_xps��5e   a   #���  6   $ Save as XPS��64   $�� ��6r   $��386,72.8,515.2,9.8q�6~   $��1��6�   $ 0.957,0.373&�6�   $ Onscreen=�6�   $��2��6,  ��6�   Z� ��6�   Z� ��5f      �� 5g      $0 *images/Folders-OS-Documents-Metro-icon.png��6   5j      5k      5l      