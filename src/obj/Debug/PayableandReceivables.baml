   M S B A M L   `   `   `  ����E  Abookkeeper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:accountsaccounts  5   	   $    accounts.PayableandReceivables   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:accounts     5   	     � Icon$'  !images/Places-folder-txt-icon.png��5       � Title$ Payable and Receivables��5	   	   $	��465��6)   $��639.219��66   
�����f� � WindowStartupLocation$ CenterOwner=�6d    � 
ResizeMode$ CanMinimize=�6�   .��5      � $��0,0,0,1q�6   .+�5   
   �� $	��304��6   $��10,42,9.8,0q�6    $	��Top=�65    �� View 5      �� 5      .P�5      �� 5      5      �� 5   
   -   5         ��Name$ 	CMB_CRACC��5   .   	  NewUI#��[  6    ' #Error_tenmp_Error_right_bottom_text =� ErrorTemplate# [ 6�   $��1��6   �� 
IsEditable . $
��Left=�6A  $��	52,10,0,0q�6^  $	��Top=�6q  $	��181��6�   �� Text 62   �� *jpCrAc+	 �� UpdateSourceTrigger$	 PropertyChanged=�
 �� ValidatesOnDataErrors
 . 6�  �� 5   
     LabelUI#��[ 6   $��Filter��64   $
��Left=�6E   $��27��6`   $��	10,10,0,0q�6l   $	��Top=�6   $��66��6�   �� 5   
   -   5         ��Name$ refresh_data��5   K     Standard#��[ 6    � ToolTip$ Refresh Data��64   $�� ��6a   $��10,351,544.8,7.2q�6m    J� RenderTransformOrigin$ 0.484,0.373&�6�   4  .System.Windows.Automation.AutomationProperties   IsOffscreenBehavior$ Onscreen=�6�   ��6�   Z� ��6�   Z� ��5      �� 5       �� ImageSource$ images/onebit_12.png��6    j� Stretch$ UniformToFill=�6@   5      �� 5   
   $��0,351,9.8,7.2q�6   
�������$��Right=�6E   $	��173��6a   .+�5      �� -   5         ��Name$ lblcr��5      
�������$
��0.00��68   
������  �� TextAlignment$ Right=�6]   $��14(�6s   $��0q�6�   $��0,0,10,0q�6�   �� 5      -   5        $ lbldr��5   ,   
����  �$
��0.00��6;   
������ $ Right=�6`   $��14(�6v   $��0q�6�   $��	0,0,9.8,0q�6�   �� 5      -   5        $ 
lblbalance��5      $
��0.00��6*   $
��Bold"�66   
������ $ Right=�6a   $��21(�6w   $��0q�6�   $��0,0,10,0q�6�   $��28��6�   5      5!      5"      