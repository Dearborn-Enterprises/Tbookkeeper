   M S B A M L   `   `   `  ����E  Abookkeeper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:accountsaccounts  5   	       accounts.payment   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:accounts     5   	   -   5          � Icon$  images/cash.png��5	   	    � 
ResizeMode$ CanMinimize=�5
   	    � WindowStartupLocation$ CenterOwner=�6"    � Title$ Payment Voucher��6F   $	��491��6^   $��637.219��6k   
����ح�.��5      � $	��6,7q�6    � RowDefinitions 5   
   �� 5      $
��331* �6   �� 5      $	��56* �6   .+�5   
   �� 
���   �$��1q�6%   $��0,-2,0,0q�69   $��2��6K   ._�5      �� -   5         ��Name$ lbl_taskflag��5   _    � ToolTip$- 'This is a Task, performed by TaskMaster��6-   $��
0,30,266,0q�6w    J� RenderTransformOrigin$ -0.421,0.583&�6�   $��Right=�6�   $��27��6�   $��24��6�   $	��Top=�6�   ��6   Z� ��5      �� 5       �� ImageSource$ images/onebit_27.png��6!   5      5      �� 5"   
   ���	#FF3EAAC1$��1q�6)   $��Right=�6=   $��	0,26,13,0q�6Y   $	��241��6l   $��32��6x   $	��Top=�6�   �� 5'   
   ���	#FF3EAAC1$��1q�6)   $��
10,0,13,10q�6=   $��53��6Q   $��Bottom=�6]   $��1��6x   �� 5,   
   -   5        	 ��Name$	 btn_moveprevious��5,   j      Standard#��[  6   $ Show Previous Payment��6J   $��	0,31,83,0q�6�   $ -0.421,0.583&�6�   $��Right=�6�   $��27��6�   $��24��6  $	��Top=�6  ��63   Z� ��5-      �� 5.      $ images/back.png��6   -   5        
btn_login1��5.   ;   50      �� 51   
   -   5        $	 btn_movenext��51   3   #��[  6   $ Show Next Payment��6`   $��	0,31,51,0q�6�   $ -0.421,0.583&�6�   $��Right=�6�   $��27��6�   $��24��6�   $	��Top=�6  ��6I   Z� ��52      �� 53      $ images/go.png��6   -   5        
btn_login2��53   9   55      �� 56   
   -   5        $	 btn_movelast��56   �   #��[  6   $ Show Last Payment��6e   $�� ��6�   $��	0,31,22,0q�6�   $ -0.421,0.583&�6�   $��Right=�6�   $��27��6�   $��24��6  $	��Top=�6  ��63   Z� ��57      �� 58      $ images/up.png��6   -   5        
btn_login4��58   9   5:      �� 5;   
   -	   5        $	 btn_movefirst��5;   g   #��[  6   $ Show First Payment��6J   $�� ��6�   $��
0,31,115,0q�6�   $ -0.421,0.583&�6�   $��Right=�6�   $��27��6�   $��24��6  $	��Top=�6  ��63   Z� ��5<      �� 5=      $ images/DOWN.png��6   -
   5        
btn_login5��5=   ;   5A      �� 5C   
     LabelUI#��[ 6   $��Amount��65   $
��Left=�6F   $��27��6a   $��
10,214,0,0q�6m   $	��Top=�6�   $	��143��6�   �� 5D   
   #��[ 6   $��Discount��65   $
