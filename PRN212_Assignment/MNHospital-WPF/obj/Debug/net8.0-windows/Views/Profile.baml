   M S B A M L   `   `   `  ����I  EMNHospital-WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:MNHospital_WPF.Views.clientMNHospital_WPF.Views.client  5   	   "    MNHospital_WPF.Views.Profile   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ;local)clr-namespace:MNHospital_WPF.Views.client     5   	     � Title$   Thông Tin Người Dùng ��5   	   $	��600��6'   $	��600��64   .��5	      � ���	#FF2980B9$��10q�6"    � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��Thông Tin Người Dùng��6   $��20(�60   $
��Bold"�6>   
�������$��Center=�6c   $
��0,10q�6�   �� 5   
   $��1��6   
������� �� CornerRadius$ 10��61    �� Padding$ 20q�6C   $��10q�6P   ._�5      �� .+�5      �� $��Họ và tên:��6   $��14(�6.   $
��Bold"�6<   $��0,10,0,0q�6N   �� 5      -   5         ��Name$ txtFullName��5      $	��0,5q�6/   $��30��6<   �� 5      $��Số CMND/CCCD:��6   $��14(�61   $
��Bold"�6?   $��0,10,0,0q�6Q   �� 5      -   5        $ txtIdNumber��5      $	��0,5q�6/   $��30��6<   �� 5      $��Giới tính:��6   $��14(�6.   $
��Bold"�6<   $��0,10,0,0q�6N   �� 5       �� Orientation$ 
Horizontal=�6   $	��0,5q�66   .+�5      	� -   5         	�Name$ rbtnMale��5   "   $	��Nam��64    	� 	GroupName$ Gender��6B   $��5q�6U   	� 5      -   5        $ 
rbtnFemale��5   "   $
��Nữ��66   $ Gender��6C   $��5q�6V   	� 5      -   5        $ 	rbtnOther��5   "   $��Khác��65   $ Gender��6D   $��5q�6W   5      �� 5!      $��Ngày sinh:��6   $��14(�6.   $
��Bold"�6<   $��0,10,0,0q�6N   �� 5"      -   5        $ txtDob��5"      $	��0,5q�6*   $��30��67   �� 5$      $��Địa chỉ:��6   $��14(�6,   $
��Bold"�6:   $��0,10,0,0q�6L   �� 5%      -   5        $ 
txtAddress��5%      $	��0,5q�6.   $��30��6;   �� 5'      $��Thông tin bảo hiểm:��6   $��14(�67   $
��Bold"�6E   $��0,10,0,0q�6W   �� 5(      -   5        $ txtInsurance��5(      $	��0,5q�60   $��30��6=   �� 5*      $��Save Profile��6   $
��0,10q�60   $��35��6>   $��Center=�6J   $��Bottom=�6g   ���	#FF2980B9
�������6�   5+      5,      5-      5.      