   M S B A M L   `   `   `  ����B  >WpfApp4, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp4WpfApp4  5   	       WpfApp4.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp4     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � 	Resources 5	         content �� 
TargetType �� Property �� Value 
 border  btn �� 
TargetType��%m  &	        &	 J     &	 �     �� 5   
   " �6    .�5      ��  � ��
 �����6;   5      �� 5   
   " ��6   .�5      ��  � ��
 � � �6<   �� 5       � ��$ 2q�60   6<   5      �� 5   
   " ��6&   .R�5      � .+�5      A� 
��� ���6*   �� 5      $��Center=�6#   $��Center=�6@   6]   5      5      5      .��5      � .+�5   
   �� $&�� Quản lý thông tin sinh viên��6   $��Center=�66   $��0,10,0,0q�6S   $	��Top=�6e   $
��Bold"�6}   $��18(�6�   � 5   
   #��[  6   $	��325��60   $	��Top=�6=   $��
10,49,10,0q�6U   .+�5      �� $��Mã nhân viên��6   $
��Left=�6+   $��41,9,0,0q�6F   $	��Top=�6X   �� 5       $��	Họ tên��6   $
��Left=�6%   $��	41,40,0,0q�6@   $	��Top=�6S   �� 5!      $��
Ngày sinh��6   $
��Left=�6(   $��	41,98,0,0q�6C   $	��Top=�6V   �� 5"      $��Giới tính��6   $
��Left=�6(   $��	41,71,0,0q�6C   $	��Top=�6V   �� 5#      $��
Phòng ban��6   $
��Left=�6(   $��
41,134,0,0q�6C   $	��Top=�6W   �� 5$      $��Hệ số lương��6   $
��Left=�6*   $��
35,165,0,0q�6E   $	��Top=�6Y   �� 5%      -   5         ��Name$ txtCode��5%      $
��Left=�6'   $��
220,13,0,0q�6B    �� TextWrapping$
 Wrap=�6V   $	��Top=�6j   $	��244��6�   �� 5&      -   5        $ txtName��5&      $
��Left=�6'   $��
221,44,0,0q�6B   $
 Wrap=�6V   $	��Top=�6j   $	��245��6�   �� 5'      -   5        $ txtSalaryLevel��5'      $
��Left=�6.   $��221,169,0,0q�6I   $
 Wrap=�6^   $	��Top=�6r   $	��245��6�   (  "System.Windows.Controls.DatePicker  5(      -   5          Name$ dpDob��5(      $
��Left=�6(   $��
221,98,0,0q�6C   $	��Top=�6W   $	��245��6o   	� 5)      -   5        	 	�Name$	 rbMale��5)      $	��Nam��6*   $
��Left=�68   $��
221,77,0,0q�6S   $	��Top=�6g   
 d� 	IsChecked$

 TrueY�6   	� 5*      -   5        $	 rbFMale��5*      $
��Nữ��6+   $
��Left=�68   $��
344,78,0,0q�6S   $	��Top=�6g   �� 5+      -   5         ��Name$ cbDepartment��5+      $
��Left=�6-   $��220,138,0,0q�6H   $	��Top=�6]   $	��242��6u   .@�5,      �� $��Tổ chức��6   �� 5-      $��Kế hoạch��6   �� 5.      $��	Vật tư��6   5/      &   System.Windows.Controls.DataGrid  50      -   5          Name$ dgEmployees��50      $��11,209,11,10q�6,      AutoGenerateColumns$ False��6o      Columns 51      0  *System.Windows.Controls.DataGridTextColumn  52      ,  &System.Windows.Controls.DataGridColumn   Header$ Mã nhân viên��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6X   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6?   �� *Code+6X     53      $ 	Họ tên��6)   $ * 6R    69   �� *Name+6R     54      $ Giới tính��6)   $ * 6W    6<   �� *Gender+6W     55      $ 
Phòng ban��6)   $ * 6[    6<   �� *
Department+6[     56      $ 
Ngày sinh��6)   $ * 6T    6<   �� *Dob+6T     57      $ Tuổi��6)   $ * 6O    67   �� *Age+6O   59      �� 5:      #��[ 6   �� 5<      -	   5         ��Name$ btEnter��5<      $��221,343,494,-42q�6&   $��Nhập��6?   #��[ 6N   6�   �� 5=      -
   5        $ 	btWindow2��5=      $��463,343,252,-42q�6(   $��Window 2��6A   #��[ 6T   6�   5>      5@      5A      