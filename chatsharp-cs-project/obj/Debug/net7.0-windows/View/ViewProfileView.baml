   M S B A M L   `   `   `  ����O  Kchatsharp-cs-project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:chatsharp_cs_project.Viewchatsharp_cs_project.View  5      O,clr-namespace:chatsharp_cs_project.ViewModelchatsharp_cs_project.ViewModel  5      /    )chatsharp_cs_project.View.ViewProfileView   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:chatsharp_cs_project.View     5      X TFontAwesome.Sharp, Version=6.2.1.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5      <	viewmodel,clr-namespace:chatsharp_cs_project.ViewModel  5      .��5      �� ���#252525  �� CornerRadius$  12��6"   ._�5   
   �  � ColumnDefinitions 5      �� 5      $	��200 �6#   �� 5      $��* �6#   .+�5      �� $��0��6   ._�5      A� $��70��6   $��70��6&   $	��Top=�5      
�������$��2��5      $��	0,175,0,0q�5      ��5      �� 5       �� ImageSource$g aC:\Users\Dani Jurma\source\repos\chatsharp-cs-project\chatsharp-cs-project\Images\ProfileIcon.png��6%   5      5      �� 5       
�������$	��650��6(   $	��0.8��65   $��	199 0 0 0q�5!      5"      �� 5#      
�������$��1��6(   $	��130��63   $��0 40 0 0q�5$      5%      �� 5'      $��Center=�62   
�������$��25(�5)      $��Light"�5*      $��Center=�5+      $��0 0 0 0q�5,      ��5'      �� *
Username+5,      �� 5-      $��Center=�62   
�������$��20(�5/      $��Light"�50      $��Center=�51      $��0 70 0 0q�52      ��5-      �� *
JobTitle+52      �� 54      $��1��6   ._�55      �� $��Information��6   
�������$��30(�6B   $��
ExtraLight"�56      $��	40 20 0 0q�57      58      �� 59      $��1��6   
�������$��1��69   $	��620��6D   $	��Top=�5:      $��0 70 0 0q�5;      5<      �� 5=      $��1��6   ._�5>      �� $��Friends��6   
�������$��23(�6>   $��
ExtraLight"�5?      $��
113 90 0 0q�5@      5A      �� 5B      $��1��6   ._�5C      �� 
�������$��23(�6N   $��
ExtraLight"�5D      $��	80 90 0 0q�5E      ��5C      �� *FriendsNumber+5E      5F      �� 5I      $��1��6   ._�5J      !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.2.1.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ Envelope=�6      
Foreground
 �����$��25��6B   $��25��6N   $	��Top=�6Y   $
��Left=�6q   $��
45 147 0 0q�6�   5K      �� 5L      $��1��6   ._�5M      �� 
�������$��23(�6F   $��
ExtraLight"�5N      $��
80 140 0 0q�5O      ��5M      �� *Email+5O      5P      �� 5R      $��1��6   ._�5S        $ Phone=�6   
 �����$��25��6?   $��25��6K   $	��Top=�6V   $
��Left=�6n   $��
45 197 0 0q�6�   5T      �� 5U      $��1��6   ._�5V      �� 
�������$��23(�6Y   $��
ExtraLight"�5W      $��
80 193 0 0q�5X      ��5V      �� *PhoneNumber+ �� Mode$ TwoWay=�5X      5Y        5[      $ UserFriends=�6   $��1��6.   $��25��6>   $��25��6J   
 �����$	��Top=�6h   $
��Left=�6�   $��	45 96 0 0q�6�   �� 5^      $��1��6   ._�5_      �� $��Social��6   
�������$��30(�6=   $��
ExtraLight"�5`      $��
40 270 0 0q�5a      5b      �� 5c      $��1��6   
�������$��1��69   $	��620��6D   $	��Top=�5d      $��	0 320 0 0q�5e      5f      �� 5g      $��1��6   ._�5h        $ Facebook=�6   
 �����$��25��6B   $��25��6N   $	��Top=�6Y   $
��Left=�6q   $��
45 337 0 0q�6�   5i      �� 5j      $��1��6   ._�5k        $ 	Instagram=�6   
 �����$��25��6C   $��25��6O   $	��Top=�6Z   $
��Left=�6r   $��
85 337 0 0q�6�   5l      �� 5m      $��1��6   ._�5n        $ Github=�6   
 �����$��25��6@   $��25��6L   $	��Top=�6W   $
��Left=�6o   $��125 337 0 0q�6�   5o      �� 5p      $��1��6   ._�5q        $ Linkedin=�6   
 �����$��25��6B   $��25��6N   $	��Top=�6Y   $
��Left=�6q   $��165 337 0 0q�6�   5r      �� 5s      $��1��6   
�������$��20��69   $��1��6E   $	��Top=�5t      $��0 148 100 0q�5u      5v      �� 5w      $��1��6   ._�5x      �� $��Email verified:��6   
�������$��23(�6F   $��
ExtraLight"�6T   $��320 140 0 0q�6l   5y      �� 5z      $��1��6   ._�5{      �� $��1��6   $��460 135 0 0q�6,   
�������$��23(�6T   $��
ExtraLight"�6b   ��5|      �� 5}       �� 
TargetType" ��6    .�5~      ��  �� Property � �� �� Value$ No��65   	 �� Triggers	 5      �� 5�   "   
 �� Binding
 6.   �� *IsEmailVerified+ �� Value True6R   .a�5�   &   ��  � ��$	 Yes��6=   5�   #   5�      5�      5�      �� 5�      $��1��6   $��(verify email)��6%   $��40��6>   $	��100��6J   
������ $��0q�6o   
����  �$��0q�6�   $��15(�6�   $
��Bold"�5�      $��400 -5 0 225q�5�      ��5�      �� *#!SendEmailVerificationEmailCommand+��5�      �� 5�      " ��6   	 5�      �� 5�      
 6*   �� *IsEmailVerified+ True6N   .a�5�   "   ��  � y�$ 	Collapsed=�6?   5�      5�      5�      �� 5�      $��0��6   $��30��6)   $	��100��65   $��Edit profile��5�      $��Bottom=�5�      $��	0 0 0 100q�5�      ��5�      �� *" NavigateToEditProfileViewCommand+5�      5�      5�      