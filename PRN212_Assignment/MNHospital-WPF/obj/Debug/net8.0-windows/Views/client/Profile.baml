   M S B A M L   `   `   `  ����I  EMNHospital-WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:MNHospital_WPF.Views.clientMNHospital_WPF.Views.client  5      )    #MNHospital_WPF.Views.client.Profile   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      ;local)clr-namespace:MNHospital_WPF.Views.client     5        � Title$  Thông Tin Cá Nhân��5      $	��620��6%   $	��600��62   .��5	   
   � ���	#FF2980B9$��10q�6&    � RowDefinitions 5
      �� 5      $
��Auto �6    �� 5      $��* �6    .+�5      �� $��Thông Tin Cá Nhân��6   $��20(�61   $
��Bold"�6?   
�������$��Center=�6d   $
��0,10q�6�   �� 5      $��1��6   
������� �� CornerRadius$ 10��65    �� Padding$ 20q�6G   $��10q�6T   ._�5      �� .+�5      �� $��Họ và tên:��6    $��14(�62   $
��Bold"�6@   $��0,10,0,0q�6R   �� 5      -   5         ��Name$ txtFullName��5      $	��0,5q�63   $��30��6@   �� 5      $��Căn cước công dân:��6    $��14(�6:   $
��Bold"�6H   $��0,10,0,0q�6Z   �� 5      -   5        $ txtCd��5      $	��0,5q�6-   $��30��6:   �� 5      $��Giới tính:��6    $��14(�62   $
��Bold"�6@   $��0,10,0,0q�6R   �� 5       �� Orientation$ 
Horizontal=�6!   $	��0,5q�6:   .+�5      	� -   5         	�Name$ rbtnMale��5   &   $	��Nam��68    	� 	GroupName$ Gender��6F   $��5q�6Y   	� 5      -   5        $ 
rbtnFemale��5   &   $
��Nữ��6:   $ Gender��6G   $��5q�6Z   	� 5      -   5        $ 	rbtnOther��5   &   $��Khác��69   $ Gender��6H   $��5q�6[   5       �� 5"      $��
Năm sinh:��6    $��14(�61   $
��Bold"�6?   $��0,10,0,0q�6Q   �� 5#      -   5        $ txtDob��5#      $	��0,5q�6.   $��30��6;   �� 5%      $��Địa chỉ:��6    $��14(�60   $
��Bold"�6>   $��0,10,0,0q�6P   �� 5&      -   5        $ 
txtAddress��5&      $	��0,5q�62   $��30��6?   �� 5(      $��Bảo hiểm:��6    $��14(�61   $
��Bold"�6?   $��0,10,0,0q�6Q   �� 5)      -   5        $ 
txtBaohiem��5)      $	��0,5q�62   $��30��6?   �� 5*      -	   5         ��Name$ btnSave��5*      $
��Save��6*   $	��150��69   $��40��6E   $��10q�6Q   $��Bottom=�6]   $��Center=�6x   ���	#FF2980B9
�������5+   0   5,      5.      5/      50      