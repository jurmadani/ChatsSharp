   M S B A M L   `   `   `  ���� O  Kchatsharp-cs-project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:chatsharp_cs_project.Viewchatsharp_cs_project.View  O,clr-namespace:chatsharp_cs_project.ViewModelchatsharp_cs_project.ViewModel  /    )chatsharp_cs_project.View.ViewProfileView   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     9local'clr-namespace:chatsharp_cs_project.View     X TFontAwesome.Sharp, Version=6.2.1.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  <	viewmodel,clr-namespace:chatsharp_cs_project.ViewModel  .���� ���#252525  �� CornerRadius$  12��._��  � ColumnDefinitions �� $	��200 ��� $��* �.+��� $��0��._�A� $��70��$��70��$	��Top=�
�������$��2��$��	0,175,0,0q�����  �� ImageSource$g aC:\Users\Dani Jurma\source\repos\chatsharp-cs-project\chatsharp-cs-project\Images\ProfileIcon.png���� 
�������$	��650��$	��0.8��$��	199 0 0 0q��� 
�������$��1��$	��130��$��0 40 0 0q��� $��Center=�
�������$��25(�$��Light"�$��Center=�$��0 0 0 0q����� *
Username+�� $��Center=�
�������$��20(�$��Light"�$��Center=�$��0 70 0 0q����� *
JobTitle+�� $��1��._��� $��Information��
�������$��30(�$��
ExtraLight"�$��	40 20 0 0q��� $��1��
�������$��1��$	��620��$	��Top=�$��0 70 0 0q��� $��1��._��� $��Friends��
�������$��23(�$��
ExtraLight"�$��
113 90 0 0q��� $��1��._��� 
�������$��23(�$��
ExtraLight"�$��	80 90 0 0q����� *FriendsNumber+�� $��1��._�!  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.2.1.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ Envelope=�   
Foreground
 �����$��25��$��25��$	��Top=�$
��Left=�$��
45 147 0 0q��� $��1��._��� 
�������$��23(�$��
ExtraLight"�$��
80 140 0 0q����� *Email+�� $��1��._�  $ Phone=�
 �����$��25��$��25��$	��Top=�$
��Left=�$��
45 197 0 0q��� $��1��._��� 
�������$��23(�$��
ExtraLight"�$��
80 193 0 0q����� *PhoneNumber+ �� Mode$ TwoWay=�  $ UserFriends=�$��1��$��25��$��25��
 �����$	��Top=�$
��Left=�$��	45 96 0 0q��� $��1��._��� $��Social��
�������$��30(�$��
ExtraLight"�$��
40 270 0 0q��� $��1��
�������$��1��$	��620��$	��Top=�$��	0 320 0 0q��� $��1��._�  $ Facebook=�
 �����$��25��$��25��$	��Top=�$
��Left=�$��
45 337 0 0q��� $��1��._�  $ 	Instagram=�
 �����$��25��$��25��$	��Top=�$
��Left=�$��
85 337 0 0q��� $��1��._�  $ Github=�
 �����$��25��$��25��$	��Top=�$
��Left=�$��125 337 0 0q��� $��1��._�  $ Linkedin=�
 �����$��25��$��25��$	��Top=�$
��Left=�$��165 337 0 0q��� $��1��
�������$��20��$��1��$	��Top=�$��0 148 100 0q��� $��1��._��� $��Email verified:��
�������$��23(�$��
ExtraLight"�$��320 140 0 0q��� $��1��._��� $��1��$��460 135 0 0q�
�������$��23(�$��
ExtraLight"�����  �� 
TargetType" ��.���  �� Property � �� �� Value$ No��	 �� Triggers	 �� 
 �� Binding
 �� *IsEmailVerified+ �� Value True.a���  � ��$	 Yes���� $��1��$��(verify email)��$��40��$	��100��
������ $��0q�
����  �$��0q�$��15(�$
��Bold"�$��400 -5 0 225q����� *#!SendEmailVerificationEmailCommand+���� " ��	 �� 
 �� *IsEmailVerified+ True.a���  � y�$ 	Collapsed=��� $��0��$��30��$	��100��$��Edit profile��$��Bottom=�$��	0 0 0 100q����� *" NavigateToEditProfileViewCommand+