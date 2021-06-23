using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Windows.Forms;

namespace SpaceTeam_Oracle.SpaceTeam.DanhMucNV
{
    public partial class DoanhThu : Form
    {
        private ContextCUONG db = new ContextCUONG();

        public DoanhThu()
        {
            InitializeComponent();
        }

        private string tongtienNgayBan;
        private string tongtienCN;
        private string tongtienNV;
        private string tongtienTheoNam;
        private string tongtienTheoThang;

        private void DoanhThu_Load(object sender, EventArgs e)
        {
            LoadComboboxCN();
            LoadComboboxNhanVien();
            GetDataGridViewThang();
            GetDataGridViewNam();
            GetDataGridView();
            cmbChiNhanh.Text = "";
            cmbTenNhanVien.Text = "";
            txtTongTienNV.Text = "0";
            txtTongTienCN.Text = "0";
            txtTongTien.Text = "0";
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

        #endregion Load Combobox CN

        #region Load Combobox NhanVien

        public void LoadComboboxNhanVien()
        {
            try
            {
                List<NHANVIEN> listNhanVien = db.NHANVIENs.ToList();
                cmbTenNhanVien.DataSource = listNhanVien;
                cmbTenNhanVien.ValueMember = "MANV";
                cmbTenNhanVien.DisplayMember = "HOTEN";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi  " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        #endregion Load Combobox NhanVien

        #region Load DataGridView Danh Sach Đơn Hàng

        public void GetDataGridView()
        {
            var employeeData = from h in db.HOADONs
                               join c in db.CHINHANHs
                               on h.MACHINHANH equals c.MACHINHANH
                               join k in db.KHACHHANGs
                               on h.MAKH equals k.MAKH
                               join nv in db.NHANVIENs
                               on h.MANV equals nv.MANV
                               //join ct in db.CHITIETHDs
                               //on h.MAHD equals ct.MAHD
                               //join hh in db.HANGHOAs
                               //on ct.MAHH equals hh.MAHH
                               //where h.MAHD == ct.MAHD
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
                                   c.TENCHINHANH,
                                   //TONGTHUCTHU = ct.SOLUONG * hh.DONGIA
                               };

            var ListEmployee = employeeData.ToList();
            dataGridViewTheoNgay.DataSource = ListEmployee;
            dataGridViewTheoNgay.Columns[0].HeaderText = "Mã hóa đơn";
            dataGridViewTheoNgay.Columns[1].HeaderText = "Họ tên khách hàng";
            dataGridViewTheoNgay.Columns[2].HeaderText = "Địa chỉ";
            dataGridViewTheoNgay.Columns[3].HeaderText = "Điện Thoại";
            dataGridViewTheoNgay.Columns[4].HeaderText = "Ghi chú";
            dataGridViewTheoNgay.Columns[5].HeaderText = "Ngày tạo đơn hàng";
            dataGridViewTheoNgay.Columns[6].HeaderText = "Mã nhân viên";
            dataGridViewTheoNgay.Columns[7].HeaderText = "Nhân viên bán hàng";
            dataGridViewTheoNgay.Columns[8].HeaderText = "Tên Chi Nhánh";
            dataGridViewTheoNgay.Columns[0].Width = 50;
            dataGridViewTheoNgay.Columns[1].Width = 130;
            dataGridViewTheoNgay.Columns[2].Width = 120;
            dataGridViewTheoNgay.Columns[3].Width = 90;
            dataGridViewTheoNgay.Columns[4].Width = 120;
            dataGridViewTheoNgay.Columns[5].Width = 100;
            dataGridViewTheoNgay.Columns[6].Width = 40;
            dataGridViewTheoNgay.Columns[7].Width = 140;
            dataGridViewTheoNgay.Columns[8].Width = 120;
        }

        #endregion Load DataGridView Danh Sach Đơn Hàng

        #region Load DataGridView Danh Sach Đơn Hàng Theo Thang

        public void GetDataGridViewThang()
        {
            var employeeData = from h in db.HOADONs
                               join c in db.CHINHANHs
                               on h.MACHINHANH equals c.MACHINHANH
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
                                   c.TENCHINHANH,
                                   //TONGTHUCTHU
                               };

            var ListEmployee = employeeData.ToList();
            dataGridViewTheoTuan.DataSource = ListEmployee;
            dataGridViewTheoTuan.Columns[0].HeaderText = "Mã hóa đơn";
            dataGridViewTheoTuan.Columns[1].HeaderText = "Họ tên khách hàng";
            dataGridViewTheoTuan.Columns[2].HeaderText = "Địa chỉ";
            dataGridViewTheoTuan.Columns[3].HeaderText = "Điện Thoại";
            dataGridViewTheoTuan.Columns[4].HeaderText = "Ghi chú";
            dataGridViewTheoTuan.Columns[5].HeaderText = "Ngày tạo đơn hàng";
            dataGridViewTheoTuan.Columns[6].HeaderText = "Mã nhân viên";
            dataGridViewTheoTuan.Columns[7].HeaderText = "Nhân viên bán hàng";
            dataGridViewTheoTuan.Columns[8].HeaderText = "Tên Chi Nhánh";
            dataGridViewTheoTuan.Columns[0].Width = 50;
            dataGridViewTheoTuan.Columns[1].Width = 130;
            dataGridViewTheoTuan.Columns[2].Width = 120;
            dataGridViewTheoTuan.Columns[3].Width = 90;
            dataGridViewTheoTuan.Columns[4].Width = 120;
            dataGridViewTheoTuan.Columns[5].Width = 100;
            dataGridViewTheoTuan.Columns[6].Width = 40;
            dataGridViewTheoTuan.Columns[7].Width = 140;
            dataGridViewTheoTuan.Columns[8].Width = 120;
        }

        #endregion Load DataGridView Danh Sach Đơn Hàng Theo Thang

        #region Load DataGridView Danh Sach Đơn Hàng Theo Nam

        public void GetDataGridViewNam()
        {
            var TKNamData = from h in db.HOADONs
                            join c in db.CHINHANHs
                            on h.MACHINHANH equals c.MACHINHANH
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
                                c.TENCHINHANH,
                                //TONGTHUCTHU
                            };
            var ListTimKiemNam = TKNamData.ToList();
            dataGridViewTheoThang.DataSource = ListTimKiemNam;
            dataGridViewTheoThang.Columns[0].HeaderText = "Mã hóa đơn";
            dataGridViewTheoThang.Columns[1].HeaderText = "Họ tên khách hàng";
            dataGridViewTheoThang.Columns[2].HeaderText = "Địa chỉ";
            dataGridViewTheoThang.Columns[3].HeaderText = "Điện Thoại";
            dataGridViewTheoThang.Columns[4].HeaderText = "Ghi chú";
            dataGridViewTheoThang.Columns[5].HeaderText = "Ngày tạo đơn hàng";
            dataGridViewTheoThang.Columns[6].HeaderText = "Mã nhân viên";
            dataGridViewTheoThang.Columns[7].HeaderText = "Nhân viên bán hàng";
            dataGridViewTheoThang.Columns[8].HeaderText = "Tên Chi Nhánh";
            dataGridViewTheoThang.Columns[0].Width = 30;
            dataGridViewTheoThang.Columns[1].Width = 130;
            dataGridViewTheoThang.Columns[2].Width = 120;
            dataGridViewTheoThang.Columns[3].Width = 90;
            dataGridViewTheoThang.Columns[4].Width = 120;
            dataGridViewTheoThang.Columns[5].Width = 100;
            dataGridViewTheoThang.Columns[6].Width = 40;
            dataGridViewTheoThang.Columns[7].Width = 140;
            dataGridViewTheoThang.Columns[8].Width = 120;
        }

