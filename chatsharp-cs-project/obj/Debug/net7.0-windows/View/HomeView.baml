   M S B A M L   `   `   `  ����O  Kchatsharp-cs-project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:chatsharp_cs_project.Viewchatsharp_cs_project.View  5      O,clr-namespace:chatsharp_cs_project.ViewModelchatsharp_cs_project.ViewModel  5      (    "chatsharp_cs_project.View.HomeView   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:chatsharp_cs_project.View     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a?	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks   6D   X	 TFontAwesome.Sharp, Version=6.2.1.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp 	 5      <	viewmodel,clr-namespace:chatsharp_cs_project.ViewModel 	 5        � 	Resources  5       �� DataType6  0chatsharp_cs_project.ViewModel.HomePageViewModel,   &chatsharp_cs_project.View.HomePageView9  3chatsharp_cs_project.ViewModel.ViewProfileViewModel/   )chatsharp_cs_project.View.ViewProfileView5  /chatsharp_cs_project.ViewModel.FriendsViewModel+   %chatsharp_cs_project.View.FriendsView6  0chatsharp_cs_project.ViewModel.MessagesViewModel,   &chatsharp_cs_project.View.MessagesView4	  .chatsharp_cs_project.ViewModel.GroupsViewModel*
   $chatsharp_cs_project.View.GroupsView6  0chatsharp_cs_project.ViewModel.SettingsViewModel,   &chatsharp_cs_project.View.SettingsView��%�  (��       5      *, +)(�� 2     5      *, +)(�� d     5      *, +)(�� �     5      *, +)(�� �     5      *,	 +)(�� �     5      *, +)�� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      �� 5   
   " 	 6   .R�5      
  5      �� 5   
   "  6   .R�5        5      5      .��5!      ��  �� CornerRadius$ 10��6   $��1q�5"   	   ��5$   
   �� 5%       �� 
StartPoint$	 0,0&�6"    �� EndPoint$	 1,1&�63   .��5&      �  � Color$ #252525��6    � Offset$ 0Q�6/   � 5'      $ #36393f��6   $	 0.5Q�6/   5(      ._�5+   
   �  � ColumnDefinitions 5,      �� 5.      $	��250 �6#   �� 50      $��* �6#   .+�54      �� $ 	10,0,0,10��6   $��0��6.   ��55      �� 56      $	 0,0&�6*   $ 1,0.7&�6;   .��57      � $ #252525��6'   $ 0Q�67   � 58      $ #36393f��6'   $ 1Q�67   59      ._�5<      �� .+�5>      ��  �� Orientation$ 
Horizontal=�6!   $��35��5?   !   $��
15,25,0,40q�5@   !   .+�5A      �� $l��fC:\Users\Dani Jurma\source\repos\chatsharp-cs-project\chatsharp-cs-project\Images\LogoFinalVersion.png��6    $��30��6�   �� 5B      $��	ChatSharp��6$   
�������$��25(�5D   $   $��
Montserrat)�5E   $   $��
ExtraLight"�5F   $   $��16,5,0,0q�5G   $   5I      �� 5J      $��6q�6   
�������$��	0 -45 0 0q�6E   $��1��6X   	� 5M         
menuButton#��[  6"   
	 � Tag$	 White��5N   "   
 d� 	IsChecked$

 TrueY�5O   "   ��5P   "   �� *ShowHomeViewCommand+.��5Q      �� $ 
Horizontal=�6%   .+�5R      ! 	 FontAwesome.Sharp.IconImage  � 	 �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.2.1.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$
 Home=�6+     menuButtonIcon#��[ 67   �� 5S      $
��Home��6(     menuButtonText#��[ 64   5T      5U      	� 5W      #��[  6"   $	 White��5X   "   ��5Y   "   �� *ShowFriendsViewCommand+.��5Z      �� $ 
Horizontal=�6%   .+�5[        $ UserFriends=�6+   #��[ 6>   �� 5\      $��Friends��6(   #��[ 67   5]      5^      	� 5`      #��[  6"   $	 White��5a   "   ��5b   "   �� *ShowMessagesViewCommand+.��5c      �� $ 
Horizontal=�6%   .+�5d        $ Message=�6+   #��[ 6:   �� 5e      $��Messages��6(   #��[ 68   5f      5g      	� 5i      #��[  6"   $	 White��5j   "   ��5k   "   �� *ShowGroupsViewCommand+.��5l      �� $ 
Horizontal=�6%   .+�5m        $ 
LayerGroup=�6+   #��[ 6=   �� 5n      $��Groups��6(   #��[ 66   5o      5p      	� 5r      #��[  6"   $	 White��5s   "   ��5t   "   �� *ShowSettingsViewCommand+.��5u      �� $ 
Horizontal=�6%   .+�5v        $ Tools=�6+   #��[ 68   �� 5w      $��Settings��6(   #��[ 68   5x      5y      5{      5|      �� 5~      $ 	0,10,10,0��6   $��1��6.   ��5      �� 5�      $	 1,1&�6*   $	 0,0&�6;   .��5�      � $ #252525��6'   $ 0Q�67   � 5�      $ #36393f��6'   $ 1Q�67   5�      ._�5�      �  � RowDefinitions 5�      �� 5�      $��25 �6(   �� 5�      $��35 �6(   �� 5�      $��* �6(   .+�5�      �� -   5         ��Name$ panelControlBar��5�   !   $��0��5�   !   $ 
Horizontal=�5�   !   $��RightToLeft=�5�   !   
������ $��0,0,5,0q�5�   !   .+�5�      �� -   5         ��Name$ buttonClose��5�   !     controlButton#��[ 5�      $	 White��5�      $��Right=�5�      $��	0 10 0 0 q�5�      .��5�        $ Xmark=�6'     controlButtonIcon#��[ 64   5�      �� 5�      -   5        $ buttonMaximize��5�      #��[ 5�      $	 White��5�      $��Right=�5�      $��
0 10 30 0 q�5�      .��5�        $ Square=�6'   #��[ 65   5�      �� 5�      -   5        $ buttonMinimize��5�      #��[ 5�      $	 White��5�      $��Right=�5�      $��-30 10 60 0 q�5�      .��5�        $ WindowMinimize=�6'   $��12��6=   #��[ 6H   5�      5�      � 5�      $��1��6    5�      �� 5�      �� 5�      .+�5�      �� $��1��6%   $ 
Horizontal=�5�   %   $��RightToLeft=�5�   %   $��Center=�5�   %   $��0,0,10,0q�5�   %   .+�5�      o� 
������ $��23��6<   
�������.@�5�   "   m� $
��Bold"�6T   $��0 3 0 0q�6f   ��6+   �� *
Username+ �� Mode$ OneWay=�.@�5�   &   m� $��View Profile��6/   
���   �
������ $��Normal"�6q    m� Command 5�   /   �� *ShowViewProfileViewCommand+ m� Icon 5�   *     5�   .   $ UserFriends=�6;   5�   '   m� 5�   &   $��Logout��6/   
���   �
������ $��Normal"�6k    5�   /   �� *LogoutCommand+ 5�   *     5�   .   $ SignOut=�6;   5�   '   5�   #   5�      A� 5�      $��33��6&   $��33��62   
�������$��2��5�   &   $��	10,0,10,0q�5�   &   ��5�   "   �� 5�   &    �� ImageSource$g aC:\Users\Dani Jurma\source\repos\chatsharp-cs-project\chatsharp-cs-project\Images\ProfileIcon.png��61   5�      5�      5�      �� 5�      $��2��5�   %   $��25q�5�   %   ��5�   %   �� *CurrentChildView+5�   %   5�      5�      5�      5�      5�      