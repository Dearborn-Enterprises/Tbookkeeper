   M S B A M L   `   `   `  ����E  Abookkeeper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:accountsaccounts  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   WindowColor  ContentAreaColorLight  ContentAreaColorDark  DisabledControlLightColor  DisabledControlDarkColor  DisabledForegroundColor  SelectedBackgroundColor  SelectedUnfocusedColor  ControlLightColor 	 ControlMediumColor 
 ControlMediumColor2  ControlDarkColor  ControlMouseOverColor  ControlPressedColor  
GlyphColor  GlyphMouseOver  BorderLightColor  BorderMediumColor  BorderDarkColor  PressedBorderLightColor  PressedBorderDarkColor  DisabledBorderLightColor  DisabledBorderDarkColor  DefaultBorderBrushDarkColor  HeaderTopColor " DatagridCurrentCellBorderColor  SliderTrackDarkColor  NavButtonFrameColor  MenuPopupBrush  �� EndPoint �� 
StartPoint � Color � Offset $  ProgressBarIndicatorAnimatedFill  ComboBoxToggleButton �� 
TargetType � ColumnDefinitions'   !System.Windows.VisualStateManager    VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   Name	   
Storyboard
 �� TargetProperty �� 
TargetName8  2System.Windows.Media.Animation.EasingColorKeyFrame �� KeyTime �� Value ��Name �� CornerRadius �� Color F�Name  ComboBoxTextBox �� Triggers P� Property P� Value �� Value �� Property   MyComboxItem �� 
TargetType �� Padding J� SnapsToDevicePixels ! 
MyComboBox R� KeyTime  System.Windows.Visibility   Visible R� Value   Hidden d�Name �� 	ClickMode  d� 	IsChecked! �� Mode" �� RelativeSource# ��Name$ J� IsHitTestVisible% �� SelectionBoxItem& �� SelectionBoxItemTemplate' ��Name( �� 
IsReadOnly) �� 
IsReadOnly* �Name+ �� IsDropDownOpen, � AllowsTransparency- �Name. � ActualWidth/ �� MaxDropDownHeight0 K� IsItemsHost-  'System.Windows.Input.KeyboardNavigation1   DirectionalNavigation2 �� 
TargetName3 P� 
SourceName�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5       localclr-namespace:accounts  5      %�  &	        &	 !     &	 B     &	 c     &	 �     &	 �     &	 �     &	 �     &	     &		 %    &	
 F    &	 h    &	 �    &	 �    &	 �    &	 �    &	 /    &	 P    &	 q    &	 �    &	 �    &	 �    &	 �    &	     &	 3    &	 T    &	 q    &	 �    &	 �    &	 z    &	 �    7 
 7  7  7  7  7  &	 $    7 
 &	  �    7  7  &	! h    7   7  7  7  ��5      	#FFE8EDF9��6+   ��5      	#FFC5CBF9��65   ��5      	#FF7381F9��64   ��5	      	#FFE8EDF9��69   ��5
      	#FFC5CBF9��68   ��5      	#FF888888��67   ��5      	#FFC5CBF9��67   ��5      	#FFDDDDDD��66   ��5      	White��6-   ��5      	#FF7381F9��62   ��5      
LightGreen��64   ��5      	#FF211AA9��60   ��5      	#FF3843C4��65   ��5      	#FF211AA9��63   ��5      	#FF444444��6*   ��5      /+sc#1, 0.004391443, 0.002428215, 0.242281124��6P   ��5      	#FFCCCCCC��60   ��5      	#FF888888��61   ��5      	#FF444444��6/   ��5!      	#FF888888��67   ��5"      	#FF444444��66   ��5$      	#FFAAAAAA��68   ��5%      	#FF888888��67   ��5'      	Black��67   ��5*      	#FFC5CBF9��6.   ��5+      	Black��6:   ��5,      	#FFC5CBF9��64   ��5.      	#FF3843C4��63   �� 5<      $  0.5,1&�5=      $ 0.5,0&�5>      .��5?   
   � # �  6   $ 0Q�5@      � 5A   
   # � 	 6   $	 0.5Q�5B      � 5C   
   # �  6   $ 1Q�5D      5E      �� 5G      $	 0,0&�5H      $	  1,0&�5I      ��5K      � � 5L      $ 	#000000FF��6   $ 0Q�5M      � 5N      $ 	#600000FF��6   $	 0.4Q�5O      � 5P      $ 	#600000FF��6   $	 0.6Q�5Q      � 5R      $ 	#000000FF��6   $ 1Q�5S      5T      5V      �� 5Y      " d�5Z      .R�5[   
   �  5\      �� 5]      �� 5^      $��20 �6#    5`        5a      CommonStates��. 5b        
