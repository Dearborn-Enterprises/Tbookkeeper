   M S B A M L   `   `   `  ����E  Abookkeeper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:accountsaccounts  5   	       accounts.Receipt   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:accounts     5   	   -   5          � Icon$  images/onebit_14.png��5	   	    � Title$ Receipt Voucher��5
   	   $	��495��6!   $��637.219��6.   ���	#FFEEEDE1 � 
ResizeMode$ CanMinimize=�6U    � WindowStartupLocation$ CenterOwner=�6n   .��5      � $��
10,10,4,11q�6   .+�5   
   �� 
���   �$��1q�6%   $��0,0,3,0q�69   ._�5      �� -   5         ��Name$ hist_task_lbl��5   [   $��Center=�6   $��Center=�66      LabelUI#��[  6r   $��14(�6�   ���	#FF8B4C00$��History��6�   $��343,128,121,262q�6�   $��Trebuchet MS)�6�   $��27��6�   $��Center=�6   J� RenderTransformOrigin$ 0.5,0.5&�6&  $��Center=�6F  $	��148��6c  z�5      V� 5      .~�5      �� �� 5      �� 5       �� Angle$ -90.327Q�6*   T� 5      5      5      5      �� 5   
   ���	#FF3EAAC1$��1q�6)   $��	11,0,13,7q�6=   $��56��6P   $��Bottom=�6\   �� 5   
   ���	#FF3EAAC1$��1q�6)   $��353,20,10,0q�6=   $��35��6R   $	��Top=�6^   �� 5   
   #��[  6   $��Cash Account��64   $
��Left=�6K   $��29��6f   $��	10,47,0,0q�6r   $	��Top=�6�   $	��248��6�   �� 5   
   #��[  6   $��Amount��64   $
��Left=�6E   $��27��6`   $��
11,202,0,0q�6l   $	��Top=�6�   $	��142��6�   �� 5   
   -   5         ��Name$ txt_cramount��5      $  Error_tenmp_Error_top_right_text =� ErrorTemplate# [ 6�   $��4��6�    	 NewUI#��[ 6�   $��11,229,424.2,0q�6  	 �� TextWrapping$
	 Wrap=�67  $	��Top=�6M  ��63   �� *
rcAmount+
 �� UpdateSourceTrigger$
 PropertyChanged=� �� ValidatesOnDataErrors . 6M  �� 5    
   #��[  6   $��
Cr Account��64   $
��Left=�6I   $��29��6d   $��
11,103,0,0q�6p   $	��Top=�6�   $	��248��6�   �� 5!   
   -   5        $
 info��5!      ��.  #��[ 64   $��35��6S   $��11,167,342.2,0q�6_   $
	 Wrap=�6w   $�� ��6�   $	��Top=�6�   �� 5"   
   #��[  6   $��	Post Date��64   $��24��6H   $��11,-2,511,0q�6T   $	��Top=�6i   �� 5#   
   #��[  6   $��	Narration��64   $
��Left=�6H   $��27��6c   $��
11,256,0,0q�6o   $	��Top=�6�   $	��129��6�   �� 5$   
   #��[  6   $
��V.No��64   $
��Left=�6C   $��27��6^   $��
181,-2,0,0q�6j   $	��Top=�6~   $��71��6�   �� 5%   
   -   5        $ txt_rno��5%   W   ��.  #��[ 6%    �� 
