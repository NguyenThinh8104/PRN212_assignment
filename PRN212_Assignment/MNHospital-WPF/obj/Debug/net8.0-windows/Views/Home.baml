   M S B A M L   `   `   `  ����I  EMNHospital-WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:MNHospital_WPF.ViewsMNHospital_WPF.Views  5   	       MNHospital_WPF.Views.Home   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:MNHospital_WPF.Views     5   	     � Title$
  Home��5   	   $	��450��6   $	��800��6#   .��5	      �  � RowDefinitions 5
   
   �� 5      $��50 �6   �� 5      $��* �6   .+�5   
   � ���	#FF2C3E50$��0��6&    � ColumnDefinitions 5      �� 5      $��* �6#   �� 5      $
��Auto �6#   .+�5      �� $ ��Hospital Management System��6   
�������$��20(�6M   $��Center=�6[   $��Center=�6v   �� 5       �� Orientation$ 
Horizontal=�6   $��Right=�62   $��Center=�6N   $��1��6i   $
��10,0q�6y   .+�5      �� -   5         ��Name$ txtUserName��5      
�������$��Center=�6D   $��0,0,10,0q�6_   $��14(�6q   $y�	Collapsed=�6   �� 5      -   5         ��Name$ 	btnLogout��5      $��Đăng xuất��6,   $	��100��6@   $��Center=�6L   $��10q�6g   $y�	Collapsed=�6�   �� 5      -   5        $ btnLogin��5      $��Đăng nhập��6+   $	��100��6?   $��Center=�6K   $��10q�6f   6r   5      5      � 5!   
   $��1��6   $��10q�6    5"      �� 5#      $��1* �6#   �� 5$      $��2* �6#   .+�5'      �� $��0��6   ���	#FF34495E$��0,0,10,0q�6@   .+�5(      �� -   5        $ btnBookAppointment��5(      $��Đặt Lịch Khám��65   $
��0,10q�6k   $��40��6y   ���	#FF2980B9
�������$��14(�6�   �� 5)      -   5        $ btnAppointmentHistory��5)      $��Lịch Sử Khám��68   $
��0,10q�6p   $��40��6~   ���	#FF2980B9
�������$��14(�6�   �� 5*      -   5        $ btnManageAppointments��5*      $��Quản Lý Lịch Đặt��68   $y�	Collapsed=�6u   $
��0,10q�6�   $��40��6�   ���	#FF2980B9
�������$��14(�6�   �� 5+      -   5        $ 
btnProfile��5+      $��Thông Tin Cá Nhân��6-   $
��0,10q�6_   $��40��6m   ���	#FF2980B9
�������$��14(�6�   �� 5,      -   5        $ btnTreatmen��5,      $��Danh sách bệnh nhân��6.   $
��0,10q�6f   $��40��6t   $y�	Collapsed=�6�   ���	#FF2980B9
�������$��14(�6�   5-      � 5/      $��1��6   ��50      �� 51       �� ImageSource$Y Shttps://yhocbandia.vn/wp-content/uploads/2024/09/quan-ly-chat-luong-benh-vien-1.png��6!   55      56      57      58      