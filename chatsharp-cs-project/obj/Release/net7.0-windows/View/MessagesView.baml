   M S B A M L   `   `   `  ���� O  Kchatsharp-cs-project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:chatsharp_cs_project.Viewchatsharp_cs_project.View  O,clr-namespace:chatsharp_cs_project.ViewModelchatsharp_cs_project.ViewModel  ,    &chatsharp_cs_project.View.MessagesView   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     9local'clr-namespace:chatsharp_cs_project.View     B	viewmodel,clr-namespace:chatsharp_cs_project.ViewModel     c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  b ^GalaSoft.MvvmLight.Platform, Version=5.4.1.0, Culture=neutral, PublicKeyToken=5f873c45e98af8a1*cmd http://www.galasoft.ch/mvvmlight  c	 _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag
 cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a?	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks 	 
 .���   � ColumnDefinitions  �� $	��125 ��� .+�� ���#252525$��0�� � RowDefinitions �� $��50 ��� .+��� $��Chats��$��Center=�$��Center=�$��Medium"�
�������$��0 0 0 0q��� -    ��Name$ ListViewMessagesView��
������ $��0q�$��1��   
FriendCard#��[  ���� *FriendsList+ �� SelectedItem �� *YourSelectedItem+ �� Mode$ TwoWay=�.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ SelectionChanged��.  (System.Windows.Interactivity.TriggerBase   Actions. /  )GalaSoft.MvvmLight.Command.EventToCommand     Command �� *TestCommand+� ���#252525$��1�� �� �� $��50 �.+��� $q��kC:\Users\Dani Jurma\source\repos\chatsharp-cs-project\chatsharp-cs-project\Images\MessageViewBackground.jpg��	 J� Opacity$		 0.2Q�$
��Left=��� $q��kC:\Users\Dani Jurma\source\repos\chatsharp-cs-project\chatsharp-cs-project\Images\MessageViewBackground.jpg��$		 0.2Q�$��Center=�$��50 0 0 0q��� $t��nC:\Users\Dani Jurma\source\repos\chatsharp-cs-project\chatsharp-cs-project\Images\MessageViewBackground_v2.jpg��$		 0.2Q�$��Right=�$��	0 0 -36 0q�$	��260��$	��600���� -   
 ��Name$
 MessageViewer��$
��Auto=�$��0 0 0 0q�$��0��.��� .+��� $
��Auto=�.���� ���� *MessagesCollection+���� .R�� $��	15 10 0 0q� �� $��* ��� $
��Auto ��� $
��Auto �����  �� 
TargetType" �.���  �� Property � �� �� Value$ Right=� �� Triggers ��  �� Binding �� *" SenderIsDifferentThenCurrentUser+ �� Value true.a���  � ��$
 Left=�.+���  �� CornerRadius$ 10�� �� Padding$ 15q�  ForegroundLightBrush#��[ $��50 0 0 0q�._��� $��Center=�$
��Wrap=�  LatoRegular#��[   WordDarkBlueBrush#��[ $
��Bold"����� *MessageText+�� $	��Top=�$
��Left=�$��0 7.5 0 7.5q�$��45��
����d�#��[ $��1q� �� *ActualWidth+ �� RelativeSource �� *Self+���� *ActualWidth+ �� *Self+._��� $g��aC:\Users\Dani Jurma\source\repos\chatsharp-cs-project\chatsharp-cs-project\Images\ProfileIcon.png����  �� Orientation$ 
Horizontal=�$��1��.+��� $	��700�� �� AcceptsReturn$
 True�����#252525
�������$��2q�$��20(����� *MessageFromTextBox+ �� UpdateSourceTrigger$ PropertyChanged=��� 
������ $��0q�$��60��$��60������ *SendMessageButton+.��. 
 (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 
SendCircle=�
�������
������ $��40��$��40��$��0 0 0 7q�� ���#252525$��1������ " �.���  � y�$ 	Collapsed=� ��  �� *FriendsListCount+ 0.a���  � y�$ Visible=�.+��� $;��5You need to add friends before you can start chatting��
�������$��Light"�$��20(�$��Center=�$��Center=�  $ Information=�
�������$��Center=�$��Center=�$��
-500 0 0 0q�$��30��$��30���� 
�������$��1q�$��1�����#252525$	��600��$��1��$
��Left=