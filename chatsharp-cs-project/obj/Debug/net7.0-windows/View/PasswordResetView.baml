   M S B A M L   `   `   `  ����O  Kchatsharp-cs-project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:chatsharp_cs_project.Viewchatsharp_cs_project.View  5      Y1clr-namespace:chatsharp_cs_project.CustomControls#chatsharp_cs_project.CustomControls  5   N   O,clr-namespace:chatsharp_cs_project.ViewModelchatsharp_cs_project.ViewModel  6�   1    +chatsharp_cs_project.View.PasswordResetView   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:chatsharp_cs_project.View     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a?	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks   5      Hcustomcontrols1clr-namespace:chatsharp_cs_project.CustomControls   6N   >	viewmodel,clr-namespace:chatsharp_cs_project.ViewModel   6�   .��5
      � .+�5   
   �   � RowDefinitions  5      �� 5      $��30 �6    �� 5      .+�5      ��  �� CornerRadius$ 10��6   $��2��6'   ��5      �� 5      .��5      �  � Color$ #36393f��6'    � Offset$	 0.0Q�67   � 5      $ #252525��6'   $	 1.0Q�67   5      ._�5      �� .+�5      �� $��Password Reset��6    $��Center=�66   $��Bottom=�5       $��0 90 0 0q�5       $��30(�5       
�������$��Courier New)�5       $��Light"�5        J� Opacity$	 0.9Q�5       .  (MahApps.Metro.IconPacks.PackIconMaterial  5!         Kind$ Email=�61   $��Center=�5"   1   $��Center=�5#   1   
�������$��330 0 0 -250q�5%   1   �� 5'      $��	Helvetica)�6   $��Light"�5(       $��23(�5*       
�������
������ $	��300��5-       $	 0.6Q�5.       $��-50 100 0 0q�5/       $��0q�50       ��5)       �� *Email+ �� UpdateSourceTrigger$ PropertyChanged=�50       �� 53      $	��350��6   $��2��54      
�������$	 0.6Q�56      $��0 10 0 0q�57      �� 5:      $��4q�6   ���#252525$ 10��6G   $	��301��6Y   $��0 60 0 0q�6e   $��Center=�5;      ._�5<      �� $��28��6!   $��Send Password Reset Email��6-   
�������$��	Helvetica)�5>   %   $��Light"�5?   %   ���#252525$��0q�5A   %   $��	-1,0,-1,0q�69   ��5B   %   �� *SendPasswordResetEmailCommand+5G      �� 5I      $��Return to Login��5J      $��Center=�67   $��Center=�6T   $��15(�5K   $   
�������$��Light"�5M   $   $��0 20 0 0q�5N      $	 0.8Q�5O   $   
������ $��0q�5Q   %   ��5R   %   �� *NavigateLoginCommand+5V      5Y      �� 5_      -   5        $��1��5_      ���#252525._�5b      � $��Stretch=�6   .+�5c      �� $��	ChatSharp��6   
�������$��SemiBold"�5e      $��5 5 0 0q�5f      �� 5g      $��Right=�6!    �� Orientation$ 
Horizontal=�5h   !   .+�5j      �� -   5        $��20��5j   !   $��20��6,   $
��🗕��5k   !   
������ 
�������$��0q�5n   !   $
��Bold"�5o   !   $��0 7 0 3q�5p   !   5q   !   �� 5r      -   5        $��20��5r   !   $��20��6,   $	��□��5s   !   
������ 
�������$��0q�5v   !   $
��Bold"�5w   !   $��0 7 0 0q�5x   !   5y   !   �� 5z      -   5        $��20��5z   !   $��20��6,   $	��✕��5{   !   
������ 
�������$��0q�5~   !   $
��Bold"�5   !   $��0 7 0 0q�5�   !   5�   !   5�      5�      5�      5�      5�      5�      