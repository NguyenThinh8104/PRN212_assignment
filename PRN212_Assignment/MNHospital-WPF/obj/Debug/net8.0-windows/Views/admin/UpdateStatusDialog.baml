   M S B A M L   `   `   `  ����I  EMNHospital-WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:MNHospital_WPF.Views.adminMNHospital_WPF.Views.admin  5   	   3    -MNHospital_WPF.Views.admin.UpdateStatusDialog   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:MNHospital_WPF.Views.admin     5   	     � Title$  Update Status��5   	   $	��200��6   $	��400��6,   ���	#FF2C3E50 � WindowStartupLocation$ CenterOwner=�5	      .��5
      � $��20q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $��Update  Status��6   $��18(�6*   $
��Bold"�68   $��0,0,0,10q�6J   $��Center=�6\   �� 5   
   $��1��6    �� Orientation$ Vertical=�6"   $��Center=�69   $��Center=�6T   .+�5      �� $��Select new status:��6   
�������61   �� 5      -   5         ��Name$ cbNewStatus��5      $	��200��6,   .@�5      �� $��Đã xác nhận��6   
 � Tag$ 	Confirmed��65   �� 5      $��Từ chối��6   $ Reject��61   5      5      �� 5   
   $��2��6   $ 
Horizontal=�6"   $��Right=�6;   $��0,20,0,0q�6W   .+�5      �� -   5         ��Name$ 
btnConfirm��5      $��Confirm��6)   $��80��6;   $��0,0,10,0q�6F   6X   �� 5      -   5        $ 	btnCancel��5      $��Cancel��6(   $��80��69   6D   5      5       5!      