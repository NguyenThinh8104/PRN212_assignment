using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Printing;
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
    /// Interaction logic for ForgetPassword.xaml
    /// </summary>
    public partial class ForgetPassword : Window
    {
        private string _generateOtp;
        private string _userEmail;
        public ForgetPassword()
        {
            InitializeComponent();
        }

        private static string GenerateOTP()
        {
            Random random = new Random();
            StringBuilder otp = new StringBuilder();
            for (int i = 0; i < 6; i++)
            {
                otp.Append(random.Next(0, 10).ToString());
            }
            return otp.ToString();
        }

        public void SendOTPEmail(string email, string otp)
        {
            string senderEmail = "thinhNPHE181767@fpt.edu.vn";
            string senderPassword = "Thinhnguyen08012004";
            try
            {
                MailMessage MailOTP = new MailMessage(senderEmail, email);
                MailOTP.Subject = "OTP for Password Reset";
                MailOTP.Body = $"Your OTP for password reset is: {otp}";

                SmtpClient client = new SmtpClient("smtp.gmail.com")
                {
                    Port = 587,
                    Credentials = new System.Net.NetworkCredential(senderEmail, senderPassword),
                    EnableSsl = true
                };
                client.Send(MailOTP);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error Sending OTP :{ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        private void SendOTPButton_Click(object sender, RoutedEventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string email = txtEmail.Text.Trim();


            if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(email))
            {
                MessageBox.Show("Please enter username and email", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            using (var context = new MnHospitalContext())
            {
                var user = context.Accounts.SingleOrDefault(u => u.Username == username);
                if (user == null)
                {
                    MessageBox.Show("User not found.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }
                _userEmail = user.Email;
                if (user.Email != email)
                {
                    MessageBox.Show("Email does not match with the registered.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                Random random = new Random();
                _generateOtp = random.Next(100000, 999999).ToString();
                SendOTPEmail(_userEmail,_generateOtp);
            }
        }
        private void ChangePasswordButton_Click(object sender, RoutedEventArgs e)
        {
            string enteredOTP = txtOTP.Text.Trim();
            string newPassword = txtNewPassword.Password.Trim();

            if (string.IsNullOrWhiteSpace(enteredOTP) || string.IsNullOrWhiteSpace(newPassword))
            {
                MessageBox.Show("Please enter OTP and new password", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            if (enteredOTP != _generateOtp)
            {
                MessageBox.Show("Invalid OTP", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            using (var context = new MnHospitalContext())
            {
                var user = context.Accounts.SingleOrDefault(u => u.Email == _userEmail);
                if (user == null)
                {
                    MessageBox.Show("User not found.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                user.Userpassword = newPassword;
                context.SaveChanges();

                MessageBox.Show("Password changed successfully.", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                this.Close();
            }
        }
    }
}