��Left=�6H   $��27��6c   $��187,214,0,0q�6o   $	��Top=�6�   $	��141��6�   �� 5E   
   -   5        
 ��Name$
 txt_cramount��5E   �   {�.   	TextBoxUI#��[ 6~   $��10,241,458,0q�6�    �� TextWrapping$
 Wrap=�6�    $  Error_tenmp_Error_top_right_text =� ErrorTemplate# [ 6  $	��Top=�6O  $��4��6g  ��6#   �� *
paAmount+ �� UpdateSourceTrigger$ PropertyChanged=� �� ValidatesOnDataErrors . 6g  �� 5F   
   -   5        $
 txt_disc��5F   \   $��5��6    	 NewUI#��[ 6!   $��188,241,0,0q�6n   $
 Wrap=�6�   $ 	0.509,0.5&�6�   $	��Top=�6�   $
��Left=�6�   $��49��6�   �� 5G   
   -   5        $
 txt_discamount��5G   b   $��6��6   #��[ 6!   $��237,241,284,0q�6z   $
 Wrap=�6�   $�� ��6�   $ 	0.509,0.5&�6�   $	��Top=�6�   �� 5I   
   #��[ 6   $��
Dr Account��65   $
��Left=�6J   $��27��6e   $��
10,113,0,0q�6q   $	��Top=�6�   $	��248��6�   �� 5J   
   #��[ 6   $��Cash Account��65   $
��Left=�6L   $��27��6g   $��	12,58,0,0q�6s   $	��Top=�6�   $	��141��6�   �� 5K   
   -   5        $

 info��5K   p   #��[ 6   $��43��61   $��10,171,361,0q�6=   $
 Wrap=�6S   $�� ��6g   $	��Top=�6~   ��.  6�   �� 5L   
   #��[ 6   $��	Post Date��65   $��27��6I   $��
10,1,410,0q�6U   $	��Top=�6i   �� 5M   
   #��[ 6   $��	Narration��65   $
��Left=�6I   $��27��6d   $��
12,268,0,0q�6p   $	��Top=�6�   $	��126��6�   �� 5N   
   #��[ 6   $
��V.No��65   $��	253,0,0,0q�6D   $
��Left=�6W   $��47��6r   $��28��6}   $	��Top=�6�   �� 5O   
   -   5        $
 txt_pno��5O   7   ��.   �� 
IsReadOnly . $��
0,31,308,0q�6H   $
 Wrap=�6\   $�� ��6p   $ -0.036,0.458&�6y   ���	#FFC2C5D3$��Right=�6�   $��58��6�   #��[ 6�   $	��Top=�6�   �� 5P   
   -   5        $
 txt_narration��5P   �   {�. #��[ 6�   $��10,295,214.2,0q�6�   $
 Wrap=�6�   # [ 6	  $��6��6V  $��54��6�  $	��Top=�6�  ��6%   �� *paNarration+$ PropertyChanged=� . 6�  �� 5Q   
   -   5        $
 txt_pnofind��5Q   c   ��.  #��[ 6%   $��373,31,197,0q�6x   $
 Wrap=�6�   $�� ��6�   $ 	0.509,0.5&�6�   $��24��6�   $	��Top=�6�   �� 5R   
   -   5        $	 btn_find��5R   4   #��[  6   $�� ��6^   $��
0,28,165,0q�6j   $ -0.421,0.583&�6~   $��Right=�6�   $��27��6�   $��24��6�   $	��Top=�6�   ��6�   Z� ��5S      �� 5T      $ images/SEARCH.ICO��6   -   5        
btn_login3��5T   =   5V      �� 5X   
   -   5        $	 btn_save��5X   Z   #��[  6   $
 Save��6J   $�� ��6n   $
��Left=�6y   $��40��6�   $	��Top=�6�   $��45��6�   $��
75,9.6,0,0q�6�   ���	#FF837D7D$��1��6�   ��5Y      �� 5Z      $ images/SAVE.ICO��6   5\      �� 5]   
   -   5        $	 	btn_Reset��5]   M   #��[  6   $ Reset��6`   $�� ��6p   $��40��6{   $	��Top=�6�   $��	23,10,0,0q�6�   $ 0.512,0.571&�6�   ���	#FFA8A2A2$
��Left=�6�   $��45��6
  $��1��6  ��5^      �� 5_      $ images/clipboard.ico��6   5a      �� 5b   
   -   5        $	 	btn_print��5b   E   #��[  6   $ Print��64   $�� ��6q   $
��Left=�6|   $��45��6�   $��125,9.6,0,0q�6�   $��40��6�   $	��Top=�6�   ���	#FF9C9292$��1��6�   ��5c      �� 5d      $ images/print.ico��6   5f      �� 5h   
   -   5         ��Name$ cmb_cashaccount��5h   d    accounts#��[ 6   # [ 6�    �� SelectedItem$ SelectedAccount��6   �� DisplayMemberPath$ 
