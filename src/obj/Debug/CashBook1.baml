   M S B A M L   `   `   `  ����E  Abookkeeper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:accountsaccounts  5   	       accounts.CashBook1   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:accounts     5   	   -   5          � Title$  	Cash Book��5	   	   $��563.606��6    � 
ResizeMode$ CanMinimize=�6,   $��977.373��6E   
������� � WindowStartupLocation$ CenterOwner=�6o    � Icon$+ %images/Product-documentation-icon.png��6�    � 	Resources 5
      !  accounts.StringDateCnverter   stringdateconverter  ItemCollectionViewSource �� CollectionViewType��%?   &	        &	        5   
   6#   �� 5   
   " ��6@   5      .��5      � $��0,0,0,2q�6    � RowDefinitions 5   
   �� 5      $
��383* �6   �� 5      $
��150* �6    � ColumnDefinitions 5   
   �� 5      $
��438* �6   �� 5      $
��533* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ rep_grid��5   C   $��10,72,11,82q�6U   $��2��6j   	   AutoGenerateColumns	 .  $��2��6�   
   CanUserAddRows
 .     CanUserDeleteRows .     
IsReadOnly .    CanUserResizeRows .     GridLinesVisibility$
 None=�66    CBGHeaderStyle#���  6Q     AlternatingRowBackground
 �����   RowStyle 5      �� 5       �� 
TargetType)  #System.Windows.Controls.DataGridRow"  6   .�5      ��  �� Property � �� �� Value
 �����63   5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5       ,  &System.Windows.Controls.DataGridColumn   
IsReadOnly .    Header$
 Date��68      Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 6F   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6R   �� *Date+ �� StringFormat$ {0:dd/MMM/yyy}��6�     5!       . $
 V.No��67   $ 50 6E    6P   �� *VNo+6j     5"       . $ Voucher Name��67   $	 100 6M    6Y   �� *	Voucher+6w     5#       . $ ID��67   $ 50 6C    6N   �� *DrAccount.ID+6q     5$       . $ Account��67   $	 300 6H    6T   �� *DrAccount.Name+6y     5%       . $ Dr��67   $	 100 6C     rightAlignedColumn   ElementStyle# [ 6O    6�   �� *	Dr_Amount+$ {0:0.00}��6�     5&       . $ Cr��67   $	 100 6C   # [ 6O    6�   �� *	Cr_Amount+$ {0:0.00}��6�     5'       . $  ��67   $	 100 6A   # [ 6M    6�   �� *
Cumulative+6�      RowDetailsTemplate 5.      �� 5/      .R�50      � 
���z��� 51      �� 52      �� 53      �� 54       57      �� 58      �� 59      .+�5;      �� $��0��6%   $��0��62   $��Journal Invoice No��6C   $��DemiBold"�6]   �� 5<      $��1��6%   $��0��62   ��6B   �� *Invno+�� 5=      $��0��6%   $��1��62   $��Invoice Balance��6C   $��DemiBold"�6Z   �� 5>      $��1��6%   $��1��62   $��DemiBold"�6`   ��6B   �� *	Balance+6`   5?      5@      5C      �� 5D   
   -   5         ��Name$ cmb_ACCOUNTS��5D   g     accounts#��[ 6D    �� SelectedItem$ SelectedAccount��6�    �� DisplayMemberPath$ 
Short_Name��6�    �� 
IsEditable . $��386,41,287.2,0q�6    J� RenderTransformOrigin$  0.888,0.356&�6&  $��2��6J  $��2��6^  $��27��6k  $	��Top=�6w  ��6�   �� *
Accounts+5F      �� 5G   
   $��Filters��6   $��16(�6"   $
��Bold"�60   $
��Left=�6B   $��37��6]   $��	10,30,0,0q�6i   $	��Top=�6|   $	��136��6�   �� 5H   
     LabelUI#��[ 6   $��Pick a Account��64   $
��Left=�6M   $��25��6h   $��
386,15,0,0q�6t   $	��Top=�6�   $	��155��6�   $��2��6�   �� 5I   
   #��[ 6   $
��From��64   $
��Left=�6C   $��25��6^   $��	86,16,0,0q�6j   $	��Top=�6}   $��60��6�   (  "System.Windows.Controls.DatePicker  5J   
   -   5        $��dtp_from��5J   g    	 NewUI#��[ 6H   $
��Left=�6w   $��	85,41,0,0q�6�   $	��Top=�6�   $	��144��6�   $��26��6�   $��0��6�     5K   
   -   5        $��dtp_to��5K   f   #��[ 6F   $
��Left=�6t   $��
234,41,0,0q�6�   $	��Top=�6�   $	��147��6�   $��26��6�   $��1��6�   �� 5L   
   #��[ 6   $��To��64   $
��Left=�6A   $��25��6\   $��
244,16,0,0q�6h   $	��Top=�6|   $��60��6�   �� 5M   
   $��322.6,67.8,11.2,-0.2q�6   $��1��66   $��1��6F     FotterPanel#���  6S   .+�5N      �� -   5        $��lblcr��5N      
������$�� ��6>   
������ ! �� TextAlignment$! Right=�6`   $��14(�6v   $��0q�6�   $��0,0,10,0q�6�   �� 5O      -   5        $��lbldr��5O   ,   
����  �$�� ��69   
������ $! Right=�6[   $��14(�6q   $��0q�6   $��0,0,10,0q�6�   �� 5P      -   5        $��
lblbalance��5P      
������ " �� TextAlignment$" Right=�6E   $
��Bold"�6[   $��21(�6m   $��0,0,10,0q�6}   $��28��6�   5Q      �� 5R   
   -	   5        # ��Name$# refresh_data��5R   K     Standard#��[ 6   $ � ToolTip$$ Refresh Data��64   $�� ��6a   $��10,73,362,10q�6�   $��1��6�   $  0.484,0.373&�6�   4	  .System.Windows.Automation.AutomationProperties% 	  IsOffscreenBehavior$% Onscreen=�6�   ��6�   Z� ��6�   Z� ��5S      �� 5T      & �� ImageSource$& images/onebit_12.png��6   ' j� Stretch$' UniformToFill=�6@   5W      �� 5X   
   #��[ 6   $��Pick a Account Group��64   $
��Left=�6S   $��250.6,11,0,0q�6p   $	��Top=�6�   $	��199��6�   $��1��6�   �� 5Y   
   -
   5        $ 
cmb_groups��5Y   =    	 prent_and_groups#��[	 6   $ SelectedParent��6�   $
 Name��6�    . $��250.6,41,11.2,0q�6�   $	��Top=�6�   $  0,0.357&�6  $��1��6.  $��27��6>  ��6n   �� *ParentGroups+6>  �� 5Z   
   -   5        $# 	btn_print��5Z   D   #���  6   $$ Print��64   $�� ��6W   $��85,73,283,10q�6z   $��1��6�   $  	0.5,0.502&�6�   $% Onscreen=�6�   ��6�   Z� ��6�   Z� ��5[      �� 5\      $& images/print.ico��6   5_      �� 5`   
   -   5        $# btn_doc��5`   T   #���  6   $$ Save as Word Document��64   $�� ��6e   $��158,73.8,209.4,9.8q�6q   $��1��6�   $  0.484,0.373&�6�   $% Onscreen=�6�   ��6�   Z� ��6�   Z� ��5a      �� 5b      $%& images/Office-Word-icon (1).png��6   5e      �� 5f   
   -   5        $# 	btn_excel��5f   L   #���  6   $$ Save as Excel��64   $�� ��6_   $��236,73.8,0,9.8q�6k   $��1��6�   $  0.957,0.373&�6�   $% Onscreen=�6�   $
��Left=�6  $��70��60  ��6�   Z� ��6�   Z� ��5g      �� 5h      $)& #images/Microsoft-Excel-icon (2).png��6   5j      �� 5l   
   -   5        $# btn_pdf��5l   J   #���  6   $$ Save as PDF��64   $�� ��6[   $��311,73.8,57.4,9.8q�6|   $��1��6�   $  0.484,0.373&�6�   $% Onscreen=�6�   ��6�   Z� ��6�   Z� ��5m      �� 5n      $& images/pdf-icon (1).png��6   5q      �� 5r   
   -   5        $# btn_xps��5r   J   #���  6   $$ Save as XPS��64   $�� ��6[   $��386,78.8,520.2,10.8q�6g   $��1��6�   $  0.957,0.373&�6�   $% Onscreen=�6�   $��2��6  ��6�   Z� ��6�   Z� ��5s      �� 5t      $0& *images/Folders-OS-Documents-Metro-icon.png��6   5w      5x      5y      