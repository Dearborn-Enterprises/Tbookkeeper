   M S B A M L   `   `   `  ����E  Abookkeeper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:accountsaccounts  5   	       accounts.ReceiptReport   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:accounts     5   	   -   5          � Title$  Receipt Report��5	   	   $��625.606��6    $��1043.873��61    � 
ResizeMode$ CanMinimize=�6B   
������� � WindowStartupLocation$ CenterOwner=�6u    � Icon$ images/onebit_14.png��6�   .��5
      � $��0,0,0,-1q�6   $
��Left=�6   $
��1029��68    � ColumnDefinitions 5   
   �� 5      $
��436* �6   �� 5      $
��533* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ rep_grid��5   v      
IsReadOnly .    RCRGHeaderStyle#���   6%      AlternatingRowBackground
 �����$��10,77,10,75q�6�   $��2��6�      AutoGenerateColumns .  	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Header$

 Date��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 120 63   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6?   �� *Date+ �� StringFormat$ {0:dd/MMM/yyyy}��6y     5      $
 
Voucher No��6%   $ 90 69    6D   �� *rno+6^     5      $
 Cr A/c��6%   $	 460 65    6A   �� *CrAccount.Name+6f     5      $
 Amount��6%   $	 150 65     rightAlignedColumn   ElementStyle# [ 6A    6t   �� *
DrAmount+$ {0:0.00}��6�      RowDetailsTemplate 5      �� 5      .R�5      �  5      �� 5      �� 5      �� 5      �� 5       �� 5!       � RowDefinitions 5#      �� 5$      �� 5%      .+�5)      �� $��0��6%   $��0��62   $��
Dr Account��6C   $��DemiBold"�6U   �� 5*      $��1��6%   $��0��62   ��6B   �� *DrAccount.Name+�� 5+      $��0��6%   $��1��62   $��	Narration��6C   $��DemiBold"�6T   �� 5,      $��1��6%   $��1��62   ��6C   �� *	Narration+�� 5-      $��0��6%   $��2��62   $��Discount��6B   $��DemiBold"�6R   �� 5.      $��1��6%   $��2��62   ��6B   �� *
DiscAmount+$ {0:0.00}���� 5/      $��0��6%   $��3��62   $��Against Journal Invoice��6B   $��DemiBold"�6a   �� 50      $��1��6%   $��3��62   ��6B   �� *Invno+�� 51      $��0��6%   $��4��62   $��Balance��6B   $��DemiBold"�6Q   �� 52      $��1��6%   $��4��62   ��6B   �� *
InvBalance+$ {0:0.00}��54      55      58      �� 5:   
   -   5        $��cmb_ACCOUNTS��5:   f     accounts#��[ 6D    �� SelectedItem$ SelectedAccounts��6�    �� DisplayMemberPath$ 
Short_Name��6�    �� 
IsEditable . $��431,43,233,0q�6  $	��Top=�6   J� RenderTransformOrigin$ 0.888,0.356&�62  $��2��6V  ��6�   �� 6V  �� 5;   
   $��Filters��6   $��16(�6"   $
��Bold"�60   $
��Left=�6B   $��37��6]   $��	10,30,0,0q�6i   $	��Top=�6|   $	��136��6�   �� 5<   
     LabelUI#��[ 6   $��Account��64   $
��Left=�6F   $��36��6a   $��
431,10,0,0q�6m   $	��Top=�6�   $	��155��6�   $��2��6�   �� 5=   
   #��[ 6   $
��From��64   $
��Left=�6C   $��33��6^   $��	84,10,0,0q�6j   $	��Top=�6}   $��60��6�   (  "System.Windows.Controls.DatePicker  5>   
   -   5        $��dtp_from��5>       	 NewUI#��[ 6H   $
��Left=�6�   $��	84,43,0,0q�6�   $	��Top=�6�   $	��157��6�     5?   
   -   5        $��dtp_to��5?   z   #��[ 6   $
��Left=�6�   $��
260,43,0,0q�6�   $	��Top=�6�   $	��152��6�   �� 5@   
   #��[ 6   $��To��64   $
��Left=�6A   $��33��6\   $��
260,10,0,0q�6h   $	��Top=�6|   $��60��6�   �� 5A   
   $��0,0,10,5q�6   
�������$��1��6@   $��Right=�6P   $	��171��6l   $��70��6x   $��Bottom=�6�   .+�5B      �� -   5         ��Name$ lblcr��5B      
�������$
��0.00��68   
������  �� TextAlignment$ Right=�6]   $��14(�6s   $��0q�6�   $��0,0,10,0q�6�   �� 5C      -   5        $ lblTOTAL��5C      $
��0.00��6(   
������ $ Right=�6M   $��21(�6c   $��0q�6q   $��0,0,10,0q�6�   $��31��6�   5D      �� 5E   
   -   5         ��Name$ refresh_data��5E   (    � ToolTip$ Refresh Data��6   $�� ��6>   $��10,0,0,9.606q�6d   $ 0.422,0.385&�6z   4  .System.Windows.Automation.AutomationProperties   IsOffscreenBehavior$ Onscreen=�6�   $
��Left=�6�   $��58��6  $��59��6%  $��Bottom=�61  ��6�   Z� ��6�   Z� ��5F      �� 5G       �� ImageSource$ images/onebit_12.png��6    j� Stretch$ UniformToFill=�6@   5J      �� 5K   
   -	   5        $ 	btn_print��5K   D     Standard#���  6   $ Print��64   $�� ��6W   $��68,0,329.2,10q�6z   $ 0.484,0.373&�6�   $ Onscreen=�6�   $��61��6  $��Bottom=�6"  ��6�   Z� ��6�   Z� ��5L      �� 5M      $ images/print.ico��6   5P      �� 5Q   
   -
   5        $ btn_doc��5Q   T   #���  6   $ Save as Word Document��64   $�� ��6e   $��132,0,260.2,4q�6q   $ 0.484,0.373&�6�   $ Onscreen=�6�   $��65��6#  $��Bottom=�6/  ��6�   Z� ��6�   Z� ��5R      �� 5S      $% images/Office-Word-icon (1).png��6   5V      �� 5W   
   -   5        $ 	btn_excel��5W   L   #���  6   $ Save as Excel��64   $�� ��6_   $��	210,0,0,4q�6k   $ 0.957,0.373&�6~   $ Onscreen=�6�   $
��Left=�6  $��70��6  $��66��6A  $��Bottom=�6M  ��6�   Z� ��6�   Z� ��5X      �� 5Y      $) #images/Microsoft-Excel-icon (2).png��6   5\      �� 5]   
   -   5        $ btn_pdf��5]   J   #���  6   $ Save as PDF��64   $�� ��6[   $��285,0,108.2,4q�6|   $ 0.484,0.373&�6�   $ Onscreen=�6�   $��65��6  $��Bottom=�6$  ��6�   Z� ��6�   Z� ��5^      �� 5_      $ images/pdf-icon (1).png��6   5b      �� 5c   
   -   5        $ btn_xps��5c   J   #���  6   $ Save as XPS��64   $�� ��6[   $��360,0,42.2,10q�6g   $ 0.957,0.373&�6~   $ Onscreen=�6�   $��54��6  $��Bottom=�6%  ��6�   Z� ��6�   Z� ��5d      �� 5e      $0 *images/Folders-OS-Documents-Metro-icon.png��6   5h      5j      5l      