Normal��6"     5c      $ Focused��6"   .	 5d      �� .��5e      �� $_
 Y(Panel.Background).                 (GradientBrush.GradientStops)[1].(GradientStop.Color)�6;   $ Border��5g   +   .g�5h   "     $ 0��66   8   5i   $   5j      5k      5l        5m      	MouseOver��.	 5n      �� .��5o      �� $_
 Y(Panel.Background).                 (GradientBrush.GradientStops)[1].(GradientStop.Color)�6;   $ Border��5q   +   .g�5r   "     $ 0��66   8  5s   $   5t      5u      5v        5w      Pressed��6"     5x      Disabled��.	 5y      �� .��5z      �� $_
 Y(Panel.Background).                 (GradientBrush.GradientStops)[1].(GradientStop.Color)�6;   $ Border��5|   +   .g�5}   "     $ 0��66   8  5~   $   5      �� 5�      $;
 5(Shape.Fill).                 (SolidColorBrush.Color)�6;   $ Arrow��5�   +   .g�5�   "     $ 0��66   8  5�   $   5�      �� 5�      $a
 [(Border.BorderBrush).                 (GradientBrush.GradientStops)[1].(GradientStop.Color)�6;   $ Border��5�   +   .g�5�   "     $ 0��66   8  5�   $   5�      5�      5�      5�        5�      CheckStates��. 5�        Checked��.	 5�      �� .��5�      �� $_
 Y(Panel.Background).                 (GradientBrush.GradientStops)[1].(GradientStop.Color)�6;   $ Border��5�   +   .g�5�   "     $ 0��66   8  5�   $   5�      5�      5�        5�      	Unchecked��6"     5�      Indeterminate��6"   5�      .+�5�      �� $ Border��6   $��2��5�      $ 2��5�      $��1q�5�      ��5�      �� 5�      $	  0,1&�6*   $	 0,0&�5�      .��5�      � # �  6'   $ 0Q�5�      � 5�      # �  6'   $ 1Q�5�      5�      ��5�      �� 5�      $	 0,0&�6*   $	  0,1&�5�      ��5�      � � 5�   "   # �  6/   � 5�   "   # � 	 6/   $	 1.0Q�5�      5�      5�      5�      �� 5�      $��0��6   $ 2,0,0,2��5�      $��1q�5�      ��5�      �� 5�      # �  6&   5�      F� 5�      $ Arrow��6   $��1��5�      $��Center=�5�      $��Center=�5�      "����        � 	=  	= � z     	��5�      �� 5�      # �  6&   5�      5�      5�      �� 5�      " ��5�      .R�5�   
   �� $ PART_ContentHost��6   |�. #��z��5�       5�   
   P� 5�       �@J�	IsFocused . . �5�      �� 8    � ��6/   5�      5�      �� 5�      " ��5�      .�5�   
   ��  �@J�SnapsToDevicePixels . 5�      �� 5�   
    �@�OverridesDefaultStyle . 5�      �� 5�   
    � �� 5�      �� 5�      " ��6"   .R�5�      �� $ Border��6   $ 2q�5�       . 
������  5�        5�      SelectionStates��. 5�   "     
Unselected��6.     5�   "   Selected��.	 5�   &   �� .��5�   *   �� $ Border��6G   $E
 ?(Panel.Background).                     (SolidColorBrush.Color)�5�   1   .g�5�   .     $ 0��6B   8   5�   *   5�   +   5�   '   5�   #     5�   "   SelectedUnfocused��.	 5�   &   �� .��5�   *   �� $ Border��6G   $E
 ?(Panel.Background).                     (SolidColorBrush.Color)�5�   1   .g�5�   .     $ 0��6B   8  5�   *   5�   +   5�   '   5�   #   5      ._�5     �� 5     5     5     5     �� 5
     " ��5     .�5  
   ��  �@��
IsEditable . 6'   �� 5  
    �@J�SnapsToDevicePixels . 5     �� 5  
    �@�OverridesDefaultStyle . 5     �� 5  
    � ��$
 Auto=�5     �� 5  
    � ��$
 Auto=�5     �� 5  
    � �� . 5     �� 5  
    � ��$	 120��5     �� 5  
    � ��$ 20��5     �� 5  
    � ��8   6/   �� 5  
    � �� 5     �� 5     " ��6"   .R�5     �  5        5!     CommonStates��. 5"  "     
Normal��6.     5#  "   	MouseOver��6.     5$  "   Disabled��.	 5%  &   �� .��5&  *   �� $ PART_EditableTextBox��6G   $M
 G(TextElement.Foreground).                       (SolidColorBrush.Color)�5'  1   .g�5)  .     $ 0��6B   8  5*  *   5+  +   5,  '   5-  #   5.       5/     
EditStates��. 50  "     Editable��.	 51  &   �� .��52  *   T� $
 (UIElement.Visibility)�6H   $ PART_EditableTextBox��53  2   ..�54  .   i� $ 0��6E   # Z 55  -   56  +   T� 57  *   $
 (UIElement.Visibility)�58     $ ContentSite��59  2   ..�5:  .   i� $ 0��6E   # Z 5;  -   5<  +   5=  '   5>  #     5?  "   
Uneditable��6.   5@     .+�5B     d� $ ToggleButton��6'   8�� $��2��5D     |�.  $ Press=�5F       5H     �� *IsDropDownOpen+$! TwoWay=�" �� *TemplatedParent+�� 5J     $# ContentSite��6+   $ .  #��z% 5L     #��z& 5M     #��z��5N     $��3,3,23,3q�5O     $��Stretch=�5P     $
��Left=�5Q     5R     �� 5S     $' PART_EditableTextBox��6"   8�� $
��Left=�5V     $��Bottom=�5W     $��3,3,23,3q�5X     |�. 
������ $y�Hidden=�5[     #) z( 5\     ��5T     Z� 5\     � 5]     $* Popup��6    $��Bottom=�5^     #��z+ 5_     , . |�.  $��Slide=�5b     .��5c     � $- DropDown��6#    . #��z. 5e     #��z/ 5f     .+�5g  "   �� $ DropDownBorder��6)   $��1q�5h     ��5i  &   �� 5j  *   # �  6:   ��5l  &   �� 5m  *   # �  6:   5o  #   �� 5p  "   $��4,6,4,6q�6/    . .��5r  &   �� 0 . $1 	Contained=�5s     5t  #   5u     5v     5w      5x     P� 5y      �@��HasItems .  . �5{     �� $2 DropDownBorder��6%    � ��$ 95��5}     5~     P� 5      �@��
IsGrouping . . �5�     ��  � �� .  5�     5�     P� 5�     $3 Popup��6"    �@�AllowsTransparency . . �5�     �� $2 DropDownBorder��6%    �@��CornerRadius$ 4��5�     �� 5�     $2 DropDownBorder��6%    � ��$ 0,2,0,0q�5�     5�     5�     5�     5�     5�     