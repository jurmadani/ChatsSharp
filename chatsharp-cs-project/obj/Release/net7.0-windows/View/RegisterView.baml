   M S B A M L   `   `   `  ���� O  Kchatsharp-cs-project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:chatsharp_cs_project.Viewchatsharp_cs_project.View  J FPasswordBoxMVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null`Aclr-namespace:PasswordBoxMVVM.Components;assembly=PasswordBoxMVVMPasswordBoxMVVM.Components Y1clr-namespace:chatsharp_cs_project.CustomControls#chatsharp_cs_project.CustomControls  ,    &chatsharp_cs_project.View.RegisterView   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     9local'clr-namespace:chatsharp_cs_project.View     X
componentsAclr-namespace:PasswordBoxMVVM.Components;assembly=PasswordBoxMVVM     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag	 cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a?	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks  	 Hcustomcontrols1clr-namespace:chatsharp_cs_project.CustomControls  	 
������ .��� .+��   � RowDefinitions  �� $��30 ��� .+���  �� CornerRadius$ 10��$��2������ .���  � Color$ #36393f�� � Offset$	 0.0Q�� $ #252525��$	 1.0Q��� $��2��.+��� $��Register for an account��$��0 60 0 0q�$��Center=�$��	helvetica)�$��35(�
�������
������ $��Light"� J� Opacity$
 0.66Q��� $��2��.+��� $��430 190 0 0q�$
��Left=�$��	helvetica)�$��20(�
�������
������ $��Light"�$
 0.66Q�$��0q�$	��313������ *Email+ �� UpdateSourceTrigger$ PropertyChanged=��� $	��350��$��2��
�������$	 0.6Q�$��0 0 0 0q�. 	 (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ Email=�$��Center=�
�������$��320 -20 0 0q��� $��hint: confirm password ��$��	0 200 0 0q�$��Center=�$��	helvetica)�$��14(�
�������
������ $��
ExtraLight"�$	 0.5Q��� $��2��.+��� $��430 250 0 0q�$
��Left=�$��	helvetica)�$��20(�
�������
������ $��Light"�$
 0.66Q�$��0q�$	��313������ *
Username+$ PropertyChanged=��� $	��350��$��2��
�������$	 0.6Q�$��0 0 0 0q�  $ 
AccountBox=�$��Center=�
�������$��320 -20 0 0q��� $��2��.+�=   7chatsharp_cs_project.CustomControls.BindablePasswordBox  $��-30 310 0 0q�$	��313��   Password �� *
Password+$ PropertyChanged=� �� Mode$ TwoWay=��� $	��350��$��2��
�������$	 0.6Q�$��	0 0 0 -10q�  $ FormTextboxPassword=�$��Center=�
�������$��320 -20 0 0q��� $��2��.+�  $��-30 370 0 0q�$	��313�� �� *ConfirmPassword+$ PropertyChanged=�$ TwoWay=��� $	��350��$��2��
�������$	 0.6Q�$��	0 0 0 -10q�  $ FormTextboxPassword=�$��Center=�
�������$��320 -20 0 0q��� $��2��.+��� $��4q����#252525$ 10��$	��101��$��	0 479 0 0q�$��Center=�._��� $��28��$��SUBMIT��
�������$��	Helvetica)�$��Light"����#252525$��0q�$��	-1,0,-1,0q����� *SubmitCommand+�� $��2��.+��� $��4q����#252525$ 10��$	��310��$��	0 534 0 0q�$��Center=�._��� $��28��$$��Already have an account? Login��
�������$��	Helvetica)�$��Light"����#252525$��0q�$��-1,0,0,0q����� *NavigateLoginCommand+�� -   $��1�����#252525._�� $��Stretch=�.+��� $��	ChatSharp��
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