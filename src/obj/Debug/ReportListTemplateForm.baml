   M S B A M L   `   `   `  ����E  Abookkeeper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:accountsaccounts  5   	   %    accounts.ReportListTemplateForm   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:accounts     5   	   -   5          � 
ResizeMode$  CanMinimize=�5   3    � Title$ Journal Report��5	   	   $��578.339��6    $��977.373��61   
������� � WindowStartupLocation$ CenterOwner=�6[    � Icon$' !images/Places-folder-txt-icon.png��6   .��5
      � $��0,0,0.2,1.8q�6    � ColumnDefinitions 5   
   �� 5      $
��436* �6   �� 5      $
��533* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ rep_grid��5   �      AlternatingRowBackground
 �����   GridLinesVisibility$
 None=�67      RCRGHeaderStyle#��[  6S      
IsReadOnly . $��10,72,11.2,70q�6�   $��2��6�   	   AutoGenerateColumns	 .  ��6  �� 
 �� UpdateSourceTrigger$
 PropertyChanged=�   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$
 Date��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 130 63   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6?   �� *Date+ �� StringFormat$ {0:dd/MMM/yyyy}��6y     5      $ 
Voucher No��6%   $ 90 69    6D   �� *jno+6^     5      $ Dr A/c��6%   $	 240 65    6A   �� *DrAccount.Name+6f     5      $ Amount��6%   $	 100 65     rightAlignedColumn   ElementStyle# [ 6A    6t   �� *	Dr_Amount+$ {0:0.00}��6�     5      $ Cr A/c��6%   $	 240 65    6A   �� *CrAccount.Name+6f     5      $ Amount��6%   $	 100 65   # [ 6A    6t   �� *	Cr_Amount+$ {0:0.00}��6�      RowDetailsTemplate 5      �� 5      .R�5      �  5      �� 5      �� 5        � RowDefinitions 5#      �� 5$      �� 5%      .+�5*      �� $��0��6%   $��0��62   $��	Narration��6C   $��DemiBold"�6T   �� 5+      $��1��6%   $��0��62   ��6C   �� *	Narration+�� 5,      $��0��6%   $��1��62   $��Invoice��6C   $��DemiBold"�6R   �� 5-      $��1��6%   $��1��62   ��6C   �� *	Invoice+50      51      53      �� 54   
   -   5         ��Name$ cmb_ACCOUNTS��54   g     accounts#��[ 6    �� SelectedItem$ SelectedAccount��6�    �� DisplayMemberPath$ 
Short_Name��6�    �� 
IsEditable . $��
431,37,0,0q�6*  $	��Top=�6>  $
��Left=�6V  $	��348��6q   J� RenderTransformOrigin$ 0.888,0.356&�6}  $��2��6�  ��6�   �� $
 PropertyChanged=�6�  �� 55   
   $��Filters��6   $��16(�6"   $
��Bold"�60   $
��Left=�6B   $��37��6]   $��	10,30,0,0q�6i   $	��Top=�6|   $	��136��6�   �� 56   
     LabelUI#��[ 6   $��Account��64   $
��Left=�6F   $��31��6a   $��
431,10,0,0q�6m   $	��Top=�6�   $	��155��6�   $��2��6�   �� 57   
   #��[ 6   $
��From��64   $
��Left=�6C   $��31��6^   $��
115,10,0,0q�6j   $	��Top=�6~   $��60��6�   (  "System.Windows.Controls.DatePicker  58   
   -   5        $��dtp_from��58   j    	 NewUI#��[ 6J   $
��Left=�6z   $��
115,37,0,0q�6�   $	��Top=�6�   $	��151��6�   6�     59   
   -   5        $��dtp_to��59   h   #��[ 6H   $
��Left=�6v   $��
271,37,0,0q�6�   $	��Top=�6�   $	��155��6�   �� 5:   
   #��[ 6   $��To��64   $
��Left=�6A   $��30��6\   $��
271,10,0,0q�6h   $	��Top=�6|   $��60��6�   �� 5;   
   $��
351,0,11,3q�6   
�������$��1��6B   $��61��6R   $��Bottom=�6^   .+�5<      �� -   5         ��Name$ lblcr��5<      
�������$
��0.00��68   
������  �� TextAlignment$ Right=�6]   $��14(�6s   $��0q�6�   $��0,0,10,0q�6�   �� 5=      -   5        $ lblTOTAL��5=      $
��0.00��6(   
������ $ Right=�6M   $��21(�6c   $��0q�6q   $��0,0,10,0q�6�   $��31��6�   5>      �� 5?   
   -   5         ��Name$ refresh_data��5?   K     Standard#���  6    � ToolTip$ Refresh Data��64   $�� ��6a   $��11,0,0,8q�6�   $ 0.422,0.385&�6�   4  .System.Windows.Automation.AutomationProperties   IsOffscreenBehavior$ Onscreen=�6�   $
��Left=�6  $��60��69  $��57��6D  $��Bottom=�6P  ��6�   Z� ��6�   Z� ��5@      �� 5A       �� ImageSource$ images/onebit_12.png��6    j� Stretch$ UniformToFill=�6@   5D      �� 5E   
   -	   5        $ 	btn_print��5E   D   #���  6   $ Print��64   $�� ��6W   $��76,0,0,8q�6z   $ 0.484,0.373&�6�   $ Onscreen=�6�   $
��Left=�6  $��71��6,  $��57��67  $��Bottom=�6C  ��6�   Z� ��6�   Z� ��5F      �� 5G      $ images/print.ico��6   5J      �� 5K   
   -
   5        $ btn_doc��5K   T   #���  6   $ Save as Word Document��64   $�� ��6e   $��153,0,212.8,4q�6q   $ 0.484,0.373&�6�   $ Onscreen=�6�   $��65��6#  $��Bottom=�6/  ��6�   Z� ��6�   Z� ��5L      �� 5M      $% images/Office-Word-icon (1).png��6   5P      �� 5Q   
   -   5        $ 	btn_excel��5Q   L   #���  6   $ Save as Excel��64   $�� ��6_   $��	231,0,0,4q�6k   $ 0.957,0.373&�6~   $ Onscreen=�6�   $
��Left=�6  $��70��6  $��66��6A  $��Bottom=�6M  ��6�   Z� ��6�   Z� ��5R      �� 5S      $) #images/Microsoft-Excel-icon (2).png��6   5V      �� 5W   
   -   5        $ btn_pdf��5W   J   #���  6   $ Save as PDF��64   $�� ��6[   $��306,0,60.8,4q�6|   $ 0.484,0.373&�6�   $ Onscreen=�6�   $��65��6  $��Bottom=�6#  ��6�   Z� ��6�   Z� ��5X      �� 5Y      $ images/pdf-icon (1).png��6   5\      �� 5]   
   -   5        $ btn_xps��5]   J   #���  6   $ Save as XPS��64   $�� ��6[   $��381,0,525.2,5q�6g   $ 0.957,0.373&�6~   $ Onscreen=�6�   $��2��6  $��59��6-  $��Bottom=�69  ��6�   Z� ��6�   Z� ��5^      �� 5_      $0 *images/Folders-OS-Documents-Metro-icon.png��6   5b      5d      5e      