        #endregion Load DataGridView Danh Sach Đơn Hàng Theo Nam

        #region TK cmb Chi Nhanh

        private void TKcmbCN()
        {
            DateTime TKNgayBanTuNgay = dateTimeTuNgay.Value;
            DateTime TKNgayBanDenNgay = dateTimeDenNgay.Value;
            var employeeData = from h in db.HOADONs
                               join c in db.CHINHANHs
                               on h.MACHINHANH equals c.MACHINHANH
                               join k in db.KHACHHANGs
                               on h.MAKH equals k.MAKH
                               join nv in db.NHANVIENs
                               on h.MANV equals nv.MANV
                               where c.TENCHINHANH.Equals(cmbChiNhanh.Text)
                               && TKNgayBanTuNgay <= h.NGAYTAO
                               && h.NGAYTAO <= TKNgayBanDenNgay
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
                                   c.TENCHINHANH,
                                   //h.TONGTHUCTHU
                               };
            var ListEmployee = employeeData.ToList();
            dataGridViewTheoNgay.DataSource = ListEmployee;
            dataGridViewTheoNgay.Columns[0].HeaderText = "Mã hóa đơn";
            dataGridViewTheoNgay.Columns[1].HeaderText = "Họ tên khách hàng";
            dataGridViewTheoNgay.Columns[2].HeaderText = "Địa chỉ";
            dataGridViewTheoNgay.Columns[3].HeaderText = "Điện Thoại";
            dataGridViewTheoNgay.Columns[4].HeaderText = "Ghi chú";
            dataGridViewTheoNgay.Columns[5].HeaderText = "Ngày tạo đơn hàng";
            dataGridViewTheoNgay.Columns[6].HeaderText = "Mã nhân viên";
            dataGridViewTheoNgay.Columns[7].HeaderText = "Nhân viên bán hàng";
            dataGridViewTheoNgay.Columns[8].HeaderText = "Tên Chi Nhánh";
            dataGridViewTheoNgay.Columns[0].Width = 30;
            dataGridViewTheoNgay.Columns[1].Width = 130;
            dataGridViewTheoNgay.Columns[2].Width = 120;
            dataGridViewTheoNgay.Columns[3].Width = 90;
            dataGridViewTheoNgay.Columns[4].Width = 120;
            dataGridViewTheoNgay.Columns[5].Width = 100;
            dataGridViewTheoNgay.Columns[6].Width = 40;
            dataGridViewTheoNgay.Columns[7].Width = 140;
            dataGridViewTheoNgay.Columns[8].Width = 120;
            //var employt = employeeData.Sum(h => h.TONGTHUCTHU);
            //tongtienCN = employt.ToString();
            //var employt1 = employeeData.Sum(h => h.TONGTHUCTHU);
            //tongtienNgayBan = employt.ToString();
        }

