   M S B A M L   `   `   `  ����E  Abookkeeper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:accountsaccounts  5   	       accounts.PackageManager   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:accounts     5   	   
����ح�  � Title$  Package Manager��5   	   $��383.333��6!   $��811.2��62    � WindowStartupLocation$ CenterOwner=�6@    � 
ResizeMode$ CanMinimize=�6d    � WindowStyle$ 
ToolWindow=�6}   .��5	      � $��0,0,-0.4,3.4q�6   $
��Left=�6!   $	��794��6<   .+�5   
   �� $��Package Name��6   $��DemiBold"�6'   $
��Left=�6=   $��35��6X   $��10,0,0,0q�6d   $	��Top=�6v   $	��268��6�   �� 5   
   -   5         ��Name$ txt_new_package��5   %    �� 
IsEditable .  	  NewUI#���   6>     combo_item_emp#���  6^   $
��Left=�6�   $��35��6�   $��	10,31,0,0q�6�   $	��Top=�6�   $	��268��6�    J� RenderTransformOrigin$ 0.318,0.385&�6�   .@�5      �� .��6   	VERSION6$   �� 5      .��6   
LICENCEKEY6'   �� 5      .��6   	PACKAGE6$   �� 5      .��6   
CONFIGDATE6'   �� 5      .��6   LUDATE6#   �� 5      .��6   	DEVELOPER6&   �� 5      .��6   IP6   �� 5      .��6   LICENSEDATE6(   �� 5      .��6   EMAIL6"   �� 5      .��6   	PHONENO6$   �� 5      .��6   	EXPDATE6$   �� 5      .��6   	COUNTRY6$   5      �� 5   
   $��Package Parameter��6   $��DemiBold"�6,   $
��Left=�6B   $��33��6]   $��	10,66,0,0q�6i   $	��Top=�6|   $	��243��6�   �� 5   
   -   5         ��Name$ txt_pack_parameter��5      $
��Left=�6.   $��35��6I   $��	10,99,0,0q�6U    �� TextWrapping$
 Wrap=�6h   $	��Top=�6~   $	��268��6�   $ 0.395,0.543&�6�   �� 5   
   $��DemiBold"�6   $��Parameter Value��6&   $
��Left=�6@   $��33��6[   $��
10,133,0,0q�6g   $	��Top=�6{   $	��219��6�   �� 5   
   -   5        $ txt_parameter_value��5      $
��Left=�6/   $��35��6J   $��
10,166,0,0q�6V   $
 Wrap=�6j   $	��Top=�6�   $	��268��6�   �� 5   
   -   5        	 ��Name$	 
btn_update��5      $��Update Package��6>   $
��Left=�6W   $��39��6r   $��
64,206,0,0q�6~   $	��Top=�6�   $	��143��6�   �� 5    
   -   5        
 ��Name$
 txt_id��5       $
��Left=�6$   $��35��6?   $��
346,17,0,0q�6K   $
��Wrap=�6_   $�� ��6s   $	��Top=�6{   $��35��6�   &   System.Windows.Controls.DataGrid  5!   
   -   5          Name$ rep_grid��5!   �      GridLinesVisibility$
 None=�6      AlternatingRowBackground
 �����  BPAYRGHeaderStyle#��[ 6�   $��289,30,8,110q�6�      AutoGenerateColumns .     Columns 5"      0  *System.Windows.Controls.DataGridTextColumn  5%         
Foreground
 �   �,  &System.Windows.Controls.DataGridColumn   Header$ Package Name��68      Width5  /System.Windows.Controls.DataGridLengthConverter$	 160 6N   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6Z   �� *PName+  5&      
 �   �$ 	Parameter��68   $	 160 6K    6W   �� *	Parameter+  5'      
 �   �$ Value��68   $	 160 6G    6S   �� *Pvalue+50      �� 51   
   -   5        $	 bt_clearBoxes��51   &   $��
ClearBoxes��6   $
��Left=�6Z   $��42��6u   $��
64,250,0,0q�6�   $	��Top=�6�   $	��143��6�   $ 
0.407,0.86&�6�   �� 52   
   -   5        $	 bt_clear��52   $   $��ClearAll��6   $
��Left=�6N   $��42��6i   $��
64,297,0,0q�6u   $	��Top=�6�   $	��143��6�   �� 53   
   -	   5        $	 btn_save��53   (   $
��Save��6:   $
��Left=�6I   $��42��6d   $��512,291,0,0q�6p   $	��Top=�6�   $	��270��6�   $ 0.5,0.5&�6�   z�54      V� 55      .~�56      �� �� 57      �� 58       �� Angle$ 0.125Q�6&   T� 59      5:      5<      �� 5=   
   -
   5        $	 btn_load��5=      $
��Load��6:   $
��Left=�6I   $��44��6d   $��289,290,0,0q�6p   $	��Top=�6�   $	��218��6�   �� 5>   
   -   5        $��	cmb_files��5>       
 Combo+#���  6$    . $��32��6|   $��365,246,10,0q�6�   $	��Top=�6�   ��6R   �� 6�   �� 5?   
   $��DemiBold"�6   $��Package Files��6&   $
��Left=�6>   $��33��6Y   $��283,245,0,0q�6e   $	��Top=�6z   $��82��6�   5A      5B      