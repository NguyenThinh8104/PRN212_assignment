   M S B A M L   `   `   `  ����I  EMNHospital-WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:MNHospital_WPF.Views.clientMNHospital_WPF.Views.client  5   	   )    #MNHospital_WPF.Views.client.History   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ;local)clr-namespace:MNHospital_WPF.Views.client     5   	     � Title$  History��5   	   $	��450��6   $	��800��6&   .��5	      �  � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $��* �6   .+�5   
   � ���	#FF2C3E50$��0��6&   .+�5      �� $%��Lịch Sử Đặt Lịch Khám��6   
�������$��20(�6H   $��Center=�6V   $��Center=�6q   5      � 5   
   $��1��6   $��10q�6   .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ HistoryDataGrid��5         AutoGenerateColumns$ False��60      CanUserAddRows$ False��6L      
IsReadOnly$
 True��6c      SelectionMode$ Single=�6u      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Ngày Đặt Lịch��6)   	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 * 6d   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6@   �� *AppointmentDate+6d     5      $ Thời Gian Hẹn��6)   $	 * 6d   
 6@   �� *AppointmentTime+6d     5      $ Tên Bác Sĩ��6)   $		 150 6\   
 6=   �� *
DoctorName+6\     5      $ Dịch Vụ Khám��6)   $		 100 6_   
 6?   �� *ServiceName+6_     5      $
 Giá��6)   $	 * 6P   
 66   �� *Price+6P     5      $ Chuẩn đoán��6)   $	 * 6[   
 6=   �� *	Diagnosis+6[     5      $ Bệnh��6)   $	 * 6S   
 67   �� *	Disease+6S     5       $ Kết Quả��6)   $	 * 6Q   
 6:   �� *KQ+6Q   5"      5#      5$      5%      