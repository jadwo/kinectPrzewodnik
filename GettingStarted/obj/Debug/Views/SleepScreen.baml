   M S B A M L   `   `   `  ����E  APrzewodnik, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Przewodnik.ControlsPrzewodnik.Controls  5      ;"clr-namespace:Przewodnik.UtilitiesPrzewodnik.Utilities  5      "    Przewodnik.Views.SleepScreen   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      h dMicrosoft.Kinect.Toolkit.Controls, Version=1.8.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35_ [Microsoft.Kinect.Toolkit, Version=1.8.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e352k(http://schemas.microsoft.com/kinect/2013   5      +c!clr-namespace:Przewodnik.Controls   5      ,u"clr-namespace:Przewodnik.Utilities   5      -   5        $��SleepScreenGrid��5      $��Stretch=�5	      $��Stretch=�5
      
���   �  � 	Resources  5       $   PreEngagementBackgroundUserColor �� A �� R �� G �� B��%T   &	        �� 5   
   $	 #80��69   $	 #40��6A   $	 #43��6I   $	 #46��6Q   5      '  !System.Windows.VisualStateManager   VisualStateGroups 5      %  System.Windows.VisualStateGroup  5   
   -   5        NavigationStates1��   States. 5         System.Windows.VisualState  -   5        Normal1��5        5      -   5        NavigatedTo1��   
Storyboard. 5      �� .��5      U�  g� 	BeginTime$ 00:00:00X�64   	 �� 
TargetName$	 AttractCarousel1��6I   
 �� TargetProperty$
 (UIElement.Opacity)�5   I   .\�5      ��  O� KeyTime$ 00:00:00��6/    O� Value$ 0Q�6B   �� 5      $ 00:00:01.500��6/   $ 1Q�6F   5      5       5!        5#      -   5        NavigatedFrom1��5#      5%        5&   
   -   5        NavigationStates2��. 5(        -   5        Normal2��5(        5*      -   5        NavigatedTo2��. 5+      �� .��5,      U� $ 00:00:00X�64   $	 AttractCarousel2��6I   $
 (UIElement.Opacity)�5-   I   .\�5.      �� $ 00:00:00��6/   $ 0Q�6B   �� 5/      $ 00:00:01.500��6/   $ 1Q�6F   50      51      52        54      -	   5        NavigatedFrom2��54      56        57   
   -
   5        NavigationStates3��. 59        -   5        Normal3��59        5;      -   5        NavigatedTo3��. 5<      �� .��5=      U� $ 00:00:00X�64   $	 AttractCarousel3��6I   $
 (UIElement.Opacity)�5>   I   .\�5?      �� $ 00:00:00��6/   $ 0Q�6B   �� 5@      $ 00:00:01.500��6/   $ 1Q�6F   5A      5B      5C        5E      -   5        NavigatedFrom3��5E      5G        5H   
   -   5        NavigationStates4��. 5J        -   5        Normal4��5J        5L      -   5        NavigatedTo4��. 5M      �� .��5N      U� $ 00:00:00X�64   $	 AttractCarousel4��6I   $
 (UIElement.Opacity)�5O   I   .\�5P      �� $ 00:00:00��6/   $ 0Q�6B   �� 5Q      $ 00:00:01.500��6/   $ 1Q�6F   5R      5S      5T        5V      -   5        NavigatedFrom4��5V      5X        5Y   
   -   5        NavigationStates5��. 5[        -   5        Normal5��5[        5]      -   5        NavigatedTo5��. 5^      �� .��5_      U� $ 00:00:00X�64   $	 AttractCarousel5��6I   $
 (UIElement.Opacity)�5`   I   .\�5a      �� $ 00:00:00��6/   $ 0Q�6B   �� 5b      $ 00:00:01.500��6/   $ 1Q�6F   5c      5d      5e        5g      -   5        NavigatedFrom5��5g      5i        5j   
   -   5        NavigationStates6��. 5l        -   5        Normal6��5l        5n      -   5        NavigatedTo6��. 5o      �� .��5p      U� $ 00:00:00X�64   $	 AttractCarousel6��6I   $
 (UIElement.Opacity)�5q   I   .\�5r      �� $ 00:00:00��6/   $ 0Q�6B   �� 5s      $ 00:00:01.500��6/   $ 1Q�6F   5t      5u      5v        5x      -   5        NavigatedFrom6��5x      5z      .+�5}      � -   5        $��InstagramGrid��5}      $��Center=�6    $��Center=�6=    � RowDefinitions 5~   
   �� 5      $
��Auto �6   6,   �� 5�      $
��Auto �6   6,    � ColumnDefinitions 5�   
   �� 5�      $
��Auto �6   6.   �� 5�      $
��Auto �6   6.   �� 5�      $
��Auto �6   6.   .+�5�   
   �� -   5         ��Name$ AttractCarousel1��5�      $��0��5�      $��0��5�      ��5�      �� *CurrentImage1+5�      �� 5�   
   -   5        $ AttractCarousel2��5�      $��0��5�      $��1��5�      ��5�      �� *CurrentImage2+5�      �� 5�   
   -   5        $ AttractCarousel3��5�      $��0��5�      $��2��5�      ��5�      �� *CurrentImage3+5�      �� 5�   
   -   5        $ AttractCarousel4��5�      $��1��5�      $��0��5�      ��5�      �� *CurrentImage4+5�      �� 5�   
   -   5        $ AttractCarousel5��5�      $��1��5�      $��1��5�      ��5�      �� *CurrentImage5+5�      �� 5�   
   -    5        $ AttractCarousel6��5�      $��1��5�      $��2��5�      ��5�      �� *CurrentImage6+5�      5�      '   !Przewodnik.Controls.PromptControl  5�        ContentFade#��[ 5�   	      State 5�   	   �� *IsUserActive+ �� ConverterParameter$ False�� + 'InvertibleBooleanToPromptStateConverter �� 	Converter# [ .��5�   
   8  2Microsoft.Kinect.Toolkit.Controls.KinectUserViewer     DefaultUserColor# [  5�         UserColoringMode$ Manual=�5�         ImageBackground
 ���� $��Stretch=�5�      $��Stretch=�5�         
UserColors 5�      �� *PreEngagementUserColors+5�      5�        5�         Text$% Podnieś rękę aby rozpocząć��5�   	   
�������  KinectPurpleBrush#��[ 5�   	     StartBanner#��[ 5�   	    5�   	   �� *StartBannerState+  5�      #��[ 5�        EngagementConfirmation#��[ 5�       5�      �� *EngagementConfirmationState+.��5�   
   8  2Microsoft.Kinect.Toolkit.Controls.KinectTileButton  #��[ 6   $	��330��6M   $	��330��6Y   $��Center=�6f   $��Center=�6�   $��0q�6�   /   )Przewodnik.Utilities.CommandOnEventHelper   AssociationEntry 5�      4   .Przewodnik.Utilities.CommandOnEventAssociation  5�         Event$ Click��6`      Command 6.   �� *EngagementConfirmationCommand+6`   .��5�      � .+�5�      �� $��Center=�5�      $��Center=�5�      
������ $��40(�5�      
�������$
��Wrap=�5�      $��Wciśnij aby rozpocząć��5�      5�      5�      5�      5�      