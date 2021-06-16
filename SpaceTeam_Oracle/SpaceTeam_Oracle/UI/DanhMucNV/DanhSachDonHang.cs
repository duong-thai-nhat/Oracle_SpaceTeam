using SpaceTeam_Oracle.UI;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SpaceTeam_Oracle.SpaceTeam.DanhMucNV
{
    public partial class DanhSachDonHang : Form
    {
        Context db = new Context();
        public DanhSachDonHang()
        {
            InitializeComponent();
        }

        private void DanhSachDonHang_Load(object sender, EventArgs e)
        {
            LoadComboboxCN();
            LoadComboboxNhanVien();
            GetDataGridView();
            cmbChiNhanh.Text = "";
            cmbTenNV.Text = "";
        }
        #region Load Combobox CN
        public void LoadComboboxCN()
        {
            try
            {
                List<CHINHANH> listChiNhanh = db.CHINHANHs.ToList();
                cmbChiNhanh.DataSource = listChiNhanh;
                cmbChiNhanh.DisplayMember = "TENCHINHANH";
                cmbChiNhanh.ValueMember = "MACHINHANH";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi  " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion 
        #region Load Combobox NhanVien 

        public void LoadComboboxNhanVien()
        {
            try
            {
                List<NHANVIEN> listNhanVien = db.NHANVIENs.ToList();
                cmbTenNV.DataSource = listNhanVien;
                cmbTenNV.ValueMember = "MANV";
                cmbTenNV.DisplayMember = "HOTEN";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi  " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion
        #region Load DataGridView Danh Sach Đơn Hàng
        public void GetDataGridView()
        {
            var employeeData = from h in db.HOADONs
                               join c in db.CHINHANHs
                               on h.MACN equals c.MACHINHANH
                               join k in db.KHACHHANGs
                               on h.MAKH equals k.MAKH
                               join nv in db.NHANVIENs
                               on h.MANV equals nv.MANV
                               select new
                               {
                                   h.MAHD,
                                   k.HOTEN,
                                   k.DIACHI,
                                   k.DIENTHOAI,
                                   h.GHICHU,
                                   h.NGAYTAO,
                                   nv.MANV,
                                   TENNV = nv.HOTEN,
                                   c.TENCHINHANH
                               };

            var ListEmployee = employeeData.ToList();
            dataGridViewDonHang.DataSource = ListEmployee;
            dataGridViewDonHang.Columns[0].HeaderText = "Mã hóa đơn";
            dataGridViewDonHang.Columns[1].HeaderText = "Họ tên khách hàng";
            dataGridViewDonHang.Columns[2].HeaderText = "Địa chỉ";
            dataGridViewDonHang.Columns[3].HeaderText = "Điện Thoại";
            dataGridViewDonHang.Columns[4].HeaderText = "Ghi chú";
            dataGridViewDonHang.Columns[5].HeaderText = "Ngày tạo đơn hàng";
            dataGridViewDonHang.Columns[6].HeaderText = "Mã nhân viên";
            dataGridViewDonHang.Columns[7].HeaderText = "Nhân viên bán hàng";
            dataGridViewDonHang.Columns[8].HeaderText = "Tên Chi Nhánh";
            dataGridViewDonHang.Columns[0].Width = 30;
            dataGridViewDonHang.Columns[1].Width = 130;
            dataGridViewDonHang.Columns[2].Width = 120;
            dataGridViewDonHang.Columns[3].Width = 90;
            dataGridViewDonHang.Columns[4].Width = 120;
            dataGridViewDonHang.Columns[5].Width = 100;
            dataGridViewDonHang.Columns[6].Width = 40;
            dataGridViewDonHang.Columns[7].Width = 140;
            dataGridViewDonHang.Columns[8].Width = 120;
        }
        #endregion
        #region button Xem
        private void btnXem_Click(object sender, EventArgs e)
        {
            if (cmbChiNhanh.Text == "")
            {
                TKcmbNV();
            }
            if (cmbTenNV.Text == "")
            {
                TKcmbCN();
            }
            if(cmbChiNhanh.Text != "" && cmbTenNV.Text != "")
            {
                TKcmbCN_cmbNV();
            }
        }
        #endregion
        #region TK cmb Chi Nhanh
        void TKcmbCN()
        {
            var employeeData = from h in db.HOADONs
                               join c in db.CHINHANHs
                               on h.MACN equals c.MACHINHANH
                               join k in db.KHACHHANGs
                               on h.MAKH equals k.MAKH
                               join nv in db.NHANVIENs
                               on h.MANV equals nv.MANV
                               where c.TENCHINHANH.Equals(cmbChiNhanh.Text)
                               select new
                               {
                                   h.MAHD,
                                   k.HOTEN,
                                   k.DIACHI,
                                   k.DIENTHOAI,
                                   h.GHICHU,
                                   h.NGAYTAO,
                                   nv.MANV,
                                   TENNV = nv.HOTEN,
                                   c.TENCHINHANH
                               };
            var ListEmployee = employeeData.ToList();
            dataGridViewDonHang.DataSource = ListEmployee;
            dataGridViewDonHang.Columns[0].HeaderText = "Mã hóa đơn";
            dataGridViewDonHang.Columns[1].HeaderText = "Họ tên khách hàng";
            dataGridViewDonHang.Columns[2].HeaderText = "Địa chỉ";
            dataGridViewDonHang.Columns[3].HeaderText = "Điện Thoại";
            dataGridViewDonHang.Columns[4].HeaderText = "Ghi chú";
            dataGridViewDonHang.Columns[5].HeaderText = "Ngày tạo đơn hàng";
            dataGridViewDonHang.Columns[6].HeaderText = "Mã nhân viên";
            dataGridViewDonHang.Columns[7].HeaderText = "Nhân viên bán hàng";
            dataGridViewDonHang.Columns[8].HeaderText = "Tên Chi Nhánh";
            dataGridViewDonHang.Columns[0].Width = 30;
            dataGridViewDonHang.Columns[1].Width = 130;
            dataGridViewDonHang.Columns[2].Width = 120;
            dataGridViewDonHang.Columns[3].Width = 90;
            dataGridViewDonHang.Columns[4].Width = 120;
            dataGridViewDonHang.Columns[5].Width = 100;
            dataGridViewDonHang.Columns[6].Width = 40;
            dataGridViewDonHang.Columns[7].Width = 140;
            dataGridViewDonHang.Columns[8].Width = 120;
        }
        #endregion
        #region TK cmb Nhan Vien
        void TKcmbNV()
        {
            var employeeData = from h in db.HOADONs
                               join c in db.CHINHANHs
                               on h.MACN equals c.MACHINHANH
                               join k in db.KHACHHANGs
                               on h.MAKH equals k.MAKH
                               join nv in db.NHANVIENs
                               on h.MANV equals nv.MANV
                               where nv.HOTEN == cmbTenNV.Text
                               select new
                               {
                                   h.MAHD,
                                   k.HOTEN,
                                   k.DIACHI,
                                   k.DIENTHOAI,
                                   h.GHICHU,
                                   h.NGAYTAO,
                                   nv.MANV,
                                   TENNV = nv.HOTEN,
                                   c.TENCHINHANH
                               };
            var ListEmployee = employeeData.ToList();
            dataGridViewDonHang.DataSource = ListEmployee;
            dataGridViewDonHang.Columns[0].HeaderText = "Mã hóa đơn";
            dataGridViewDonHang.Columns[1].HeaderText = "Họ tên khách hàng";
            dataGridViewDonHang.Columns[2].HeaderText = "Địa chỉ";
            dataGridViewDonHang.Columns[3].HeaderText = "Điện Thoại";
            dataGridViewDonHang.Columns[4].HeaderText = "Ghi chú";
            dataGridViewDonHang.Columns[5].HeaderText = "Ngày tạo đơn hàng";
            dataGridViewDonHang.Columns[6].HeaderText = "Mã nhân viên";
            dataGridViewDonHang.Columns[7].HeaderText = "Nhân viên bán hàng";
            dataGridViewDonHang.Columns[8].HeaderText = "Tên Chi Nhánh";
            dataGridViewDonHang.Columns[0].Width = 30;
            dataGridViewDonHang.Columns[1].Width = 130;
            dataGridViewDonHang.Columns[2].Width = 120;
            dataGridViewDonHang.Columns[3].Width = 90;
            dataGridViewDonHang.Columns[4].Width = 120;
            dataGridViewDonHang.Columns[5].Width = 100;
            dataGridViewDonHang.Columns[6].Width = 40;
            dataGridViewDonHang.Columns[7].Width = 140;
            dataGridViewDonHang.Columns[8].Width = 120;
        }
        #endregion
        #region TK cmb Chi Nhanh vs NhanVien
        void TKcmbCN_cmbNV()
        {
            var employeeData = from h in db.HOADONs
                               join c in db.CHINHANHs
                               on h.MACN equals c.MACHINHANH
                               join k in db.KHACHHANGs
                               on h.MAKH equals k.MAKH
                               join nv in db.NHANVIENs
                               on h.MANV equals nv.MANV
                               where c.TENCHINHANH.Equals(cmbChiNhanh.Text)
                               && nv.HOTEN.Equals(cmbTenNV.Text)
                               select new
                               {
                                   h.MAHD,
                                   k.HOTEN,
                                   k.DIACHI,
                                   k.DIENTHOAI,
                                   h.GHICHU,
                                   h.NGAYTAO,
                                   nv.MANV,
                                   TENNV = nv.HOTEN,
                                   c.TENCHINHANH
                               };
            var ListEmployee = employeeData.ToList();
            dataGridViewDonHang.DataSource = ListEmployee;
            dataGridViewDonHang.Columns[0].HeaderText = "Mã hóa đơn";
            dataGridViewDonHang.Columns[1].HeaderText = "Họ tên khách hàng";
            dataGridViewDonHang.Columns[2].HeaderText = "Địa chỉ";
            dataGridViewDonHang.Columns[3].HeaderText = "Điện Thoại";
            dataGridViewDonHang.Columns[4].HeaderText = "Ghi chú";
            dataGridViewDonHang.Columns[5].HeaderText = "Ngày tạo đơn hàng";
            dataGridViewDonHang.Columns[6].HeaderText = "Mã nhân viên";
            dataGridViewDonHang.Columns[7].HeaderText = "Nhân viên bán hàng";
            dataGridViewDonHang.Columns[8].HeaderText = "Tên Chi Nhánh";
            dataGridViewDonHang.Columns[0].Width = 30;
            dataGridViewDonHang.Columns[1].Width = 130;
            dataGridViewDonHang.Columns[2].Width = 120;
            dataGridViewDonHang.Columns[3].Width = 90;
            dataGridViewDonHang.Columns[4].Width = 120;
            dataGridViewDonHang.Columns[5].Width = 100;
            dataGridViewDonHang.Columns[6].Width = 40;
            dataGridViewDonHang.Columns[7].Width = 140;
            dataGridViewDonHang.Columns[8].Width = 120;
        }
        #endregion
        #region button Tai Lai
        private void btnTaiLai_Click(object sender, EventArgs e)
        {
            GetDataGridView();
            cmbChiNhanh.Text = "";
            cmbTenNV.Text = "";
        }
        #endregion
    }
}
