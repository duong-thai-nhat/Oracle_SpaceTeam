using GUI.SpaceTeam;
using SpaceTeam_Oracle.SpaceTeam;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SpaceTeam_Oracle.UI
{
    public partial class DangNhap : Form
    {
        Context db = new Context();
        public DangNhap()
        {
            InitializeComponent();
        }

        private void DangNhap_Load(object sender, EventArgs e)
        {

        }
        #region SHA1
        public static string HashSHA1(string passwordInput)
        {
            SHA1 sha1 = SHA1.Create();
            byte[] passwordHashData = sha1.ComputeHash(Encoding.ASCII.GetBytes(passwordInput));
            string hashPassword = Convert.ToBase64String(passwordHashData);

            return hashPassword;
        }
        public static byte[] GetHashSHA1(string inputString)
        {
            using (HashAlgorithm algorithm = SHA1.Create())
                return algorithm.ComputeHash(Encoding.UTF8.GetBytes(inputString));
        }
        #endregion

        #region button DangNhap
        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            Context db = new Context();
            if (txtDangNhap.Text != string.Empty && txtMatKhau.Text != string.Empty)
            {
                var user = db.NHANVIENs.FirstOrDefault(nv => nv.TENDN.Equals(txtDangNhap.Text));
                if (user != null)
                {
                    string password = txtMatKhau.Text.Trim();
                    byte[] matKhauHash = GetHashSHA1(password);
                    if (user.MATKHAU.ToString() == matKhauHash.ToString())
                    {
                        if (user.MACHUCVU == "CV01") 
                        {
                            MessageBox.Show(" Mật khẩu đúng ", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            using (DanhMucAdmin Admin = new DanhMucAdmin())
                            if (Admin.ShowDialog() == DialogResult.OK)
                            Application.Run(new DanhMucAdmin());
                            
                        }
                        if (user.MACHUCVU == "CV02")
                        {
                            MessageBox.Show(" Mật khẩu đúng ", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            using (DanhMucNV nV = new DanhMucNV())
                                if (nV.ShowDialog() == DialogResult.OK)
                                    Application.Run(new DanhMucNV());
                        }
                        if (user.MACHUCVU == "CV20")
                        {
                            MessageBox.Show(" Mật khẩu đúng ", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            using (DanhMucQuanLy qL = new DanhMucQuanLy())
                                if (qL.ShowDialog() == DialogResult.OK)
                                    Application.Run(new DanhMucQuanLy());
                        }

                    }
                    else
                    {
                        MessageBox.Show(" Mật khẩu không đúng ", "Lỗi đăng nhập", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                }
                else
                {
                    MessageBox.Show(" Tên đăng nhập không đúng ", "Lỗi đăng nhập", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            else
            {
                MessageBox.Show(" Lỗi kết nối ", "Lỗi đăng nhập", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            //if (string.IsNullOrEmpty(txtDangNhap.Text))
            //{
            //    MessageBox.Show("Please enter your username.", "Message", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    txtDangNhap.Focus();
            //    return;
            //}
            //try
            //{
            //    using (SpaceTeam_Oracle_01 test = new SpaceTeam_Oracle_01())
            //    {
            //        string password = txtMatKhau.Text.Trim();
            //        byte[] matKhauHash = GetHashSHA1(password);
            //        //using linq to query data
            //        var query = from o in test.NHANVIENs
            //                    where o.TENDN == txtDangNhap.Text && o.MANV.Equals(txtMatKhau.Text)
            //                    select o;
            //        //check if user exists
            //        if (query != null)
            //        {
            //            MessageBox.Show("You have been successfully logged in.", "Message", MessageBoxButtons.OK,MessageBoxIcon.Information);
            //            //if ((from o in test.NHANVIENs
            //            //    where o.TENDN == txtDangNhap.Text && o.MANV.Equals(txtMatKhau.Text) && o.MACHUCVU == "CV01"
            //            //    select o) != null)
            //            //{
            //            //    using (DanhMucAdmin Admin = new DanhMucAdmin())
            //            //        if (Admin.ShowDialog() == DialogResult.OK)
            //            //            Application.Run(new DanhMucAdmin());
            //            //}
            //            //if ((from o in test.NHANVIENs
            //            //      where o.TENDN == txtDangNhap.Text && o.MANV.Equals(txtMatKhau.Text) && o.MACHUCVU == "CV20"
            //            //      select o) != null)
            //            //{
            //            //    using (DanhMucNV nV = new DanhMucNV())
            //            //        if (nV.ShowDialog() == DialogResult.OK)
            //            //            Application.Run(new DanhMucNV());
            //            //}
            //            //if ((from o in test.NHANVIENs
            //            //     where o.TENDN == txtDangNhap.Text && o.MANV.Equals(txtMatKhau.Text) && o.MACHUCVU == "CV02"
            //            //     select o) != null)
            //            //{
            //            //    using (DanhMucQuanLy qL = new DanhMucQuanLy())
            //            //        if (qL.ShowDialog() == DialogResult.OK)
            //            //            Application.Run(new DanhMucQuanLy());
            //            //}
            //            //Add your code process login here
            //        }
            //else
            //        {
            //            MessageBox.Show("Your username or password is incorrect.", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //        }
            //    }
            //}
            //catch (Exception ex)
            //{
            //    MessageBox.Show(ex.Message, "Message", MessageBoxButtons.OK, MessageBoxIcon.Error);
            //}
        }
        #endregion
        #region Thoat
        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult mess = MessageBox.Show("Bạn có muốn thoát hay không", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (mess == DialogResult.OK)
            {
                Close();
            }
        }
        #endregion

        private void txtDangNhap_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtMatKhau_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtDangNhap_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)13)//Enter key
                txtMatKhau.Focus();
        }

        private void txtMatKhau_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)13)
                btnDangNhap.PerformClick();
        }
    }
}