IsReadOnly . $��181,22,365,0q�6j   $
	 Wrap=�6�   $�� ��6�   $	��Top=�6�   �� 5&   
   -   5        $ txt_narration��5&   `   $��6��64   #��[ 6A   $��11,283,221.2,103.6q�6w   $
	 Wrap=�6�    ' #Error_tenmp_Error_right_bottom_text# [ 6�   $
��Auto��6}  ��6�   �� *rcNarration+$
 PropertyChanged=� . 6}  �� 5'   
   -   5        $ txt_rnofind��5'   b   ��.  #��[ 6%   $��
363,25,0,0q�6w   $
	 Wrap=�6�   $�� ��6�   $ 0.288,0.458&�6�   $
��Left=�6�   $��44��6�   $��24��6�   $	��Top=�6�   �� 5(   
   -   5         ��Name$ btn_find��5(   3     Standard#��[ 6   $��
412,27,0,0q�6E   $
��Left=�6Y   $��24��6t   $��21��6   $	��Top=�6�   $ 0.583,0.524&�6�   ��5)      �� 5*       �� ImageSource$ images/search.ico��6   5,      �� 5-   
   -	   5        $ btn_save��5-   J   #��[ 6   $�� ��6^   $��Right=�6i   $��40��6�   $��Bottom=�6�   $��45��6�   $��0,0,498.2,13.6q�6�   $ 	0.4,0.543&�6�   ��5.      �� 5/      $ images/save.ico��6   51      �� 52   
   -
   5        $ 	btn_Reset��52   L   #��[ 6   $�� ��6_   $��0,0,548.2,13.6q�6l   $ -0.172,0.494&�6�   $��40��6�   $��Bottom=�6�   $��Right=�6�   $��45��6�   ��53      �� 54      $ images/clipboard.ico��6   56      �� 57   
   -   5        $ 
btn_update��57   M   #��[ 6   $�� ��6a   $��Right=�6l   $��40��6�   $��Bottom=�6�   $��45��6�   $��0,0,399.2,13.6q�6�   $ 
0.479,0.47&�6�   ��58      �� 59      $ images/tick.ico��6   5;      �� 5<   
   -   5        $ btn_del��5<   J   #��[ 6   $�� ��6[   $��0,0,349.2,13.6q�6h   $��40��6�   $��Bottom=�6�   $��Right=�6�   $��45��6�   ��5=      �� 5>      $ images/onebit_17.png��6   5@      �� 5A   
   -   5         ��Name$ cmb_cashaccount��5A   �    accounts#��[ 67   # [ 6�   $��1��65   �� SelectedItem$ SelectedAccount��6�   �� DisplayMemberPath$ 
Short_Name��6�   �� 
IsEditable . $��11,76,259,0q�6�  $	��Top=�6   �� Text 6�   �� *
rcCashAc+$
 PropertyChanged=� . ��6f  �� *
Accounts+6  �� 5B   
   -   5        $ cmb_craccount��5B   �  #��[ 65   # [ 6W   $��2��6�   $ SelectedAccount��6K  $ 
Short_Name��6j   . $��30��6�  $��11,132,342.2,0q�6�  $	��Top=�6�   6�   �� *rcCrAc+$
 PropertyChanged=� . ��6*  �� *
Accounts+6�  (  "System.Windows.Controls.DatePicker  5C   
   -   5          Name$ 	dtp_rdate��5C   Y   $��0��6   #��[ 6:   $	��Top=�6n   $��11,22,451,0q�6�   �� 5D   
   -   5        $ btn_movefirst��5D   h   #��[ 6    � ToolTip$ Show First Receipts��6J   $�� ��6�   $��
477,25,0,0q�6�   $ -0.421,0.583&�6�   $
��Left=�6�   $��27��6�   $��24��6  $	��Top=�6  ��63   Z� ��5E      �� 5F      $ images/down.png��6   -   5        
btn_login5��5F   ;   5J      �� 5K   
   -   5        $ btn_movenext��5K   4   #��[ 6   $ Show Next Receipts��6a   $ -0.421,0.583&�6�   $��
541,25,0,0q�6�   $
��Left=�6�   $��27��6�   $��24��6�   $	��Top=�6  ��6J   Z� ��5L      �� 5M      $ images/go.png��6   -   5        
btn_login2��5M   9   5O      �� 5P   
   -   5        $ btn_movelast��5P   �   #��[ 6   $ Show Last Receipts��6e   $�� ��6�   $��
571,25,0,0q�6�   $ -0.421,0.583&�6�   $
��Left=�6�   $��27��6�   $��24��6  $	��Top=�6  ��63   Z� ��5Q      �� 5R      $ images/up.png��6   -   5        
btn_login4��5R   9   5T      �� 5U   
   -   5        $ btn_moveprevious��5U   k   #��[ 6   $ Show Previous Receipts��6J   $��
509,25,0,0q�6�   $ -0.421,0.583&�6�   $
��Left=�6�   $��27��6�   $��24��6  $	��Top=�6  ��63   Z� ��5V      �� 5W      $ images/back.png��6   -   5        
btn_login1��5W   ;   5Y      �� 5Z   
   -   5        $ 	btn_print��5Z   D   #��[ 6   $ Print��63   $�� ��6q   $��Right=�6|   $��45��6�   $��0,0,448.2,13.6q�6�   $��40��6�   $��Bottom=�6�   ���	#FF9C9292��5[      �� 5\      $ images/print.ico��6   5^      �� 5_   
   -   5        $ btn_cash_report��5_   �   #��[ 6   $ Show Cash Report��6h   $�� ��6�   $��0,71,211.2,0q�6�   $ -0.421,0.583&�6�   $��Right=�6�   $��43��6�   $��40��6
  $	��Top=�6  ��63   Z� ��5`      �� 5a      $+ %images/Product-documentation-icon.png��6   -   5        
