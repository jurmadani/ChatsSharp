   M S B A M L   `   `   `  ���� O  Kchatsharp-cs-project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:chatsharp_cs_project.Viewchatsharp_cs_project.View  J FPasswordBoxMVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null`Aclr-namespace:PasswordBoxMVVM.Components;assembly=PasswordBoxMVVMPasswordBoxMVVM.Components Y1clr-namespace:chatsharp_cs_project.CustomControls#chatsharp_cs_project.CustomControls  O,clr-namespace:chatsharp_cs_project.ViewModelchatsharp_cs_project.ViewModel  )    #chatsharp_cs_project.View.LoginView   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     9local'clr-namespace:chatsharp_cs_project.View     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag	 cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a?	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks  	 T
componentsAclr-namespace:PasswordBoxMVVM.Components;assembly=PasswordBoxMVVM  	 Hcustomcontrols1clr-namespace:chatsharp_cs_project.CustomControls  	 >	viewmodel,clr-namespace:chatsharp_cs_project.ViewModel  	 
������ .��� .+��   � RowDefinitions  �� $��30 ��� .+���  �� CornerRadius$ 10��$��2������ .���  � Color$ #36393f�� � Offset$	 0.0Q�� $ #252525��$	 1.0Q�._��� .+��� $l��fC:\Users\Dani Jurma\source\repos\chatsharp-cs-project\chatsharp-cs-project\Images\LogoFinalVersion.png��$	��250��$
��0 50q�$	��105���� $��	ChatSharp��$��Light"�$��Courier New)�$��50(�
�������$��Center=�$��0 -40q�. 	 (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ Email=�$��Center=�$��Center=�
�������$��330 0 0 -230q��� $��	Helvetica)�$��Light"�$��23(�
�������
������ $	��236�� J� Opacity$	 0.6Q�$��-120 100 0 0q�$��0q����� *Email+ �� UpdateSourceTrigger$ PropertyChanged=��� $	��350��$��2��
�������$	 0.6Q�$��0 0 0 0q�  $ FormTextboxPassword=�$��Center=�$��Center=�
�������$��330 0 0 -240q�=   7chatsharp_cs_project.CustomControls.BindablePasswordBox  $	��310��$��-35 105 0 0q�   Password �� *
Password+$ PropertyChanged=� �� Mode$ TwoWay=��� $	��350��$��2��
�������$	 0.6Q�$��0 3 0 0q��� $��0 45 0 0q�.+��� $��4q����#252525$ 10��$	��101��$��
0 60 250 0q�._��� $��28��$��LOGIN��
�������$��	Helvetica)�$��Light"����#252525$��0q�$��	-1,0,-1,0q����� *SubmitCommand+�� $��4q����#252525$ 10��$	��101��$��0 -40 -250 0q�._��� $��32��$��REGISTER��
�������$��	Helvetica)�$��Light"����#252525$��0q�$��0,0,-1,0q����� *NavigateRegisterCommand+�� $��Forgot password?��$��Center=�$��Center=�$��15(�
�������$��Light"�$��-240 -230 0 0q�$	 0.8Q�
������ $��0q����� *#!NavigateForgotPasswordViewCommand+�� -   $��1�����#252525._�� $��Stretch=�.+��� $��	ChatSharp��
�������$��SemiBold"�$��5 5 0 0q��� $��Right=�	 �� Orientation$	 
Horizontal=�.+��� -   $��20��$��20��$
��🗕��
������ 
�������$��0q�$
��Bold"�$��0 7 0 3q��� -   $��20��$��20��$	��□��
������ 
�������$��0q�$
��Bold"�$��0 7 0 0q��� -   $��20��$��20��$	��✕��
������ 
�������$��0q�$
��Bold"�$��0 7 0 0q