        #endregion TK cmb Chi Nhanh

        #region TK cmb Nhan Vien

        private void TKcmbNV()
        {
            DateTime TKNgayBanTuNgay = dateTimeTuNgay.Value;
            DateTime TKNgayBanDenNgay = dateTimeDenNgay.Value;
            var employeeData = from h in db.HOADONs
                               join c in db.CHINHANHs
                               on h.MACHINHANH equals c.MACHINHANH
                               join k in db.KHACHHANGs
                               on h.MAKH equals k.MAKH
                               join nv in db.NHANVIENs
                               on h.MANV equals nv.MANV
                               where nv.HOTEN == cmbTenNhanVien.Text
                               && TKNgayBanTuNgay <= h.NGAYTAO
                               && h.NGAYTAO <= TKNgayBanDenNgay
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
                                   c.TENCHINHANH,
                                   //h.TONGTHUCTHU
                               };

            var ListEmployee = employeeData.ToList();
            dataGridViewTheoNgay.DataSource = ListEmployee;
            dataGridViewTheoNgay.Columns[0].HeaderText = "Mã hóa đơn";
            dataGridViewTheoNgay.Columns[1].HeaderText = "Họ tên khách hàng";
            dataGridViewTheoNgay.Columns[2].HeaderText = "Địa chỉ";
            dataGridViewTheoNgay.Columns[3].HeaderText = "Điện Thoại";
            dataGridViewTheoNgay.Columns[4].HeaderText = "Ghi chú";
            dataGridViewTheoNgay.Columns[5].HeaderText = "Ngày tạo đơn hàng";
            dataGridViewTheoNgay.Columns[6].HeaderText = "Mã nhân viên";
            dataGridViewTheoNgay.Columns[7].HeaderText = "Nhân viên bán hàng";
            dataGridViewTheoNgay.Columns[8].HeaderText = "Tên Chi Nhánh";
            dataGridViewTheoNgay.Columns[0].Width = 30;
            dataGridViewTheoNgay.Columns[1].Width = 130;
            dataGridViewTheoNgay.Columns[2].Width = 120;
            dataGridViewTheoNgay.Columns[3].Width = 90;
            dataGridViewTheoNgay.Columns[4].Width = 120;
            dataGridViewTheoNgay.Columns[5].Width = 100;
            dataGridViewTheoNgay.Columns[6].Width = 40;
            dataGridViewTheoNgay.Columns[7].Width = 140;
            dataGridViewTheoNgay.Columns[8].Width = 120;
            //var employt = employeeData.Sum(h => h.TONGTHUCTHU);
            //tongtienNV = employt.ToString();
            //var employt1 = employeeData.Sum(h => h.TONGTHUCTHU);
            //tongtienNgayBan = employt.ToString();
        }

        #endregion TK cmb Nhan Vien

        #region TK cmb Chi Nhanh vs NhanVien

        private void TKcmbCN_cmbNV()
        {
            DateTime TKNgayBanTuNgay = dateTimeTuNgay.Value;
            DateTime TKNgayBanDenNgay = dateTimeDenNgay.Value;
            var employeeData = from h in db.HOADONs
                               join c in db.CHINHANHs
                               on h.MACHINHANH equals c.MACHINHANH
                               join k in db.KHACHHANGs
                               on h.MAKH equals k.MAKH
                               join nv in db.NHANVIENs
                               on h.MANV equals nv.MANV
                               where c.TENCHINHANH.Equals(cmbChiNhanh.Text)
                               && nv.HOTEN.Equals(cmbTenNhanVien.Text)
                               && TKNgayBanTuNgay <= h.NGAYTAO
                               && h.NGAYTAO <= TKNgayBanDenNgay
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
                                   c.TENCHINHANH,
                                   //TONGTHUCTHU
                               };
            //var employt = employeeData.Sum(h => h.TONGTHUCTHU);
            //tongtienNV = employt.ToString();
            //var employt1 = employeeData.Sum(h => h.TONGTHUCTHU);
            //tongtienNgayBan = employt.ToString();
            //var employt2 = employeeData.Sum(h => h.TONGTHUCTHU);
            //tongtienCN = employt.ToString();
            var ListEmployee = employeeData.ToList();
            dataGridViewTheoNgay.DataSource = ListEmployee;
            dataGridViewTheoNgay.Columns[0].HeaderText = "Mã hóa đơn";
            dataGridViewTheoNgay.Columns[1].HeaderText = "Họ tên khách hàng";
            dataGridViewTheoNgay.Columns[2].HeaderText = "Địa chỉ";
            dataGridViewTheoNgay.Columns[3].HeaderText = "Điện Thoại";
            dataGridViewTheoNgay.Columns[4].HeaderText = "Ghi chú";
            dataGridViewTheoNgay.Columns[5].HeaderText = "Ngày tạo đơn hàng";
            dataGridViewTheoNgay.Columns[6].HeaderText = "Mã nhân viên";
            dataGridViewTheoNgay.Columns[7].HeaderText = "Nhân viên bán hàng";
            dataGridViewTheoNgay.Columns[8].HeaderText = "Tên Chi Nhánh";
            dataGridViewTheoNgay.Columns[0].Width = 30;
            dataGridViewTheoNgay.Columns[1].Width = 130;
            dataGridViewTheoNgay.Columns[2].Width = 120;
            dataGridViewTheoNgay.Columns[3].Width = 90;
            dataGridViewTheoNgay.Columns[4].Width = 120;
            dataGridViewTheoNgay.Columns[5].Width = 100;
            dataGridViewTheoNgay.Columns[6].Width = 40;
            dataGridViewTheoNgay.Columns[7].Width = 140;
            dataGridViewTheoNgay.Columns[8].Width = 120;
        }

        #endregion TK cmb Chi Nhanh vs NhanVien

        #region TK cmb Chi Nhanh vs NhanVien Null
        private void TKcmbCN_cmbNV_null()
        {
            DateTime TKNgayBanTuNgay = dateTimeTuNgay.Value;
            DateTime TKNgayBanDenNgay = dateTimeDenNgay.Value;
            var employeeData = from h in db.HOADONs
                               join c in db.CHINHANHs
                               on h.MACHINHANH equals c.MACHINHANH
                               join k in db.KHACHHANGs
                               on h.MAKH equals k.MAKH
                               join nv in db.NHANVIENs
                               on h.MANV equals nv.MANV
                               where TKNgayBanTuNgay <= h.NGAYTAO
                               && h.NGAYTAO <= TKNgayBanDenNgay
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
                                   c.TENCHINHANH,
                                   //TONGTHUCTHU
                               };
            var ListEmployee = employeeData.ToList();
            dataGridViewTheoNgay.DataSource = ListEmployee;
            dataGridViewTheoNgay.Columns[0].HeaderText = "Mã hóa đơn";
            dataGridViewTheoNgay.Columns[1].HeaderText = "Họ tên khách hàng";
            dataGridViewTheoNgay.Columns[2].HeaderText = "Địa chỉ";
            dataGridViewTheoNgay.Columns[3].HeaderText = "Điện Thoại";
            dataGridViewTheoNgay.Columns[4].HeaderText = "Ghi chú";
            dataGridViewTheoNgay.Columns[5].HeaderText = "Ngày tạo đơn hàng";
            dataGridViewTheoNgay.Columns[6].HeaderText = "Mã nhân viên";
            dataGridViewTheoNgay.Columns[7].HeaderText = "Nhân viên bán hàng";
            dataGridViewTheoNgay.Columns[8].HeaderText = "Tên Chi Nhánh";
            dataGridViewTheoNgay.Columns[0].Width = 30;
            dataGridViewTheoNgay.Columns[1].Width = 130;
            dataGridViewTheoNgay.Columns[2].Width = 120;
            dataGridViewTheoNgay.Columns[3].Width = 90;
            dataGridViewTheoNgay.Columns[4].Width = 120;
            dataGridViewTheoNgay.Columns[5].Width = 100;
            dataGridViewTheoNgay.Columns[6].Width = 40;
            dataGridViewTheoNgay.Columns[7].Width = 140;
            dataGridViewTheoNgay.Columns[8].Width = 120;
        }

        #endregion TK cmb Chi Nhanh vs NhanVien Null

        #region button Tim Kiem Theo NB
        public void btnTimKiemNB_Click()
        {
            DateTime TKNgayBanTheoNgay = dateTimePickerTheoNgay.Value;
            var employeeData = from h in db.HOADONs
                               join c in db.CHINHANHs
                               on h.MACHINHANH equals c.MACHINHANH
                               join k in db.KHACHHANGs
                               on h.MAKH equals k.MAKH
                               join nv in db.NHANVIENs
                               on h.MANV equals nv.MANV
                               where h.NGAYTAO.Day == TKNgayBanTheoNgay.Day
                               && h.NGAYTAO.Month == TKNgayBanTheoNgay.Month
                               && h.NGAYTAO.Year == TKNgayBanTheoNgay.Year
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
                                   c.TENCHINHANH,
                                   //TONGTHUCTHU
                               };
            //var employt = employeeData.Sum(h => h.TONGTHUCTHU);
            //tongtienNgayBan = employt.ToString();
            var ListEmployee = employeeData.ToList();
            dataGridViewTheoNgay.DataSource = ListEmployee;
            dataGridViewTheoNgay.Columns[0].HeaderText = "Mã hóa đơn";
            dataGridViewTheoNgay.Columns[1].HeaderText = "Họ tên khách hàng";
            dataGridViewTheoNgay.Columns[2].HeaderText = "Địa chỉ";
            dataGridViewTheoNgay.Columns[3].HeaderText = "Điện Thoại";
            dataGridViewTheoNgay.Columns[4].HeaderText = "Ghi chú";
            dataGridViewTheoNgay.Columns[5].HeaderText = "Ngày tạo đơn hàng";
            dataGridViewTheoNgay.Columns[6].HeaderText = "Mã nhân viên";
            dataGridViewTheoNgay.Columns[7].HeaderText = "Nhân viên bán hàng";
            dataGridViewTheoNgay.Columns[8].HeaderText = "Tên Chi Nhánh";
            dataGridViewTheoNgay.Columns[0].Width = 50;
            dataGridViewTheoNgay.Columns[1].Width = 130;
            dataGridViewTheoNgay.Columns[2].Width = 120;
            dataGridViewTheoNgay.Columns[3].Width = 90;
            dataGridViewTheoNgay.Columns[4].Width = 120;
            dataGridViewTheoNgay.Columns[5].Width = 100;
            dataGridViewTheoNgay.Columns[6].Width = 40;
            dataGridViewTheoNgay.Columns[7].Width = 140;
            dataGridViewTheoNgay.Columns[8].Width = 120;
        }

        #endregion button Tim Kiem Theo NB

        private void btnTK_Click(object sender, EventArgs e)
        {
            if (cmbChiNhanh.Text == "")
            {
                TKcmbNV();
                txtTongTienNV.Text = tongtienNV;
                txtTongTienCN.Text = "0";
            }
            if (cmbTenNhanVien.Text == "")
            {
                TKcmbCN();
                txtTongTienCN.Text = tongtienCN;
                txtTongTienNV.Text = "0";
            }
            if (cmbChiNhanh.Text != "" && cmbTenNhanVien.Text != "")
            {
                TKcmbCN_cmbNV();
                txtTongTienCN.Text = tongtienCN;
                txtTongTienNV.Text = tongtienNV;
            }
            if (cmbChiNhanh.Text == "" && cmbTenNhanVien.Text == "")
            {
                TKcmbCN_cmbNV_null();
                txtTongTienNV.Text = "0";
                txtTongTienCN.Text = "0";
            }
        }

        private void btnTaiLai_Click(object sender, EventArgs e)
        {
            GetDataGridView();
            cmbChiNhanh.Text = "";
            cmbTenNhanVien.Text = "";
            txtTongTien.Text = "";
            txtTongTienCN.Text = "";
            txtTongTienNV.Text = "";
        }

        private void btnXem_Click(object sender, EventArgs e)
        {
            btnTimKiemNB_Click();
            txtTongTien.Text = tongtienNgayBan;
        }

        private void TienTeNB(object sender, EventArgs e)
        {
            txtTongTien.Text = string.Format("{0:0,0}", decimal.Parse(txtTongTien.Text));
            txtTongTien.SelectionStart = txtTongTien.Text.Length;
        }

        private void txtTongTienCN_TextChanged(object sender, EventArgs e)
        {
            txtTongTienCN.Text = string.Format("{0:0,0}", decimal.Parse(txtTongTienCN.Text));
            txtTongTienCN.SelectionStart = txtTongTienCN.Text.Length;
        }

        private void txtTongTienNV_TextChanged(object sender, EventArgs e)
        {
            txtTongTienNV.Text = string.Format("{0:0,0}", decimal.Parse(txtTongTienNV.Text));
            txtTongTienNV.SelectionStart = txtTongTienNV.Text.Length;
        }

        #region Xem Theo Thang

        public void XemTheoThang()
        {
            var TKThangData = from h in db.HOADONs
                              join c in db.CHINHANHs
                              on h.MACHINHANH equals c.MACHINHANH
                              join k in db.KHACHHANGs
                              on h.MAKH equals k.MAKH
                              join nv in db.NHANVIENs
                              on h.MANV equals nv.MANV
                              where h.NGAYTAO.Month.Equals((int)numericThang.Value)
                              && h.NGAYTAO.Year.Equals((int)numericNam.Value)
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
                                  c.TENCHINHANH,
                                  //TONGTHUCTHU
                              };
            //var employt = TKThangData.Sum(h => h.TONGTHUCTHU);
            //tongtienTheoThang = employt.ToString();
            var ListTimKiemThang = TKThangData.ToList();
            dataGridViewTheoTuan.DataSource = ListTimKiemThang;
            dataGridViewTheoTuan.Columns[0].HeaderText = "Mã hóa đơn";
            dataGridViewTheoTuan.Columns[1].HeaderText = "Họ tên khách hàng";
            dataGridViewTheoTuan.Columns[2].HeaderText = "Địa chỉ";
            dataGridViewTheoTuan.Columns[3].HeaderText = "Điện Thoại";
            dataGridViewTheoTuan.Columns[4].HeaderText = "Ghi chú";
            dataGridViewTheoTuan.Columns[5].HeaderText = "Ngày tạo đơn hàng";
            dataGridViewTheoTuan.Columns[6].HeaderText = "Mã nhân viên";
            dataGridViewTheoTuan.Columns[7].HeaderText = "Nhân viên bán hàng";
            dataGridViewTheoTuan.Columns[8].HeaderText = "Tên Chi Nhánh";
            dataGridViewTheoTuan.Columns[0].Width = 30;
            dataGridViewTheoTuan.Columns[1].Width = 130;
            dataGridViewTheoTuan.Columns[2].Width = 120;
            dataGridViewTheoTuan.Columns[3].Width = 90;
            dataGridViewTheoTuan.Columns[4].Width = 120;
            dataGridViewTheoTuan.Columns[5].Width = 100;
            dataGridViewTheoTuan.Columns[6].Width = 40;
            dataGridViewTheoTuan.Columns[7].Width = 140;
            dataGridViewTheoTuan.Columns[8].Width = 120;
        }

        #endregion Xem Theo Thang

        #region Xem Theo Nam

        public void XemTheoNam()
        {
            var TKNamData = from h in db.HOADONs
                            join c in db.CHINHANHs
                            on h.MACHINHANH equals c.MACHINHANH
                            join k in db.KHACHHANGs
                            on h.MAKH equals k.MAKH
                            join nv in db.NHANVIENs
                            on h.MANV equals nv.MANV
                            where h.NGAYTAO.Year.Equals((int)numericNam1.Value)
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
                                c.TENCHINHANH,
                                //TONGTHUCTHU
                            };
            //var employt = TKNamData.Sum(h => h.TONGTHUCTHU);
            //tongtienTheoNam = employt.ToString();
            var ListTimKiemNam = TKNamData.ToList();
            dataGridViewTheoThang.DataSource = ListTimKiemNam;
            dataGridViewTheoThang.Columns[0].HeaderText = "Mã hóa đơn";
            dataGridViewTheoThang.Columns[1].HeaderText = "Họ tên khách hàng";
            dataGridViewTheoThang.Columns[2].HeaderText = "Địa chỉ";
            dataGridViewTheoThang.Columns[3].HeaderText = "Điện Thoại";
            dataGridViewTheoThang.Columns[4].HeaderText = "Ghi chú";
            dataGridViewTheoThang.Columns[5].HeaderText = "Ngày tạo đơn hàng";
            dataGridViewTheoThang.Columns[6].HeaderText = "Mã nhân viên";
            dataGridViewTheoThang.Columns[7].HeaderText = "Nhân viên bán hàng";
            dataGridViewTheoThang.Columns[8].HeaderText = "Tên Chi Nhánh";
            dataGridViewTheoThang.Columns[0].Width = 30;
            dataGridViewTheoThang.Columns[1].Width = 130;
            dataGridViewTheoThang.Columns[2].Width = 120;
            dataGridViewTheoThang.Columns[3].Width = 90;
            dataGridViewTheoThang.Columns[4].Width = 120;
            dataGridViewTheoThang.Columns[5].Width = 100;
            dataGridViewTheoThang.Columns[6].Width = 40;
            dataGridViewTheoThang.Columns[7].Width = 140;
            dataGridViewTheoThang.Columns[8].Width = 120;
        }

        #endregion Xem Theo Nam

        #region button Xem Thang

        private void btnXemThang_Click(object sender, EventArgs e)
        {
            XemTheoThang();
            txtTongTienThang.Text = tongtienTheoThang;
        }

        #endregion button Xem Thang

        #region button Tai Lai Thang

        private void btnTaiLaiThang_Click(object sender, EventArgs e)
        {
            GetDataGridViewThang();
        }

        #endregion button Tai Lai Thang

        private void btnXemNam_Click(object sender, EventArgs e)
        {
            XemTheoNam();
            txtTongTienNam.Text = tongtienTheoNam;
        }

        private void btnTaiLaiNam_Click(object sender, EventArgs e)
        {
            GetDataGridViewNam();
        }
    }
}