btn_login6��5a   Q   5c      �� 5d   
   -   5        $ btn_account��5d      #��[ 6   $ Show Cash Report��6d   $�� ��6�   $��0,130,210.2,0q�6�   $ -0.421,0.583&�6�   $��Right=�6�   $��43��6�   $��40��6  $	��Top=�6  ��63   Z� ��5e      �� 5f      $+ %images/Product-documentation-icon.png��6   -   5        
btn_login3��5f   Q   5h      �� 5i   
   -   5        $ txt_disc��5i     # [ 6m   $��5��6�   #��[ 6�   $��212,229,0,0q�6  $
	 Wrap=�6+  $
��Left=�6A  $��40��6\  $	��Top=�6i  $ 	0.475,0.5&�6�  ��6   �� *rcDisc+$
 PropertyChanged=� . 6�  �� 5j   
   -   5        $ txt_discamount��5j   �   # [ 6   $��6��6�   #��[ 6�   $��253,229,221.2,0q�6�   $
	 Wrap=�6�   $	��Top=�6O  ��6�   �� *	rcDAmount+$
 PropertyChanged=� . 6O  �� 5k   
   #��[  6   $��Discount��64   $
��Left=�6G   $��27��6b   $��213,202,0,0q�6n   $	��Top=�6�   $	��115��6�   �� 5l   
   -   5         ��Name$ tr_history_list��5l   ,   
�������  tr_History2#��[ 6b   $��Right=�6�   $	��179��6�   $��0,65,10.2,0q�6�   $	��Top=�6�   $	��177��6�   ��6E   �� *list+6�   �� 5m   
   -    5         ��Name$ 	taskgroup��5m      
