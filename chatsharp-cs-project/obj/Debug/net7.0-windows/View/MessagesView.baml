   M S B A M L   `   `   `  ����O  Kchatsharp-cs-project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:chatsharp_cs_project.Viewchatsharp_cs_project.View  5      O,clr-namespace:chatsharp_cs_project.ViewModelchatsharp_cs_project.ViewModel  5      ,    &chatsharp_cs_project.View.MessagesView   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:chatsharp_cs_project.View     5      B	viewmodel,clr-namespace:chatsharp_cs_project.ViewModel     5      c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	      b ^GalaSoft.MvvmLight.Platform, Version=5.4.1.0, Culture=neutral, PublicKeyToken=5f873c45e98af8a1*cmd http://www.galasoft.ch/mvvmlight  5
      c	 _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag
 cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a?	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks 	 
 5      .��5      �   � ColumnDefinitions  5   
   �� 5      $	��125 �6   �� 5      .+�5   
   � ���#252525$��0��6$    � RowDefinitions 5      �� 5      $��50 �6    �� 5      .+�5      �� $��Chats��6   $��Center=�5      $��Center=�5      $��Medium"�5      
�������$��0 0 0 0q�5      �� 5      -   5         ��Name$ ListViewMessagesView��5$      
������ $��0q�5!      $��1��5"         
FriendCard#��[  5#      ��5      �� *FriendsList+ �� SelectedItem 5%      �� *YourSelectedItem+ �� Mode$ TwoWay=�.  (System.Windows.Interactivity.Interaction   Triggers 5&      /  )System.Windows.Interactivity.EventTrigger  5'         	EventName$ SelectionChanged��6%   .  (System.Windows.Interactivity.TriggerBase   Actions. 5(      /  )GalaSoft.MvvmLight.Command.EventToCommand     Command 6-   �� *TestCommand+5)      5+      5,      � 5-   
   ���#252525$��1��6$    5.      �� 5/      �� 50      $��50 �6    .+�52      �� $q��kC:\Users\Dani Jurma\source\repos\chatsharp-cs-project\chatsharp-cs-project\Images\MessageViewBackground.jpg��6   	 J� Opacity$		 0.2Q�53      $
��Left=�54      �� 55      $q��kC:\Users\Dani Jurma\source\repos\chatsharp-cs-project\chatsharp-cs-project\Images\MessageViewBackground.jpg��6   $		 0.2Q�56      $��Center=�57      $��50 0 0 0q�58      �� 59      $t��nC:\Users\Dani Jurma\source\repos\chatsharp-cs-project\chatsharp-cs-project\Images\MessageViewBackground_v2.jpg��6   $		 0.2Q�5:      $��Right=�5;      $��	0 0 -36 0q�5<      $	��260��5=      $	��600��5>      �� 5?      -   5        
 ��Name$
 MessageViewer��5?      $
��Auto=�62   $��0 0 0 0q�5@      $��0��5A      .��5B      � .+�5C      �� $
��Auto=�6#   .��5D      �� ��6'   �� *MessagesCollection+��5E      �� 5F   "   .R�5H   &   � $��	15 10 0 0q�6+    5I   *   �� 5J   .   $��* �6<   �� 5K   .   $
��Auto �6<   �� 5L   .   $
��Auto �6<   ��5N   *   �� 5O   .    �� 
TargetType" �64   .�5P   2   ��  �� Property � �� �� Value$ Right=�6X    �� Triggers 5Q   2   �� 5R   6    �� Binding 6B   �� *" SenderIsDifferentThenCurrentUser+ �� Value true6w   .a�5S   :   ��  � ��$
 Left=�6`   5T   7   5V   /   .+�5Y   *   ��  �� CornerRadius$ 10��61    �� Padding$ 15q�5Z   1     ForegroundLightBrush#��[ 5[   1   $��50 0 0 0q�5\   1   ._�5_   .   �� $��Center=�68   $
��Wrap=�5`   8     LatoRegular#��[ 5a   8     WordDarkBlueBrush#��[ 5b   8   $
��Bold"�5d   8   ��5c   8   �� *MessageText+5d   8   5g   +   �� 5h   *   $	��Top=�61   $
��Left=�5i   1   $��0 7.5 0 7.5q�5j   1   $��45��5m   1   
����d�#��[ 5o   1   $��1q�5p   1    5k   1   �� *ActualWidth+ �� RelativeSource �� *Self+��5l   1   �� *ActualWidth+ �� *Self+._�5q   .   �� $g��aC:\Users\Dani Jurma\source\repos\chatsharp-cs-project\chatsharp-cs-project\Images\ProfileIcon.png��64   5s   +   5v   '   5x   #   5z      5{      5|      5}      �� 5�       �� Orientation$ 
Horizontal=�6   $��1��62   .+�5�      �� $	��700��6    �� AcceptsReturn$
 True��6&   ���#252525
�������$��2q�5�      $��20(�5�      ��5�      �� *MessageFromTextBox+ �� UpdateSourceTrigger$ PropertyChanged=��� 5�      
������ $��0q�62   $��60��6F   $��60��6R   ��5�      �� *SendMessageButton+.��5�      . 
 (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 
SendCircle=�61   
�������
������ $��40��5�   1   $��40��5�   1   $��0 0 0 7q�5�   1   5�      5�      5�      � 5�   
   ���#252525$��1��6$   ��5�      �� 5�      " �6   .�5�      ��  � y�$ 	Collapsed=�63    5�      �� 5�       6&   �� *FriendsListCount+ 06K   .a�5�      ��  � y�$ Visible=�6;   5�      5�      .+�5�      �� $;��5You need to add friends before you can start chatting��6   
�������$��Light"�5�      $��20(�5�      $��Center=�5�      $��Center=�5�        5�      $ Information=�6)   
�������$��Center=�5�   )   $��Center=�5�   )   $��
-500 0 0 0q�5�   )   $��30��5�   )   $��30��5�   )   5�      �� 5�   
   
�������$��1q�6%   $��1��69   ���#252525$	��600��6_   $��1��6l   $
��Left=�6v   5�      5�      