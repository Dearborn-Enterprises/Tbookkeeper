   M S B A M L   `   `   `  ����E  Abookkeeper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:accountsaccounts  5   	       accounts.trialBalance   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:accounts     5   	   -   5          � Title$  Trial Balance��5	   	   $��563.606��6    � 
ResizeMode$ CanMinimize=�60   $��793.772��6I   
����İ� � WindowStartupLocation$ CenterOwner=�6u    � Icon$+ %images/Product-documentation-icon.png��6�    � 	Resources 5
         ItemCollectionViewSource �� CollectionViewType(  "accounts.AmountBackGroundConverter  RowBackGroundConverter��%?   &	        &	      �� 5   
   " ��6@     5   
   6+   5      .��5      � .+�5   
   �� -   5         ��Name$ refresh_data��5   K     Standard#��[ 6    � ToolTip$ Refresh Data��64   $�� ��6a   $��10,446,701.2,14.4q�6�    J� RenderTransformOrigin$ 0.484,0.373&�6�   4  .System.Windows.Automation.AutomationProperties	   IsOffscreenBehavior$	 Onscreen=�6�   ��6�   Z� ��6�   Z� ��5      �� 5      
 �� ImageSource$
 images/onebit_12.png��6    j� Stretch$ UniformToFill=�6@   5      �� 5   
   $��	0,446,6,0q�6   
�������$��Right=�6A   $	��162��6]   $��82��6i   $	��Top=�6u   .+�5      �� -   5         ��Name$ lblcr��5      $��DemiBold"�6%   
�������$
��0.00��6N   
������  �� TextAlignment$ Right=�6s   $��18(�6�   $��0q�6�   $��0,0,10,0q�6�   $��28��6�   �� 5      -   5        $ lbldr��5   ,   
����  �$
��0.00��6;   
������ $ Right=�6`   $��DemiBold"�6v   $��18(�6�   $��0q�6�   $��0,0,10,0q�6�   $��24��6�   5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ group_acc_grid��5   �      
IsReadOnly .    AlternatingRowBackground
 ����� �� AlternationCount$ 3��6U     PAYRGHeaderStyle#��[ 6j    � DataContext# [  6�      AutoGenerateColumns .     CanUserAddRows .  $��8,10,6,0q�5   $   $	��431��66   $	��Top=�6C   ��5      ��    RowStyle 5       �� 5!       �� 
TargetType)  #System.Windows.Controls.DataGridRow"  6   .�5"      ��  �� Property � �� �� Value 63   �� *Item.Cr_Amount+ �� 	Converter# [  �� RelativeSource �� *self+5#         Columns 5&      0  *System.Windows.Controls.DataGridTextColumn  5'      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6F      
FontWeight$
 Bold"�6R   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *CrAccount.ID+6R     5(      $ Account��6H      Width5  /System.Windows.Controls.DataGridLengthConverter$	 250 6Y    6%   �� *CrAccount.Name+6Y     5)        rightAlignedColumn    ElementStyle#  [ 6%   $ Dr��6�   $	 140 6�    6X   �� *	Dr_Amount+! �� StringFormat$! {0:0.00}��6�     5*      #  [ 6&   $ Cr��6�   $	 140 6�    6Y   �� *	Cr_Amount+$! {0:0.00}��6�   50      �� 51   
   -   5        $ 	btn_print��51   D   #���  6   $ Print��64   $�� ��6W   $��86,446,621.2,14.4q�6z   $ 0.484,0.373&�6�   $	 Onscreen=�6�   ��6�   Z� ��6�   Z� ��52      �� 53      $
 images/print.ico��6   56      �� 57   
   -   5        $ btn_doc��57   T   #���  6   $ Save as Word Document��64   $�� ��6e   $��166,450,543.2,14.4q�6q   $ 0.484,0.373&�6�   $	 Onscreen=�6�   ��6�   Z� ��6�   Z� ��58      �� 59      $%
 images/Office-Word-icon (1).png��6   5<      �� 5=   
   -   5        $ 	btn_excel��5=   L   #���  6   $ Save as Excel��64   $�� ��6_   $��244,450,0,14.4q�6k   $ 0.957,0.373&�6�   $	 Onscreen=�6�   $
��Left=�6  $��70��6#  ��6�   Z� ��6�   Z� ��5>      �� 5?      $)
 #images/Microsoft-Excel-icon (2).png��6   5B      �� 5C   
   -	   5        $ btn_pdf��5C   J   #���  6   $ Save as PDF��64   $�� ��6[   $��319,450,393.2,14.4q�6|   $ 0.484,0.373&�6�   $	 Onscreen=�6�   ��6�   Z� ��6�   Z� ��5D      �� 5E      $
 images/pdf-icon (1).png��6   5H      �� 5I   
   -
   5        $ btn_xps��5I   J   #���  6   $ Save as XPS��64   $�� ��6[   $��399,456,319.2,19.4q�6g   $ 0.957,0.373&�6�   $	 Onscreen=�6�   ��6�   Z� ��6�   Z� ��5J      �� 5K      $0
 *images/Folders-OS-Documents-Metro-icon.png��6   5N      5P      5Q      