   M S B A M L   `   `   `  ����O  Kchatsharp-cs-project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:chatsharp_cs_project.Viewchatsharp_cs_project.View  5      J FPasswordBoxMVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null`Aclr-namespace:PasswordBoxMVVM.Components;assembly=PasswordBoxMVVMPasswordBoxMVVM.Components 5      Y1clr-namespace:chatsharp_cs_project.CustomControls#chatsharp_cs_project.CustomControls  5	      O,clr-namespace:chatsharp_cs_project.ViewModelchatsharp_cs_project.ViewModel  5
      )    #chatsharp_cs_project.View.LoginView   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:chatsharp_cs_project.View     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag	 cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a?	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks  	 5      T
componentsAclr-namespace:PasswordBoxMVVM.Components;assembly=PasswordBoxMVVM  	 5      Hcustomcontrols1clr-namespace:chatsharp_cs_project.CustomControls  	 5	      >	viewmodel,clr-namespace:chatsharp_cs_project.ViewModel  	 5
      
������ .��5      � .+�5   
   �   � RowDefinitions  5      �� 5      $��30 �6    �� 5      .+�5      ��  �� CornerRadius$ 10��6   $��2��6'   ��5      �� 5      .��5      �  � Color$ #36393f��6'    � Offset$	 0.0Q�67   � 5      $ #252525��6'   $	 1.0Q�67   5      ._�5      �� .+�5      �� $l��fC:\Users\Dani Jurma\source\repos\chatsharp-cs-project\chatsharp-cs-project\Images\LogoFinalVersion.png��6   $	��250��5      $
��0 50q�5       $	��105��6*   �� 5"      $��	ChatSharp��6    $��Light"�5#       $��Courier New)�5$       $��50(�5%       
�������$��Center=�5'       $��0 -40q�5(       . 	 (MahApps.Metro.IconPacks.PackIconMaterial  5*         Kind$ Email=�61   $��Center=�5+   1   $��Center=�5,   1   
�������$��330 0 0 -230q�5.   1   �� 5/      $��	Helvetica)�6   $��Light"�50       $��23(�52       
�������
������ $	��236��55        J� Opacity$	 0.6Q�56       $��-120 100 0 0q�57       $��0q�58       ��51       �� *Email+ �� UpdateSourceTrigger$ PropertyChanged=�58       �� 5:      $	��350��6   $��2��5;      
�������$	 0.6Q�5=      $��0 0 0 0q�5>        5B      $ FormTextboxPassword=�61   $��Center=�5C   1   $��Center=�5D   1   
�������$��330 0 0 -240q�5F   1   =   7chatsharp_cs_project.CustomControls.BindablePasswordBox  5G      $	��310��5I       $��-35 105 0 0q�5J          Password 5H       �� *
Password+$ PropertyChanged=� �� Mode$ TwoWay=�5J       �� 5L      $	��350��6   $��2��5M      
�������$	 0.6Q�5O      $��0 3 0 0q�5P      �� 5S      $��0 45 0 0q�6!   .+�5T      �� $��4q�6!   ���#252525$ 10��6K   $	��101��6]   $��
0 60 250 0q�6i   ._�5U      �� $��28��6!   $��LOGIN��6-   
�������$��	Helvetica)�5W   %   $��Light"�5X   %   ���#252525$��0q�5Z   %   $��	-1,0,-1,0q�69   ��5[   %   �� *SubmitCommand+5`      �� 5b      $��4q�6   ���#252525$ 10��6G   $	��101��6Y   $��0 -40 -250 0q�6e   ._�5c      �� $��32��6!   $��REGISTER��6-   
�������$��	Helvetica)�5e   %   $��Light"�5f   %   ���#252525$��0q�5h   %   $��0,0,-1,0q�69   ��5i   %   �� *NavigateRegisterCommand+5n      �� 5o      $��Forgot password?��5p      $��Center=�68   $��Center=�6U   $��15(�5q   $   
�������$��Light"�5s   $   $��-240 -230 0 0q�5t   $   $	 0.8Q�5u   $   
������ $��0q�5w   %   ��5x   %   �� *#!NavigateForgotPasswordViewCommand+5{      5~      5�      �� 5�      -   5        $��1��5�      ���#252525._�5�      � $��Stretch=�6   .+�5�      �� $��	ChatSharp��6   
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