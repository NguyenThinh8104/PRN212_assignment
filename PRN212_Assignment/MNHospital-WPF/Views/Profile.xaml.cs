using System;
using System.Collections.Generic;
using System.ComponentModel;
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
using MNHospital_WPF.Models;

namespace MNHospital_WPF.Views
{
    /// <summary>
    /// Interaction logic for Profile.xaml
    /// </summary>
    public partial class Profile : Window
    {
        private Account _account;
        public Profile()
        {
            InitializeComponent();
        }
        public Profile(Account account)
        {
            _account = account;
        }






        // ...

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            string fullName = txtFullName.Text;
            string idNumber = txtIdNumber.Text;
            string gender = GetGender();
            string dob = txtDob.Text;
            string address = txtAddress.Text;
            string insurance = txtInsurance.Text;

            // Kiểm tra nếu tất cả các trường đều được điền đầy đủ
            if (string.IsNullOrEmpty(fullName) || string.IsNullOrEmpty(idNumber) || string.IsNullOrEmpty(gender) ||
                string.IsNullOrEmpty(dob) || string.IsNullOrEmpty(address) || string.IsNullOrEmpty(insurance))
            {
                MessageBox.Show("Vui lòng điền đầy đủ thông tin.", "Thông Báo", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            try
            {
                // Cập nhật thông tin người dùng vào cơ sở dữ liệu
                using (var context = new MnHospitalContext())
                {
                    var user = context.Benhnhans.SingleOrDefault(b => b.Username == _account.Username);

                    if (user != null)
                    {
                        // Cập nhật các trường thông tin người dùng
                        user.Name = fullName;
                        user.Cccd = idNumber;
                        user.Gender = gender;
                        user.Dob = !DateTime.TryParse(dob, CultureInfo.InvariantCulture, DateTimeStyles.None, out DateTime parsedDob) ? null : DateOnly.FromDateTime(parsedDob);
                        user.Address = address;
                        user.Baohiem = insurance;

                        context.SaveChanges();  // Lưu thay đổi vào cơ sở dữ liệu
                        MessageBox.Show("Thông tin người dùng đã được lưu thành công.", "Thông Báo", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    else
                    {
                        MessageBox.Show("Không tìm thấy người dùng trong hệ thống.", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Đã xảy ra lỗi: {ex.Message}", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
            }

            // Reset lại các trường thông tin
            ResetFields();
        }

        // Hàm lấy giới tính từ các RadioButton
        private string GetGender()
        {
            if (rbtnMale.IsChecked == true)
                return "Nam";
            if (rbtnFemale.IsChecked == true)
                return "Nữ";
            return "Khác";
        }

        // Hàm reset lại các trường nhập liệu
        private void ResetFields()
        {
            txtFullName.Clear();
            txtIdNumber.Clear();
            rbtnMale.IsChecked = false;
            rbtnFemale.IsChecked = false;
            rbtnOther.IsChecked = false;
            txtDob.Clear();
            txtAddress.Clear();
            txtInsurance.Clear();
        }


        private void AutoLogin(string username, string password)
        {
            try
            {
                using (var context = new MnHospitalContext())
                {
                    var user = context.Accounts.SingleOrDefault(u => u.Username == username && u.Userpassword == password);

                    if (user != null)
                    {
                        Home homeWindow = new Home(user);
                        homeWindow.Show();
                        this.Hide();
                    }
                    else
                    {
                        MessageBox.Show("Lỗi đăng nhập, vui lòng thử lại.", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Đã xảy ra lỗi: {ex.Message}", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}


