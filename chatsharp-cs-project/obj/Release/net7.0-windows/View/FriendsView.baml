   M S B A M L   `   `   `  ���� O  Kchatsharp-cs-project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:chatsharp_cs_project.Viewchatsharp_cs_project.View  O,clr-namespace:chatsharp_cs_project.ViewModelchatsharp_cs_project.ViewModel  +    %chatsharp_cs_project.View.FriendsView   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     9local'clr-namespace:chatsharp_cs_project.View     B	viewmodel,clr-namespace:chatsharp_cs_project.ViewModel     .��� .+��� 
������ ._��� $��Add a friend��
�������$��40(�$��Light"�$��Center=�$��0 10 0 0q��� 
�������$��1q�$��1��$	��240��$��	0 0 0 410q��� $��35�����#252525$	��300��
�������$��0 5 390 280q�$��20(����#252525���� *
Username+  �� UpdateSourceTrigger$  PropertyChanged=��� $��Username��
�������$��20(�$��Center=�$��	0 0 0 280q��� $��30��$	��150��$��Search��$��0q�
�������$
��Bold"�$��130 0 0 275q����� *SearchCommand+�� -    ��Name$$ ListOfPotentialFriendsListView��$	��300��$	��800��$��	0 130 0 0q�
������ $��0q����� *ListOfPotentialFriends+ �� SelectedItem �� *SelectedPossibleFriend+ �� Mode$ TwoWay=�����  �� 
TargetType" ��.���  �� Property � �� �� Value
 �������  � ��$ 0q���  � ��
 �������  � ��$ 30(��� $��30��$	��150��$��
Add friend��$��0q�
�������$
��Bold"�$��Bottom=����� *AddFriendCommand+