Short_Name��6$   �� 
IsEditable . $��10,86,252,0q�6�  $	��Top=�6�  $��1��6�  ��.  �� Text 6]   �� *
paCashAc+$ PropertyChanged=� . ��6C  �� *
Accounts+6�  �� 5i   
   -   5        $ cmb_draccount��5i   a  $ SelectedAccount��6   $ 
Short_Name��6T   #��[ 6�   # [ 6   . $��10,139,252,0q�6�  $	��Top=�6�  $��2��6�  ��. ��6s   �� *
Accounts+ 6�   �� *paCrAc+$ PropertyChanged=� . 6�  (  "System.Windows.Controls.DatePicker  5j   
   -   5          Name$ 	dtp_pdate��5j   L   #��[ 6-   $	��Top=�6a   $��10,31,383,0q�6y   $��0��6�   ��. 6�   �� 5k   
   -   5        $	 btn_cash_report��5k   �   #��[  6   $ Show Cash Report��6h   $�� ��6�   $��0,86,209.2,0q�6�   $ -0.421,0.583&�6�   $��Right=�6�   $��43��6�   $��40��6
  $	��Top=�6  ��63   Z� ��5l      �� 5m      $+ %images/Product-documentation-icon.png��6   -   5        
btn_login6��5m   Q   5o      �� 5p   
   -   5        $	 btn_dr_report��5p   �   #��[  6-   $ Show Cash Report��6f   $�� ��6�   $��0,136,209.2,0q�6�   $ -0.421,0.583&�6�   $��Right=�6�   $��43��6�   $��40��6  $	��Top=�6  ��6O   Z� ��5q      �� 5r      $+ %images/Product-documentation-icon.png��6   -   5        
btn_login7��5r   Q   5t      �� 5u   
   -   5        $	 btn_update1��5u   _   #��[  6   $ Update��6M   $�� ��6v   $
��Left=�6�   $��40��6�   $	��Top=�6�   $��45��6�   $��175,9.6,0,0q�6�   $ 
0.45,0.429&�6�   ���	#FF978888$��1��6  ��5v      �� 5w      $ images/tick.ico��6   5y      �� 5z   
   -   5        $	 
btn_delete��5z   [   #��[  6   $ Delete��6I   $�� ��6q   $
��Left=�6|   $��40��6�   $	��Top=�6�   $��45��6�   $��225,9.6,0,0q�6�   $ 0.486,0.429&�6�   ���	#FFA49595$��1��6  ��5{      �� 5|      $ images/onebit_17.png��6   5~      �� 5   
   -    5         ��Name$ tr_history_list��5   d   ��.  $��Stretch=�6%   
�������  tr_History3#��[ 6�   $��0,65,10.2,133.4q�6�   $��Right=�6�   $	��177��6�   ��6}   �� *list+6�   �� 5�   
   -!   5        $ hist_task_lbl��5�   W   $��Center=�6   $��Center=�62   #��[ 6o   $��14(�6�   ���	#FF8B4C00$��History��6�   $��343,142,128,214q�6�   $��Trebuchet MS)�6�   $��27��6�   $��Center=�6  $ 0.5,0.5&�6#  $��Center=�6C  $	��148��6`  z�5�      V� 5�      .~�5�      �� �� 5�      �� 5�       �� Angle$ -90.327Q�6&   T� 5�      5�      5�      �� 5�   
   -"   5         ��Name$ 	taskgroup��5�      
�������$��Add to Task List��6@   $��123                    ��6Z   $��431,249,10.2,0q�5�      $	��Top=�6.   .��5�      ��  �� Orientation$ Vertical=�6   .+�5�      � 
������� 5�      �� 5�      $��23 �6(    � ColumnDefinitions 5�      �� 5�      �� 5�      �� 5�      .+�5�      �� -#   5         ��Name$ chk_isrecurr��5�   l   $��DemiBold"�6;   $��Center=�6Q   $��0��6�   $	��Yes��6�   $��0��6�   6�   �� 5�      -$   5        $��btn_task_add��5�   �   #��[  6   $��1��6?   $ Add/Update ��6j   $��0��6�   ��6�   Z� ��5�      �� 5�      $ images/check.png��6)    j� Stretch$ Uniform=�6I   5�      �� 5�      -%   5        $��btn_task_del��5�   |   #��[  6   $ Remove��6?   $��2��6l   $�� ��6�   $��0��6�   ��6�   Z� ��5�      �� 5�      $ images/close.png��6)   $ Uniform=�6I   5�      5�      �� 5�      $��Label-Task Amount��6   #���  64   $��Center=�6V   
������6z   �� 5�      -&   5        $
 txt_task_label��5�   2   
������$��26��6J   �� 5�      -'   5        $
 txt_task_Amount��5�   6   
����İ�$��25��6O   5�      5�      �� 5�   
   -(   5        $ 	lst_tasks��5�   �   ��.  $��Stretch=�6S    	 Tasks#��[ 6x   
�������$��0,63,10.2,133.4q�6  $��Right=�6  $	��176��67   � DataContext 6�   �� ��6�   �� 6C  �� 5�   
   -)   5        $	 
btn_report��5�   _   #��[  6   $ Report��6M   $�� ��6u   $
��Left=�6�   $��40��6�   $	��Top=�6�   $��45��6�   $��273,9.6,0,0q�6�   $ 
0.45,0.429&�6�   ���	#FF978888$��1��6  ��5�      �� 5�      $) #images/Places-folder-green-icon.png��6   5�      �� 5�   
   -*   5        #��[  5�      $ Account Registration��64   $�� ��6S   $��40��6^   $	��Top=�6j   $��323,9.6,0,0q�6�   $
��Left=�6�   $��45��6�   $��1��6�   ��5�      �� 5�      $ images/addressbook.ico��6   5�      �� 5�   
   $��Total��6   $��18(�6    #��[ 6/   $
��Left=�6R   $��39��6m   $��
12,349,0,0q�6y   $	��Top=�6�   $��78��6�   $��2��6�   �� 5�   
   -+   5         ��Name$ 	txt_total��5�      $��18(�6'   
���  ��$��DemiBold"�6H    �� TextAlignment$ Right=�6_   $��Right=�6u   $��0,349,214,63q�6�   $
��Wrap=�6�   $
��0.00��6�   $	��221��6�   $��2��6�   �� 5�   
   #��[ 6   $��JInvoice��64   $
��Left=�6G   $��26��6b   $��263,161,0,0q�6n   $	��Top=�6�   $��64��6�   �� 5�   
   -,   5        $ cmb_jinv��5�   �   #��[ 60   $��3��6l    . $��0,187,252,0q�6�   $��27��6�   $	��Top=�6�   $��Right=�6�   $	��104��6  ��6|   �� 6  �� 5�   
   --   5        $	 btn_doc��5�   T   #���   6   $ Save as Word Document��64   $�� ��6e   $��373,9.6,0,0q�6q   $ 0.484,0.373&�6�   4  .System.Windows.Automation.AutomationProperties    IsOffscreenBehavior$  Onscreen=�6�   $��40��6  $	��Top=�6  $
��Left=�6/  $��45��6J  $��1��6U  ��6�   Z� ��5�      �� 5�      $% images/Office-Word-icon (1).png��6   5�      �� 5�   
   -.   5        $	 btn_pdf��5�   J   #���   6   $ Save as PDF��64   $�� ��6[   $��422,9.6,0,0q�6|   $ 0.484,0.373&�6�   $  Onscreen=�6�   $��40��6  $	��Top=�6  $
��Left=�6%  $��45��6@  $��1��6K  ��6�   Z� ��5�      �� 5�      $ images/pdf-icon (1).png��6   5�      �� 5�   
   -/   5        $	 btn_xps��5�   J   #���   6   $ Save as XPS��64   $�� ��6[   $��472,9.6,0,0q�6g   $ 0.957,0.373&�6|   $  Onscreen=�6�   $��40��6  $	��Top=�6  $
��Left=�6%  $��45��6@  $��1��6K  ��6�   Z� ��5�      �� 5�      $0 *images/Folders-OS-Documents-Metro-icon.png��6   5�      5�      5�      