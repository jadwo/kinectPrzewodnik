   M S B A M L   `   `   `  ����E  APrzewodnik, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Przewodnik.ControlsPrzewodnik.Controls  5   	   ;"clr-namespace:Przewodnik.UtilitiesPrzewodnik.Utilities  5   	   _ [Microsoft.Kinect.Toolkit, Version=1.8.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35eHclr-namespace:Microsoft.Kinect.Toolkit;assembly=Microsoft.Kinect.ToolkitMicrosoft.Kinect.Toolkit 5   	       Przewodnik.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   h dMicrosoft.Kinect.Toolkit.Controls, Version=1.8.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e352k(http://schemas.microsoft.com/kinect/2013   5   	   +c!clr-namespace:Przewodnik.Controls   5   	   ,u"clr-namespace:Przewodnik.Utilities   5   	   StkHclr-namespace:Microsoft.Kinect.Toolkit;assembly=Microsoft.Kinect.Toolkit   5   	     � Title$  Przewodnik turystyczny��5   	    � WindowState$ 	Maximized=�5	   	   $
��1920��5
   	   $
��1080��5   	    � WindowStyle$
 None=�5   	    � Cursor$
 None��5   	    � 	Resources 5         EngagedUserColor �� A �� R �� G �� B  TrackedUserColor  EngagedUserMessageBrush	 �� Color  TrackedUserMessageBrush % !PostEngagementBackgroundUserColor % !PostEngagementBackgroundUserBrush  HandoffTextTemplate  HandoffButtonContent��%M  &	        &	 J     &	 �     &	 �     &	 �     &	 $    7  &	 <    &	 �   �� 5   
   $	 #80��6)   $	 #51��61   $	 #1C��69   $	 #74��6A   �� 5   
   $	 #80��6)   $	 #00��61   $	 #BC��69   $	 #F2��6A   �� 5   
   $	 	#FF511C74��6:   �� 5   
   $	 	#FF00BCF2��6:   �� 5   
   $	 #80��6:   $	 #BC��6B   $	 #BE��6J   $	 #C0��6R   �� 5   
   8	   6D   �� 5   
   .R�5      �� $
��Wrap=�6)   $��30(�6=   
�������$��25 10q�6^   $��Center=�6m   $
��Left=�6�   ��6   �� 6�   5      � 5   
   
������ $��Center=�6V   $��Center=�6s   .+�5      �� .+�5      �� $��Center=�6   
�������$��36(�6L   $��0q�6Z   $��
Press Here��6e   �� 5      $��Center=�6   
�������$��24(�6L   $��0 5 0 0q�6Z   $��To take control��6k   5      5      5      .��5       � -   5        $��
TopTopGrid��5       .+�5!   
   4  .Microsoft.Kinect.Toolkit.Controls.KinectRegion  -   5        $��kinectRegion��5"      
   KinectSensor
 5#      �� *KinectSensorChooser.Kinect+   IsCursorVisible 5$      �� *IsUserActive+)   "QueryPrimaryUserTrackingIdCallback 5%      �� *QueryPrimaryUserCallback+.��5&      � .+�5)      �� $	��128��6   $��96��6%   $	��Top=�61   #��[ 6I   $��1q�6�   y�5*      �� *IsUserEngaged+ * &InvertibleBooleanToVisibilityConverter �� 	Converter# [ ._�5+      8  2Microsoft.Kinect.Toolkit.Controls.KinectUserViewer     DefaultUserColor# [ 6)      UserColoringMode$ Manual=�6o      ImageBackground
 ����    
UserColors 6�   �� *PostEngagementUserColors+6�   5,      � 5.       � RowDefinitions 5/      �� 50      -   5         �Name$ TopRow��50   5   $	��150 �6(   65   �� 51      $��* �6(    � ColumnDefinitions 53      �� 54      $	��150 �6+   �� 55      $��* �6+   .+�57      :  4Microsoft.Kinect.Toolkit.Controls.KinectCircleButton  -   5        $��
BackButton��57   +   $��0��6=   $��0��6J   $	��150��6Z   $	��150��6f   ���	#FF52318F.��58      �� .+�59      �� $��/Content/back.png��6$   6A   5:      5;      � 5=      -   5        $��PageContentGrid��5=      $��1��62   $��2��6?   6U   5?      5A      5B      4  .Microsoft.Kinect.Toolkit.KinectSensorChooserUI  5C   
   $��Center=�6W      IsListening .  $��0 0 0 5q�6�      KinectSensorChooser 6#   �� *KinectSensorChooser+6�   5D      5E      