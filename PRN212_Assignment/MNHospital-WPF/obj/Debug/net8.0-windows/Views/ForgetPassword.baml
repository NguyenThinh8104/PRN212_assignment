   M S B A M L   `   `   `  ����I  EMNHospital-WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:MNHospital_WPF.ViewsMNHospital_WPF.Views  5   	   )    #MNHospital_WPF.Views.ForgetPassword   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:MNHospital_WPF.Views     5   	     � Title$  ForgetPassword��5   	   $	��500��6    $	��500��6-    � WindowStartupLocation$ CenterScreen=�5	   	   $��Center=�5
   	   .��5      � ���	#FF2C3E50 � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $
��Auto �6   .+�5   
   �� $��1��6   $��Center=�6"   .+�5      �� $��Forget Password��6   $��24(�6/   
�������$��0,0,0,20q�6P   �� 5      
�������
Username65   �� 5      -   5         ��Name$ txtUsername��5      $	��300��6+   $��30��67   $	��0,5q�6C   $��14(�6P   $��0q�6^   ���	#FF34495E
���������6�   �� *
Username+ �� Mode$ TwoWay=��� 5      
�������New Password69   G� 5      -   5         G�Name$ txtNewPassword��5      $	��300��62   $��30��6>   $	��0,5q�6J   $��14(�6W   $��0q�6e   ���	#FF34495E
������� G� PasswordChar$ *��6�   �� 5      
�������Confirm Password6=   G� 5      -   5        $ txtPasswordC��5      $	��300��60   $��30��6<   $	��0,5q�6H   $��14(�6U   $��0q�6c   ���	#FF34495E
�������$ *��6�   �� 5      -   5        $��Change Password��5      $	��300��6R   $��40��6^   $
��0,20q�6j   ���	#FF2980B9
�������$��16(�6�   $
��Bold"�6�   5      5      5      