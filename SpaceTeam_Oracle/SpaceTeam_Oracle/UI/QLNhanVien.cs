using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Windows.Forms;

namespace SpaceTeam_Oracle.UI
{
    public partial class QLNhanVien : Form
    {
        SpaceTeam_Oracle db = new SpaceTeam_Oracle();
        public QLNhanVien()
        {
            InitializeComponent();
        }

        private void QLNhanVien_Load(object sender, EventArgs e)
        {
            LoadComboboxChiNhanh();
            LoadComboboxChucVu();
            GetDataGridView();
        }

        #region Load Combobox Chi Nhanh

        public void LoadComboboxChiNhanh()
        {
            try
            {
                List<CHINHANH> listChiNhanh = db.CHINHANHs.ToList();
                cmbChiNhanh.DataSource = listChiNhanh;
                cmbChiNhanh.DisplayMember = "TENCHINHANH";
                cmbChiNhanh.ValueMember = "MACHINHANH";
            }
            catch(Exception ex)
            {
                MessageBox.Show("Lỗi  " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            
        }
        #endregion

        #region Load Combobox Chuc Vu

        public void LoadComboboxChucVu()
        {
            try
            {
                List<CHUCVU> listChucVu = db.CHUCVUs.ToList();
                cmbChucVu.DataSource = listChucVu;
                cmbChucVu.DisplayMember = "TENCHUCVU";
                cmbChucVu.ValueMember = "MACHUCVU";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi  " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }
        #endregion

        #region Hàm GetIDNV
        int GetIdNV()
        {
            int dem = 1;
            while (true)
            {
                var c = db.NHANVIENs.Where(w => w.MANV == dem).SingleOrDefault();
                if (c == null)
                {
                    return dem;
                }
                dem++;
            }
        }
        #endregion

        #region Hàm mã hóa SHA1
        public static byte[] GetHashSHA1(string inputString)
        {
            using (HashAlgorithm algorithm = SHA1.Create())
                return algorithm.ComputeHash(Encoding.UTF8.GetBytes(inputString));
        }
        #endregion

        #region Hàm Insert NhanVien
        public void InsertNV(string hoTen, bool gioiTinh, DateTime ngaySinh, string SDT, string diaChi, string tenDN, byte[] matKhau, int maChiNhanh, string maChucVu)
        {
            NHANVIEN add = new NHANVIEN();
            add.MANV = GetIdNV();
            add.HOTEN = hoTen;
            add.GIOITINH = gioiTinh;
            add.NGAYSINH = ngaySinh;
            add.SDT = SDT;
            add.DIACHI = diaChi;
            add.TENDN = tenDN;
            add.MATKHAU = matKhau;
            add.MACHINHANH = maChiNhanh;
            add.MACHUCVU = maChucVu;
            db.NHANVIENs.Add(add);
            db.SaveChanges();
        }
        #endregion

        #region Hàm Update Nhân Viên
        public void UpdateNhanVien(int maNV, string hoTen, bool gioiTinh, DateTime ngaySinh, string SDT, string diaChi, string tenDN, byte[] matKhau, int maChiNhanh, string maChucVu)
        {
            SpaceTeam_Oracle db = new SpaceTeam_Oracle();
            NHANVIEN update = db.NHANVIENs.SingleOrDefault(nv => nv.MANV == maNV);
            update.HOTEN = hoTen;
            update.GIOITINH = gioiTinh;
            update.NGAYSINH = ngaySinh;
            update.SDT = SDT;
            update.DIACHI = diaChi;
            update.TENDN = tenDN;
            update.MATKHAU = matKhau;
            update.MACHINHANH = maChiNhanh;
            update.MACHUCVU = maChucVu;
            db.SaveChanges();
        }
        #endregion

        #region Hàm Delete Bill
        public void Delete(int maNV)
        {
            SpaceTeam_Oracle db = new SpaceTeam_Oracle();
            var nhanVien = db.NHANVIENs.Where(nv => nv.MANV == maNV).SingleOrDefault();

            db.NHANVIENs.Remove(nhanVien);
            db.SaveChanges();
        }
        #endregion

        #region Load DataGridView
        public void GetDataGridView ()
        {
            var employeeData = (from nv in db.NHANVIENs
                               join cn in db.CHINHANHs 
                               on nv.MACHINHANH equals cn.MACHINHANH
                               join cv in db.CHUCVUs
                               on nv.MACHUCVU equals cv.MACHUCVU
                               select new
                               {
                                   nv.MANV,
                                   nv.HOTEN,
                                   nv.GIOITINH,
                                   nv.NGAYSINH,
                                   nv.SDT,
                                   nv.DIACHI,
                                   nv.TENDN, 
                                   cn.TENCHINHANH,
                                   cv.TENCHUCVU, 
                               }).OrderBy(i => i.MANV);

            var ListEmployee = employeeData.ToList();
            dataGridViewEmployee.DataSource = ListEmployee;
            dataGridViewEmployee.Columns[0].HeaderText = "Mã nhân viên";
            dataGridViewEmployee.Columns[1].HeaderText = "Họ tên nhân viên";
            dataGridViewEmployee.Columns[2].HeaderText = "Giới Tính";
            dataGridViewEmployee.Columns[3].HeaderText = "Ngày sinh";
            dataGridViewEmployee.Columns[4].HeaderText = "Số điện thoại";
            dataGridViewEmployee.Columns[5].HeaderText = "Địa chỉ";
            dataGridViewEmployee.Columns[6].HeaderText = "Tên đăng nhập";
            dataGridViewEmployee.Columns[7].HeaderText = "Tên chi nhánh";
            dataGridViewEmployee.Columns[8].HeaderText = "Chức vụ";
            dataGridViewEmployee.Columns[0].Width = 100;
            dataGridViewEmployee.Columns[1].Width = 130;
            dataGridViewEmployee.Columns[2].Width = 80;
            dataGridViewEmployee.Columns[3].Width = 90;
            dataGridViewEmployee.Columns[4].Width = 120;
            dataGridViewEmployee.Columns[5].Width = 190;
            dataGridViewEmployee.Columns[6].Width = 140;
            dataGridViewEmployee.Columns[7].Width = 120;
            dataGridViewEmployee.Columns[8].Width = 160;
        }
        #endregion

        #region Cell CLick

        private void dataGridViewEmployee_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = this.dataGridViewEmployee.Rows[e.RowIndex];
                txtMaNV.Text = row.Cells[0].Value.ToString();
                txtHoTen.Text = row.Cells[1].Value.ToString();
                if (row.Cells[2].Value.ToString() == "True")
                    radioMen.Checked = true;
                if (row.Cells[2].Value.ToString() == "False")
                    radioFemale.Checked = true;
                dtpkBD.Value = Convert.ToDateTime(row.Cells[3].Value);
                txtSDT.Text = row.Cells[4].Value.ToString();
                txtDiaChi.Text = row.Cells[5].Value.ToString();
                txtTenDN.Text = row.Cells[6].Value.ToString();
                cmbChiNhanh.Text = row.Cells[7].Value.ToString();
                cmbChucVu.Text = row.Cells[8].Value.ToString();
            }
        }

        #endregion DONE 

        #region btn Add
        private void btnAdd_Click(object sender, EventArgs e)
        {
            DateTime dateBD = dtpkBD.Value;

            string matKhau = txtMatKhau.Text.Trim();
            byte[] matKhauHash = GetHashSHA1(matKhau);
            string hoTen = txtHoTen.Text;

            bool gioiTinh = true;
            if (radioMen.Checked == true)
            {
                gioiTinh = true;
            }
            if (radioFemale.Checked == true)
            {
                gioiTinh = false;
            }
            string sDT = txtSDT.Text;
            string diaChi = txtDiaChi.Text;
            string tenDN = txtTenDN.Text;
            int chiNhanh = int.Parse(cmbChiNhanh.SelectedValue.ToString());
            string chucVu = cmbChucVu.SelectedValue.ToString();

            try
            {
                InsertNV(hoTen, gioiTinh, dateBD, sDT, diaChi, tenDN, matKhauHash, chiNhanh, chucVu);

                MessageBox.Show("Thêm Nhân Viên Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GetDataGridView();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Thêm Nhân Viên Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            
        }
        #endregion

        #region btn Update 
        private void btnUpdate_Click(object sender, EventArgs e)
        {
            int maNV = int.Parse(txtMaNV.Text);
            DateTime dateBD = dtpkBD.Value;

            string matKhau = txtMatKhau.Text.Trim();
            byte[] matKhauHash = GetHashSHA1(matKhau);
            string hoTen = txtHoTen.Text;

            bool gioiTinh = true;
            if (radioMen.Checked == true)
            {
                gioiTinh = true;
            }
            if (radioFemale.Checked == true)
            {
                gioiTinh = false;
            }

            string sDT = txtSDT.Text;
            string diaChi = txtDiaChi.Text;
            string tenDN = txtTenDN.Text;
            int chiNhanh = int.Parse(cmbChiNhanh.SelectedValue.ToString());
            string chucVu = cmbChucVu.SelectedValue.ToString();

            try
            {
                UpdateNhanVien(maNV, hoTen, gioiTinh, dateBD, sDT, diaChi, tenDN, matKhauHash, chiNhanh, chucVu);

                MessageBox.Show("Update Nhân Viên Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GetDataGridView();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Update Nhân Viên Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion

        #region btn Delete
        private void btnDelete_Click(object sender, EventArgs e)
        {
            int maNV = int.Parse(txtMaNV.Text);
            try
            {
                Delete(maNV);

                MessageBox.Show("Xóa Nhân Viên Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GetDataGridView();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Xóa Nhân Viên Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion

        #region btn Exit
        private void btnExit_Click(object sender, EventArgs e)
        {
            DialogResult mess = MessageBox.Show("Bạn có muốn thoát hay không", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (mess == DialogResult.OK)
            {
                Close();
            }
        }
        #endregion

        #region btn Refesh_Click
        private void btnRefesh_Click(object sender, EventArgs e)
        {
            txtMaNV.Text = "";
            txtMatKhau.Text = " ";
            txtHoTen.Text = " ";
            txtSDT.Text = " ";
            txtDiaChi.Text = " ";
            txtTenDN.Text = " ";
        }
        #endregion

    }
}
