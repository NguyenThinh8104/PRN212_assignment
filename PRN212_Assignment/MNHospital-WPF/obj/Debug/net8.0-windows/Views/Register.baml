   M S B A M L   `   `   `  ����I  EMNHospital-WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:MNHospital_WPF.ViewsMNHospital_WPF.Views  5   	   #    MNHospital_WPF.Views.Register   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:MNHospital_WPF.Views     5   	     � Title$  Register��5   	   $	��500��6   $	��550��6'    � WindowStartupLocation$ CenterScreen=�5	   	   $��Center=�5
   	   .��5      � ���	#FF2C3E50 � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $
��Auto �6   .+�5   
   �� $��1��6   $��Center=�6"   $��0,28,0,0q�6?   .+�5      �� $��Register��6   $��24(�6(   
�������$��0,0,0,20q�6I   �� 5      
�������
Username65   �� 5      -   5         ��Name$ txtUsername��5      $	��300��6+   $��30��67   $	��0,5q�6C   $��14(�6P   $��0q�6^   ���	#FF34495E
���������6�   �� *
Username+ �� Mode$ TwoWay=��� 5      
�������
Password65   G� 5      -   5         G�Name$ txtPassword��5      $	��300��6/   $��30��6;   $	��0,5q�6G   $��14(�6T   $��0q�6b   ���	#FF34495E
������� G� PasswordChar$ *��6�   �� 5      
�������Confirm Password6=   G� 5      -   5        $ txtPasswordC��5      $	��300��60   $��30��6<   $	��0,5q�6H   $��14(�6U   $��0q�6c   ���	#FF34495E
�������$ *��6�   �� 5      
�������Email62   �� 5      -   5        $ txtEmail��5      $	��300��6(   $��30��64   $	��0,5q�6@   $��14(�6M   $��0q�6[   ���	#FF34495E
���������6�   �� *Email+$ TwoWay=��� 5      -   5        $��Register��5      $	��300��6E   $��40��6Q   $
��0,20q�6]   ���	#FF2980B9
�������$��16(�6�   $
��Bold"�6�   5      5      5      