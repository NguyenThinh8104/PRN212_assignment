using MNHospital_WPF.Models;
using System;
using System.Linq;
using System.Windows;

namespace MNHospital_WPF.Views.client
{
    public partial class ProfileDoctor : Window
    {
        private Account _loggedInUser;

        public ProfileDoctor(Account loggedInUser)
        {
            InitializeComponent();
            _loggedInUser = loggedInUser;
            this.Closing += ProfileDoctor_Closed;
            LoadProfileData();
        }

        private void LoadProfileData()
        {
            using (var context = new MnHospitalContext())
            {
                var doctor = context.Bacsis
                    .FirstOrDefault(d => d.Username == _loggedInUser.Username);

                if (doctor != null)
                {
                    txtFullName.Text = doctor.Name;
                    txtCd.Text = doctor.Cccd;
                    txtDob.Text = doctor.Dob?.ToString("dd/MM/yyyy") ?? "";
                    txtAddress.Text = doctor.Address;
                    txtPhone.Text = doctor.Phone;
                    txtSpecialization.Text = doctor.Specialization;

                    // Xử lý giới tính (Gender) đúng cách
                    if (doctor.Gender == "Male")
                    {
                        rbtnMale.IsChecked = true;
                    }
                    else if (doctor.Gender == "Female")
                    {
                        rbtnFemale.IsChecked = true;
                    }
                    else if (doctor.Gender == "")
                    {
                        rbtnOther.IsChecked = true;
                    }
                }
                else
                {
                    MessageBox.Show("Không tìm thấy thông tin bác sĩ.", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        private void ProfileDoctor_Closed(object sender, EventArgs e)
        {
            Home home = new Home(_loggedInUser);
            home.Show();
        }
    }
}
