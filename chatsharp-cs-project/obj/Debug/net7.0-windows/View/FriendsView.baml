   M S B A M L   `   `   `  ����O  Kchatsharp-cs-project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:chatsharp_cs_project.Viewchatsharp_cs_project.View  5      O,clr-namespace:chatsharp_cs_project.ViewModelchatsharp_cs_project.ViewModel  5      +    %chatsharp_cs_project.View.FriendsView   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:chatsharp_cs_project.View     5      B	viewmodel,clr-namespace:chatsharp_cs_project.ViewModel     5      .��5      � .+�5   
   �� 
������ ._�5      �� $��Add a friend��6   
�������$��40(�5      $��Light"�5      $��Center=�5      $��0 10 0 0q�5      5      �� 5   
   
�������$��1q�6%   $��1��69   $	��240��6D   $��	0 0 0 410q�6P   �� 5   
   $��35��6   ���#252525$	��300��63   
�������$��0 5 390 280q�6R   $��20(�6g   ���#252525��5      �� *
Username+  �� UpdateSourceTrigger$  PropertyChanged=��� 5   
   $��Username��6   
�������$��20(�67   $��Center=�6E   $��	0 0 0 280q�6`   �� 5   
   $��30��6   $	��150��6   $��Search��6)   $��0q�6:   
�������$
��Bold"�6`   $��130 0 0 275q�6r   ��5      �� *SearchCommand+�� 5   
   -   5         ��Name$$ ListOfPotentialFriendsListView��5      $	��300��5      $	��800��6    $��	0 130 0 0q�6,   
������ $��0q�5      ��5      �� *ListOfPotentialFriends+ �� SelectedItem 5      �� *SelectedPossibleFriend+ �� Mode$ TwoWay=���5      �� 5        �� 
TargetType" ��6   .�5!      ��  �� Property � �� �� Value
 �����64   �� 5"       � ��$ 0q�68   �� 5#       � ��
 �����63   �� 5$       � ��$ 30(�61   5%      5'      �� 5(   
   $��30��5*      $	��150��6   $��
Add friend��5+      $��0q�5,      
�������$
��Bold"�5.      $��Bottom=�5/      ��5)      �� *AddFriendCommand+5/      51      53      