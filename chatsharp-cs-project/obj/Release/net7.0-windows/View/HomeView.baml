   M S B A M L   `   `   `  ���� O  Kchatsharp-cs-project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:chatsharp_cs_project.Viewchatsharp_cs_project.View  O,clr-namespace:chatsharp_cs_project.ViewModelchatsharp_cs_project.ViewModel  (    "chatsharp_cs_project.View.HomeView   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     9local'clr-namespace:chatsharp_cs_project.View     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a?	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks   X	 TFontAwesome.Sharp, Version=6.2.1.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp 	 <	viewmodel,clr-namespace:chatsharp_cs_project.ViewModel 	   � 	Resources   �� DataType6  0chatsharp_cs_project.ViewModel.HomePageViewModel,   &chatsharp_cs_project.View.HomePageView9  3chatsharp_cs_project.ViewModel.ViewProfileViewModel/   )chatsharp_cs_project.View.ViewProfileView5  /chatsharp_cs_project.ViewModel.FriendsViewModel+   %chatsharp_cs_project.View.FriendsView6  0chatsharp_cs_project.ViewModel.MessagesViewModel,   &chatsharp_cs_project.View.MessagesView4	  .chatsharp_cs_project.ViewModel.GroupsViewModel*
   $chatsharp_cs_project.View.GroupsView6  0chatsharp_cs_project.ViewModel.SettingsViewModel,   &chatsharp_cs_project.View.SettingsView��%�   (��       *, +)(��      *, +)(�� $     *, +)(�� 6     *, +)(�� H     *,	 +)(�� Z     *, +)�� "  .R�  �� "  .R�  �� "  .R�  �� "  .R�  �� " 	 .R�
  �� "  .R�  .����  �� CornerRadius$ 10��$��1q�����  �� 
StartPoint$	 0,0&� �� EndPoint$	 1,1&�.���  � Color$ #252525�� � Offset$ 0Q�� $ #36393f��$	 0.5Q�._��  � ColumnDefinitions �� $	��250 ��� $��* �.+��� $ 	10,0,0,10��$��0������ $	 0,0&�$ 1,0.7&�.��� $ #252525��$ 0Q�� $ #36393f��$ 1Q�._��� .+���  �� Orientation$ 
Horizontal=�$��35��$��
15,25,0,40q�.+��� $l��fC:\Users\Dani Jurma\source\repos\chatsharp-cs-project\chatsharp-cs-project\Images\LogoFinalVersion.png��$��30���� $��	ChatSharp��
�������$��25(�$��
Montserrat)�$��
ExtraLight"�$��16,5,0,0q��� $��6q�
�������$��	0 -45 0 0q�$��1��	�    
menuButton#��[  
	 � Tag$	 White��
 d� 	IsChecked$

 TrueY����� *ShowHomeViewCommand+.���� $ 
Horizontal=�.+�! 	 FontAwesome.Sharp.IconImage  � 	 �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.2.1.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$
 Home=�  menuButtonIcon#��[ �� $
��Home��  menuButtonText#��[ 	� #��[  $	 White������ *ShowFriendsViewCommand+.���� $ 
Horizontal=�.+�  $ UserFriends=�#��[ �� $��Friends��#��[ 	� #��[  $	 White������ *ShowMessagesViewCommand+.���� $ 
Horizontal=�.+�  $ Message=�#��[ �� $��Messages��#��[ 	� #��[  $	 White������ *ShowGroupsViewCommand+.���� $ 
Horizontal=�.+�  $ 
LayerGroup=�#��[ �� $��Groups��#��[ 	� #��[  $	 White������ *ShowSettingsViewCommand+.���� $ 
Horizontal=�.+�  $ Tools=�#��[ �� $��Settings��#��[ �� $ 	0,10,10,0��$��1������ $	 1,1&�$	 0,0&�.��� $ #252525��$ 0Q�� $ #36393f��$ 1Q�._��  � RowDefinitions �� $��25 ��� $��35 ��� $��* �.+��� -    ��Name$ panelControlBar��$��0��$ 
Horizontal=�$��RightToLeft=�
������ $��0,0,5,0q�.+��� -    ��Name$ buttonClose��  controlButton#��[ $	 White��$��Right=�$��	0 10 0 0 q�.��  $ Xmark=�  controlButtonIcon#��[ �� -   $ buttonMaximize��#��[ $	 White��$��Right=�$��
0 10 30 0 q�.��  $ Square=�#��[ �� -   $ buttonMinimize��#��[ $	 White��$��Right=�$��-30 10 60 0 q�.��  $ WindowMinimize=�$��12��#��[ � $��1�� �� �� .+��� $��1��$ 
Horizontal=�$��RightToLeft=�$��Center=�$��0,0,10,0q�.+�o� 
������ $��23��
�������.@�m� $
��Bold"�$��0 3 0 0q����� *
Username+ �� Mode$ OneWay=�.@�m� $��View Profile��
���   �
������ $��Normal"� m� Command �� *ShowViewProfileViewCommand+ m� Icon   $ UserFriends=�m� $��Logout��
���   �
������ $��Normal"� �� *LogoutCommand+   $ SignOut=�A� $��33��$��33��
�������$��2��$��	10,0,10,0q�����  �� ImageSource$g aC:\Users\Dani Jurma\source\repos\chatsharp-cs-project\chatsharp-cs-project\Images\ProfileIcon.png���� $��2��$��25q����� *CurrentChildView+