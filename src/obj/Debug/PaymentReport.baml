   M S B A M L   `   `   `  ����E  Abookkeeper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:accountsaccounts  5   	       accounts.PaymentReport   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:accounts     5   	   -   5          � 
ResizeMode$  CanMinimize=�5       � Title$ Payment Report��5	   	   $��566.606��6    $��977.373��61   
������� � WindowStartupLocation$ CenterOwner=�6[    � Icon$ images/addressbook.ico��6   .��5
      �  � ColumnDefinitions 5   
   �� 5      $
��436* �6   �� 5      $
��533* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ rep_grid��5   �      GridLinesVisibility$
 None=�6      
IsReadOnly .    PAYRGHeaderStyle#���   6@      AlternatingRowBackground
 �����$��10,72,11,69q�6�   $��2��6�   	   AutoGenerateColumns	 .  
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$
 Date��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 63   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6?   �� *Date+6Z     5      $ 
Voucher No��6%   $ 90 69    6D   �� *pno+6^     5      $ Dr A/c��6%   $	 260 65    6A   �� *DrAccount.Name+6f     5      $ Amount��6%   $	 100 65     rightAlignedColumn   ElementStyle# [ 6A    6t   �� *Amount+6�      RowDetailsTemplate 5      �� 5      .R�5      �  5      �� 5      �� 5      �� 5      �� 5      �� 5        � RowDefinitions 5"      �� 5#      �� 5$      .+�5(      �� $��0��6%   $��0��62   $��
Cr Account��6C   $��DemiBold"�6U   �� 5)      $��1��6%   $��0��62   ��6B   �� *
Cr_Account+�� 5*      $��0��6%   $��1��62   $��	Narration��6C   $��DemiBold"�6T   �� 5+      $��1��6%   $��1��62   ��6C   �� *	Narration+�� 5,      $��0��6%   $��2��62   $��Discount��6B   $��DemiBold"�6R   �� 5-      $��1��6%   $��2��62   ��6B   �� *
DiscAmount+�� 5.      $��0��6%   $��3��62   $��Journal Invoice��6B   $��DemiBold"�6Y   �� 5/      $��1��6%   $��3��62   ��6B   �� *Invno+�� 50      $��0��6%   $��4��62   $��Balance��6B   $��DemiBold"�6Q   �� 51      $��1��6%   $��4��62   ��6B   �� *
InvBalance+52      53      55      �� 56   
   -   5         ��Name$ cmb_ACCOUNTS��56   �     accounts#��[ 6D    �� SelectedValue$ SelectedAccount��6f    �� DisplayMemberPath$ 
Short_Name��6�    �� 
IsEditable . $��
431,37,0,0q�6  $	��Top=�6  $
��Left=�62  $	��348��6M   J� RenderTransformOrigin$ 0.888,0.356&�6Y  $��2��6}  ��6�   �� 6}  �� 57   
   $��Filters��6   $��16(�6"   $
��Bold"�60   $
��Left=�6B   $��37��6]   $��	10,30,0,0q�6i   $	��Top=�6|   $	��136��6�   �� 58   
     LabelUI#��[ 6   $��Account��64   $
��Left=�6F   $��31��6a   $��	431,6,0,0q�6m   $	��Top=�6�   $	��155��6�   $��2��6�   �� 59   
   #��[ 6   $
��From��64   $
��Left=�6C   $��31��6^   $��97,6,0,0q�6j   $	��Top=�6|   $��60��6�   (  "System.Windows.Controls.DatePicker  5:   
   -   5        $��dtp_from��5:   ~    	 NewUI#��[ 6H   $
��Left=�6�   $��	97,37,0,0q�6�   $	��Top=�6�   $	��169��6�     5;   
   -   5        $��dtp_to��5;   z   #��[ 6F   $
��Left=�6�   $��
271,37,0,0q�6�   $	��Top=�6�   $	��145��6�   �� 5<   
   #��[ 6   $��To��64   $
��Left=�6A   $��31��6\   $��	271,6,0,0q�6h   $	��Top=�6{   $��60��6�   �� 5=   
   -   5         ��Name$ refresh_data��5=   (    � ToolTip$ Refresh Data��6   $�� ��6>   $��0,0,368.168,4.606q�6d   $ 0.422,0.385&�6   4  .System.Windows.Automation.AutomationProperties   IsOffscreenBehavior$ Onscreen=�6�   $��Right=�6  $��58��6   $��59��6+  $��Bottom=�67  ��6�   Z� ��6�   Z� ��5>      �� 5?       �� ImageSource$ images/onebit_12.png��6    j� Stretch$ UniformToFill=�6@   5B      �� 5C   
   $��
351,0,11,3q�6   
�������$��1��6B   $��61��6R   $��Bottom=�6^   .+�5D      �� -   5         ��Name$ lblcr��5D      
�������$
��0.00��68   
������  �� TextAlignment$ Right=�6]   $��14(�6s   $��0q�6�   $��0,0,10,0q�6�   �� 5E      -   5        $ lblTOTAL��5E      
������ $ Right=�6C   $��21(�6Y   $��0q�6g   $��0,0,10,0q�6{   $��31��6�   5F      �� 5G   
   -	   5        $ 	btn_print��5G   D     Standard#���  6   $ Print��64   $�� ��6W   $��73,472,304.168,4.606q�6z   $ 0.484,0.373&�6�   $ Onscreen=�6�   ��6�   Z� ��6�   Z� ��5H      �� 5I      $ images/print.ico��6   5L      �� 5M   
   -
   5        $ btn_doc��5M   T   #���  6   $ Save as Word Document��64   $�� ��6e   $��138,0,227.8,3.8q�6q   $ 0.484,0.373&�6�   $ Onscreen=�6�   $��65��6%  $��Bottom=�61  ��6�   Z� ��6�   Z� ��5N      �� 5O      $% images/Office-Word-icon (1).png��6   5R      �� 5S   
   -   5        $ 	btn_excel��5S   L   #���  6   $ Save as Excel��64   $�� ��6_   $��216,0,0,3.8q�6k   $ 0.957,0.373&�6�   $ Onscreen=�6�   $
��Left=�6  $��70��6   $��66��6C  $��Bottom=�6O  ��6�   Z� ��6�   Z� ��5T      �� 5U      $) #images/Microsoft-Excel-icon (2).png��6   5X      �� 5Y   
   -   5        $ btn_pdf��5Y   J   #���  6   $ Save as PDF��64   $�� ��6[   $��291,0,75.8,3.8q�6|   $ 0.484,0.373&�6�   $ Onscreen=�6�   $��65��6  $��Bottom=�6%  ��6�   Z� ��6�   Z� ��5Z      �� 5[      $ images/pdf-icon (1).png��6   5^      �� 5_   
   -   5        $ btn_xps��5_   J   #���  6   $ Save as XPS��64   $�� ��6[   $��366,0,9.8,9.8q�6g   $ 0.957,0.373&�6~   $ Onscreen=�6�   $��54��6  $��Bottom=�6%  ��6�   Z� ��6�   Z� ��5`      �� 5a      $0 *images/Folders-OS-Documents-Metro-icon.png��6   5d      5f      5g      