   M S B A M L   `   `   `  ����O  Kchatsharp-cs-project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:chatsharp_cs_project.Viewchatsharp_cs_project.View  5      J FPasswordBoxMVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null`Aclr-namespace:PasswordBoxMVVM.Components;assembly=PasswordBoxMVVMPasswordBoxMVVM.Components 6D   Y1clr-namespace:chatsharp_cs_project.CustomControls#chatsharp_cs_project.CustomControls  5   N   ,    &chatsharp_cs_project.View.RegisterView   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:chatsharp_cs_project.View     5      X
componentsAclr-namespace:PasswordBoxMVVM.Components;assembly=PasswordBoxMVVM     6D   c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag	 cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a?	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks  	 5      Hcustomcontrols1clr-namespace:chatsharp_cs_project.CustomControls  	 6N   
������ .��5      � .+�5   
   �   � RowDefinitions  5      �� 5      $��30 �6    �� 5      .+�5      ��  �� CornerRadius$ 10��6   $��2��6'   ��5      �� 5      .��5      �  � Color$ #36393f��6'    � Offset$	 0.0Q�67   � 5      $ #252525��6'   $	 1.0Q�67   5      5      �� 5      $��2��6   .+�5      �� $��Register for an account��6   $��0 60 0 0q�5      $��Center=�5      $��	helvetica)�5      $��35(�5      
�������
������ $��Light"�5!       J� Opacity$
 0.66Q�5"      5$      �� 5%      $��2��6   .+�5&      �� $��430 190 0 0q�5'      $
��Left=�5(      $��	helvetica)�5)      $��20(�5*      
�������
������ $��Light"�5-      $
 0.66Q�5.      $��0q�5/      $	��313��6.   ��5&      �� *Email+ �� UpdateSourceTrigger$ PropertyChanged=�5/   .   �� 50      $	��350��6   $��2��51      
�������$	 0.6Q�53      $��0 0 0 0q�54      . 	 (MahApps.Metro.IconPacks.PackIconMaterial  56         Kind$ Email=�6-   $��Center=�57   1   
�������$��320 -20 0 0q�59   -   �� 5:      $��hint: confirm password ��6   $��	0 200 0 0q�5;      $��Center=�5<      $��	helvetica)�5=      $��14(�5>      
�������
������ $��
ExtraLight"�5A      $	 0.5Q�5B      5C      �� 5D      $��2��6   .+�5E      �� $��430 250 0 0q�5F      $
��Left=�5G      $��	helvetica)�5H      $��20(�5I      
�������
������ $��Light"�5L      $
 0.66Q�5M      $��0q�5N      $	��313��6.   ��5E      �� *
Username+$ PropertyChanged=�5N   .   �� 5O      $	��350��6   $��2��5P      
�������$	 0.6Q�5R      $��0 0 0 0q�5S        5U      $ 
AccountBox=�6-   $��Center=�5V   1   
�������$��320 -20 0 0q�5X   -   5Y      �� 5Z      $��2��6   .+�5[      =   7chatsharp_cs_project.CustomControls.BindablePasswordBox  $��-30 310 0 0q�5]      $	��313��5^         Password 5\      �� *
Password+$ PropertyChanged=� �� Mode$ TwoWay=�5^      �� 5`      $	��350��6   $��2��5a      
�������$	 0.6Q�5c      $��	0 0 0 -10q�5d        5f      $ FormTextboxPassword=�6-   $��Center=�5g   1   
�������$��320 -20 0 0q�5i   -   5j      �� 5l      $��2��6   .+�5m        $��-30 370 0 0q�5o      $	��313��5p       5n      �� *ConfirmPassword+$ PropertyChanged=�$ TwoWay=�5p      �� 5q      $	��350��6   $��2��5r      
�������$	 0.6Q�5t      $��	0 0 0 -10q�5u        5w      $ FormTextboxPassword=�6-   $��Center=�5x   1   
�������$��320 -20 0 0q�5z   -   5{      �� 5|      $��2��6   .+�5}      �� $��4q�6   ���#252525$ 10��6C   $	��101��6U   $��	0 479 0 0q�6a   $��Center=�6t   ._�5~      �� $��28��6   $��SUBMIT��6)   
�������$��	Helvetica)�5�   %   $��Light"�5�   %   ���#252525$��0q�5�   %   $��	-1,0,-1,0q�69   ��5�   %   �� *SubmitCommand+5�      5�      �� 5�      $��2��6   .+�5�      �� $��4q�6   ���#252525$ 10��6C   $	��310��6U   $��	0 534 0 0q�6a   $��Center=�6t   ._�5�      �� $��28��6   $$��Already have an account? Login��6)   
�������$��	Helvetica)�5�   %   $��Light"�5�   %   ���#252525$��0q�5�   %   $��-1,0,0,0q�69   ��5�   %   �� *NavigateLoginCommand+5�      5�      �� 5�      -   5        $��1��5�      ���#252525._�5�      � $��Stretch=�6   .+�5�      �� $��	ChatSharp��6   
�������$��SemiBold"�5�      $��5 5 0 0q�5�      �� 5�      $��Right=�6!   	 �� Orientation$	 
Horizontal=�5�   !   .+�5�      �� -   5        $��20��5�   !   $��20��6,   $
��🗕��5�   !   
������ 
�������$��0q�5�   !   $
��Bold"�5�   !   $��0 7 0 3q�5�   !   5�   !   �� 5�      -   5        $��20��5�   !   $��20��6,   $	��□��5�   !   
������ 
�������$��0q�5�   !   $
��Bold"�5�   !   $��0 7 0 0q�5�   !   5�   !   �� 5�      -   5        $��20��5�   !   $��20��6,   $	��✕��5�   !   
������ 
�������$��0q�5�   !   $
��Bold"�5�   !   $��0 7 0 0q�5�   !   5�   !   5�      5�      5�      5�      5�      5�      