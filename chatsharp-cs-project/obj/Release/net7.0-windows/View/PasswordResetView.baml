   M S B A M L   `   `   `  ���� O  Kchatsharp-cs-project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:chatsharp_cs_project.Viewchatsharp_cs_project.View  Y1clr-namespace:chatsharp_cs_project.CustomControls#chatsharp_cs_project.CustomControls  O,clr-namespace:chatsharp_cs_project.ViewModelchatsharp_cs_project.ViewModel  1    +chatsharp_cs_project.View.PasswordResetView   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     9local'clr-namespace:chatsharp_cs_project.View     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a?	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks   Hcustomcontrols1clr-namespace:chatsharp_cs_project.CustomControls   >	viewmodel,clr-namespace:chatsharp_cs_project.ViewModel   .��� .+��   � RowDefinitions  �� $��30 ��� .+���  �� CornerRadius$ 10��$��2������ .���  � Color$ #36393f�� � Offset$	 0.0Q�� $ #252525��$	 1.0Q�._��� .+��� $��Password Reset��$��Center=�$��Bottom=�$��0 90 0 0q�$��30(�
�������$��Courier New)�$��Light"� J� Opacity$	 0.9Q�.  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ Email=�$��Center=�$��Center=�
�������$��330 0 0 -250q��� $��	Helvetica)�$��Light"�$��23(�
�������
������ $	��300��$	 0.6Q�$��-50 100 0 0q�$��0q����� *Email+ �� UpdateSourceTrigger$ PropertyChanged=��� $	��350��$��2��
�������$	 0.6Q�$��0 10 0 0q��� $��4q����#252525$ 10��$	��301��$��0 60 0 0q�$��Center=�._��� $��28��$��Send Password Reset Email��
�������$��	Helvetica)�$��Light"����#252525$��0q�$��	-1,0,-1,0q����� *SendPasswordResetEmailCommand+�� $��Return to Login��$��Center=�$��Center=�$��15(�
�������$��Light"�$��0 20 0 0q�$	 0.8Q�
������ $��0q����� *NavigateLoginCommand+�� -   $��1�����#252525._�� $��Stretch=�.+��� $��	ChatSharp��
�������$��SemiBold"�$��5 5 0 0q��� $��Right=� �� Orientation$ 
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