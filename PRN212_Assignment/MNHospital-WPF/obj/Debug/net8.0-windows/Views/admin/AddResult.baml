   M S B A M L   `   `   `  ����I  EMNHospital-WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:MNHospital_WPF.Views.adminMNHospital_WPF.Views.admin  5   	   *    $MNHospital_WPF.Views.admin.AddResult   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:MNHospital_WPF.Views.admin     5   	     � Title$  Chuẩn đoán bệnh��5   	   $	��400��6!   $	��400��6.   ���	#FF2C3E50.��5	      � $��20q�6    � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $��Xác nhận bệnh��6   $��24(�6)   
�������$��0��6J   $��2��6W   $��Center=�6k   $��0,0,0,20q�6�   �� 5   
   $��Chuẩn đoán��6   
�������$��1��69   $��Center=�6F   �� 5   
   -   5         ��Name$ txtTitle��5      $	��250��6$   $��30��60   $	��0,5q�6<   $��14(�6I   $��0q�6W   
�������
���   �$��1��6�   $��1��6�   �� 5"   
   $��Result��6   
�������$��2��65   $��Center=�6B   �� 5#   
   -   5        $ 	txtResult��5#      $	��250��6%   $��30��61   $	��0,5q�6=   $��14(�6J   $��0q�6X   
�������
���   �$��2��6�   $��1��6�   �� 5&   
   $��Loại bệnh��6   
�������$��4��68   $��Center=�6E   �� 5'   
    �� Orientation$ 
Horizontal=�6   $��4��6.   $��1��6;   .+�5(      �� -   5         ��Name$ cbBenh��5(      $	��200��6'   $��30��63   $	��0,5q�6?   $��14(�6L   ���	#FF34495E �� DisplayMemberPath$
 Name��6q    �� SelectedValuePath$ Id��6�   5)      �� 5,   
   $ 
Horizontal=�6   $��7��6.   $��2��6;   $��Center=�6O   $
��0,10q�6l   .+�5-      �� -   5        $��Cancel��5-      $��80��6A   $��30��6L   $��10q�6X   ���	#FF7F8C8D
�������$��12(�6�   $
��Bold"�6�   �� 5.      -   5        $��Xác nhận��5.      $��80��6@   $��30��6K   $��10q�6W   ���	#FF2980B9
�������$��12(�6�   $
��Bold"�6�   5/      52      53      