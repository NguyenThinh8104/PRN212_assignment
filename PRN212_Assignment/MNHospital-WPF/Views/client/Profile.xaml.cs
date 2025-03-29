﻿using MNHospital_WPF.Models;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;

namespace MNHospital_WPF.Views.client
{
    /// <summary>
    /// Interaction logic for Profile.xaml
    /// </summary>
    public partial class Profile : Window
    {
        private Account _loggedInUser;

        public Profile(Account loggedInUser)
        {
            InitializeComponent();
            _loggedInUser = loggedInUser;
            this.Closing += Profile_Closed;
            LoadProfileData();
        }
        private void LoadProfileData()
        {
            using (var context = new MnHospitalContext())
            {
                var benhnhan = context.Benhnhans
                    .FirstOrDefault(b => b.Username == _loggedInUser.Username);

                if (benhnhan != null)
                {
                    txtFullName.Text = benhnhan.Name;
                    txtCd.Text = benhnhan.Cccd;
                    txtDob.Text = benhnhan.Dob?.ToString("dd/MM/yyyy") ?? "";
                    txtAddress.Text = benhnhan.Address;
                    txtBaohiem.Text = benhnhan.Baohiem;

                    if (benhnhan.Gender == "Male")
                    {
                        rbtnMale.IsChecked = true;
                    }
                    else if (benhnhan.Gender == "Female")
                    {
                        rbtnFemale.IsChecked = true;
                    }
                    else if (benhnhan.Gender == "")
                    {
                        rbtnOther.IsChecked = true;
                    }
                }
                else
                {
                    MessageBox.Show("Không tìm thấy thông tin bệnh nhân.", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            using (var context = new MnHospitalContext())
            {
                var benhnhan = context.Benhnhans
                    .FirstOrDefault(b => b.Username == _loggedInUser.Username);

                if (benhnhan != null)
                {
                    // Cập nhật các trường dữ liệu
                    benhnhan.Name = txtFullName.Text;
                    benhnhan.Cccd = txtCd.Text;
                    benhnhan.Dob = DateTime.TryParseExact(txtDob.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out DateTime dob) ? DateOnly.FromDateTime(dob) : (DateOnly?)null;
                    benhnhan.Address = txtAddress.Text;
                    benhnhan.Baohiem = txtBaohiem.Text;

                    // Cập nhật giới tính
                    if (rbtnMale.IsChecked == true)
                    {
                        benhnhan.Gender = "Male";
                    }
                    else if (rbtnFemale.IsChecked == true)
                    {
                        benhnhan.Gender = "Female";
                    }
                    else
                    {
                        benhnhan.Gender = "Other";
                    }

                    // Lưu thay đổi vào cơ sở dữ liệu
                    context.SaveChanges();

                    // Thông báo thành công
                    MessageBox.Show("Thông tin đã được cập nhật thành công!", "Thành công", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                else
                {
                    MessageBox.Show("Không tìm thấy thông tin bệnh nhân.", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        private void Profile_Closed(object sender, EventArgs e)
        {

            Home home = new Home(_loggedInUser);
            home.Show();
        }
    }
}