�������$��Add to Task List��6@   $��123                    ��6Z   $��431,249,10.2,0q�5n      $	��Top=�6.   .��5o      ��  �� Orientation$ Vertical=�6   .+�5p      � 
������� � RowDefinitions 5q      �� 5r      $��23 �6(    � ColumnDefinitions 5t      �� 5u      �� 5w      �� 5x      .+�5{      �� -!   5         ��Name$ chk_isrecurr��5{   l   $��DemiBold"�6;   $��Center=�6Q   $��0��6�   $	��Yes��6�   $��0��6�   �� 5|      -"   5        $��btn_task_add��5|   �   #��[ 6   $��1��6?   $ Add/Update ��6j   $��0��6�   ��6�   Z� ��5}      �� 5~      $ images/check.png��6)    j� Stretch$ Uniform=�6I   5�      �� 5�      -#   5        $��btn_task_del��5�   |   #��[ 6   $ Remove��6?   $��2��6l   $�� ��6�   $��0��6�   ��6�   Z� ��5�      �� 5�      $ images/close.png��6)   $ Uniform=�6I   5�      5�      �� 5�      $��Label-Task Amount��6   #���   64   $��Center=�6V   
������6z   �� 5�      -$   5        $ txt_task_label��5�   2   
������$��26��6J   �� 5�      -%   5        $ txt_task_Amount��5�   6   
����İ�$��25��6O   5�      5�      �� 5�   
   -&   5        $ 	lst_tasks��5�   �   ��.  $��Stretch=�6S    	 Tasks#��[ 6x   
�������$��0,65,11.2,0q�6�   $��Right=�6  $	��176��6  $	��179��6)  $	��Top=�66  ��6�   �� 6N  �� 5�   
   -'   5        $ lbl_taskflag��5�   [   $- 'This is a Task, performed by TaskMaster��6)   $��
0,25,300,0q�6s   $ -0.421,0.583&�6�   $��Right=�6�   $��27��6�   $��24��6�   $	��Top=�6�   ��6   Z� ��5�      �� 5�      $ images/onebit_27.png��6   5�      �� 5�   
   -(   5        $ 
btn_report��5�   _   #��[ 6   $ Report��6M   $�� ��6u   $��Right=�6�   $��40��6�   $��Bottom=�6�   $��45��6�   $��0,0,299.2,13.6q�6�   $ 
0.45,0.429&�6�   ���	#FF978888��5�      �� 5�      $) #images/Places-folder-green-icon.png��6   5�      �� 5�   
   -)   5        #��[ 5�      $ Account Registration��64   $�� ��6S   $��40��6^   $��Bottom=�6j   $��0,0,249.2,13.6q�6�   $��Right=�6�   $��45��6�   ��5�      �� 5�      $ images/addressbook.ico��6   5�      �� 5�   
   $��Total��6   $��18(�6    #��[  6.   $
��Left=�6Q   $��36��6l   $��
10,341,0,0q�6x   $	��Top=�6�   $��78��6�   �� 5�   
   -*   5         ��Name$ 	txt_total��5�      $��18(�6'   
���  ��$��DemiBold"�6F    �� TextAlignment$ Right=�6]   $��Right=�6s   $��0,341,225.2,62.6q�6�   $
��Wrap=�6�   $
��0.00��6�   $	��221��6�   �� 5�   
   #��[  6   $��JInvoice��64   $
��Left=�6G   $��26��6b   $��282,148,0,0q�6n   $	��Top=�6�   $��64��6�   �� 5�   
   -+   5        $ cmb_jinv��5�   �   #��[ 60   $��3��6l    . $��0,175,221,0q�6�   $��27��6�   $	��Top=�6�   $��Right=�6�   $	��114��6  ��6|   �� 6  �� 5�   
   -,   5        $ btn_doc��5�   T   #���  6   $ Save as Word Document��64   $�� ��6e   $��0,0,199.2,13.6q�6q   $ 0.484,0.373&�6�   4  .System.Windows.Automation.AutomationProperties   IsOffscreenBehavior$ Onscreen=�6�   $��40��6  $��Bottom=�6  $��Right=�65  $��45��6Q  ��6�   Z� ��5�      �� 5�      $% images/Office-Word-icon (1).png��6   5�      �� 5�   
   --   5        $ btn_pdf��5�   J   #���  6   $ Save as PDF��64   $�� ��6[   $��0,0,149.2,13.6q�6|   $ 0.484,0.373&�6�   $ Onscreen=�6�   $��40��6  $��Bottom=�6  $��Right=�6+  $��45��6G  ��6�   Z� ��5�      �� 5�      $ images/pdf-icon (1).png��6   5�      �� 5�   
   -.   5        $ btn_xps��5�   J   #���  6   $ Save as XPS��64   $�� ��6[   $��0,0,99.2,13.6q�6g   $ 0.957,0.373&�6~   $ Onscreen=�6�   $��40��6  $��Bottom=�6  $��Right=�6*  $��45��6F  ��6�   Z� ��5�      �� 5�      $0 *images/Folders-OS-Documents-Metro-icon.png��6   5�      5�      5�      