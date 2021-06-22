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
    public partial class DanhSachHangHoaDaBan : Form
    {
        Context db = new Context();
        public DanhSachHangHoaDaBan()
        {
            InitializeComponent();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void DanhSachHangHoaDaBan_Load(object sender, EventArgs e)
        {
            LoadComboboxCN();
            LoadComboboxNhanVien();
            LoadComboboxSP();
            GetDataGridView();
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

        #region Load Combobox SP
        public void LoadComboboxSP()
        {
            try
            {
                List<HANGHOA> listHangHoa = db.HANGHOAs.ToList();
                cmbTenSP.DataSource = listHangHoa;
                cmbTenSP.ValueMember = "MAHH";
                cmbTenSP.DisplayMember = "TENHH";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi  " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion 

        #region Load DataGridView Hang Hoa Da Ban
        public void GetDataGridView()
        {
            var employeeData = from ct in db.CHITIETHDs
                               join hh in db.HANGHOAs
                               on ct.MAHH equals hh.MAHH
                               where ct.MAHH == hh.MAHH
                               join ncc in db.NHACUNGCAPs
                               on hh.MANCC equals ncc.MANCC
                               join l in db.LOAIs
                               on hh.MALOAI equals l.MALOAI
                               select new
                               {
                                   ct.MAHH,
                                   hh.TENHH,
                                   ct.SOLUONG, 
                                   l.TENLOAI,
                                   hh.DONGIA,
                                   hh.GIAMGIA,
                                   hh.MOTA,
                                   ncc.TENCONGTY

                               };

            var ListEmployee = employeeData.ToList();
            dataGridViewHHDB.DataSource = ListEmployee;
            dataGridViewHHDB.Columns[0].HeaderText = "Mã Hàng Hóa";
            dataGridViewHHDB.Columns[1].HeaderText = "Tên Hàng Hóa";
            dataGridViewHHDB.Columns[2].HeaderText = "Số Lượng";
            dataGridViewHHDB.Columns[3].HeaderText = "Tên Loại";
            dataGridViewHHDB.Columns[4].HeaderText = "Đơn Giá";
            dataGridViewHHDB.Columns[5].HeaderText = "Giảm Giá";
            dataGridViewHHDB.Columns[6].HeaderText = "Mô Tả";
            dataGridViewHHDB.Columns[7].HeaderText = "Tên Công Ty";
            dataGridViewHHDB.Columns[0].Width = 50;
            dataGridViewHHDB.Columns[1].Width = 130;
            dataGridViewHHDB.Columns[2].Width = 50;
            dataGridViewHHDB.Columns[3].Width = 150;
            dataGridViewHHDB.Columns[4].Width = 80;
            dataGridViewHHDB.Columns[5].Width = 50;
            dataGridViewHHDB.Columns[6].Width = 150;
            dataGridViewHHDB.Columns[7].Width = 140;
        }
        #endregion

        #region button Tim Kiem Theo SP
        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            
            string tenHH = cmbTenSP.Text;
            var employeeData = from ct in db.CHITIETHDs
                               join hh in db.HANGHOAs
                               on ct.MAHH equals hh.MAHH
                               where ct.MAHH == hh.MAHH
                               join ncc in db.NHACUNGCAPs
                               on hh.MANCC equals ncc.MANCC
                               join l in db.LOAIs
                               on hh.MALOAI equals l.MALOAI
                               join hd in db.HOADONs
                               on ct.MAHD equals hd.MAHD
                               join cn in db.CHINHANHs
                               on hd.MACN equals cn.MACHINHANH
                               join nv in db.NHANVIENs
                               on hd.MANV equals nv.MANV
                               where tenHH == hh.TENHH
                               select new
                               {
                                   ct.MAHH,
                                   hh.TENHH,
                                   ct.SOLUONG,
                                   l.TENLOAI,
                                   hh.DONGIA,
                                   hh.GIAMGIA,
                                   hh.MOTA,
                                   ncc.TENCONGTY

                               };

            var ListEmployee = employeeData.ToList();
            dataGridViewHHDB.DataSource = ListEmployee;
            dataGridViewHHDB.Columns[0].HeaderText = "Mã Hàng Hóa";
            dataGridViewHHDB.Columns[1].HeaderText = "Tên Hàng Hóa";
            dataGridViewHHDB.Columns[2].HeaderText = "Số Lượng";
            dataGridViewHHDB.Columns[3].HeaderText = "Tên Loại";
            dataGridViewHHDB.Columns[4].HeaderText = "Đơn Giá";
            dataGridViewHHDB.Columns[5].HeaderText = "Giảm Giá";
            dataGridViewHHDB.Columns[6].HeaderText = "Mô Tả";
            dataGridViewHHDB.Columns[7].HeaderText = "Tên Công Ty";
            dataGridViewHHDB.Columns[0].Width = 50;
            dataGridViewHHDB.Columns[1].Width = 130;
            dataGridViewHHDB.Columns[2].Width = 50;
            dataGridViewHHDB.Columns[3].Width = 150;
            dataGridViewHHDB.Columns[4].Width = 80;
            dataGridViewHHDB.Columns[5].Width = 50;
            dataGridViewHHDB.Columns[6].Width = 150;
            dataGridViewHHDB.Columns[7].Width = 140;
        }
        #endregion

        #region button Tim Kiem Theo CN
        private void btnTimKiemCN_Click(object sender, EventArgs e)
        {
        }
        #endregion

        #region button Tim Kiem Theo NV
        private void btnTimKiemNV_Click(object sender, EventArgs e)
        {
            string tenNV = cmbTenNV.Text;
            var employeeData = from ct in db.CHITIETHDs
                               join hh in db.HANGHOAs
                               on ct.MAHH equals hh.MAHH
                               where ct.MAHH == hh.MAHH
                               join ncc in db.NHACUNGCAPs
                               on hh.MANCC equals ncc.MANCC
                               join l in db.LOAIs
                               on hh.MALOAI equals l.MALOAI
                               join hd in db.HOADONs
                               on ct.MAHD equals hd.MAHD
                               join cn in db.CHINHANHs
                               on hd.MACN equals cn.MACHINHANH
                               join nv in db.NHANVIENs
                               on hd.MANV equals nv.MANV
                               where tenNV == nv.HOTEN
                               select new
                               {
                                   ct.MAHH,
                                   hh.TENHH,
                                   ct.SOLUONG,
                                   l.TENLOAI,
                                   hh.DONGIA,
                                   hh.GIAMGIA,
                                   hh.MOTA,
                                   ncc.TENCONGTY

                               };

            var ListEmployee = employeeData.ToList();
            dataGridViewHHDB.DataSource = ListEmployee;
            dataGridViewHHDB.Columns[0].HeaderText = "Mã Hàng Hóa";
            dataGridViewHHDB.Columns[1].HeaderText = "Tên Hàng Hóa";
            dataGridViewHHDB.Columns[2].HeaderText = "Số Lượng";
            dataGridViewHHDB.Columns[3].HeaderText = "Tên Loại";
            dataGridViewHHDB.Columns[4].HeaderText = "Đơn Giá";
            dataGridViewHHDB.Columns[5].HeaderText = "Giảm Giá";
            dataGridViewHHDB.Columns[6].HeaderText = "Mô Tả";
            dataGridViewHHDB.Columns[7].HeaderText = "Tên Công Ty";
            dataGridViewHHDB.Columns[0].Width = 50;
            dataGridViewHHDB.Columns[1].Width = 130;
            dataGridViewHHDB.Columns[2].Width = 50;
            dataGridViewHHDB.Columns[3].Width = 150;
            dataGridViewHHDB.Columns[4].Width = 80;
            dataGridViewHHDB.Columns[5].Width = 50;
            dataGridViewHHDB.Columns[6].Width = 150;
            dataGridViewHHDB.Columns[7].Width = 140;
        }
        #endregion

        
        private void btnTimKiemNB_Click(object sender, EventArgs e)
        {
            DateTime TKNgayBanTu = dtTKNgayBanTu.Value;
            DateTime TKNgayBanDen = dtTKNgayBanDen.Value;
            var employeeData = from ct in db.CHITIETHDs
                               join hh in db.HANGHOAs
                               on ct.MAHH equals hh.MAHH
                               where ct.MAHH == hh.MAHH
                               join ncc in db.NHACUNGCAPs
                               on hh.MANCC equals ncc.MANCC
                               join l in db.LOAIs
                               on hh.MALOAI equals l.MALOAI
                               join hd in db.HOADONs
                               on ct.MAHD equals hd.MAHD
                               join cn in db.CHINHANHs
                               on hd.MACN equals cn.MACHINHANH
                               join nv in db.NHANVIENs
                               on hd.MANV equals nv.MANV
                               where TKNgayBanTu < hd.NGAYTAO && TKNgayBanDen > hd.NGAYTAO
                               select new
                               {
                                   ct.MAHH,
                                   hh.TENHH,
                                   ct.SOLUONG,
                                   l.TENLOAI,
                                   hh.DONGIA,
                                   hh.GIAMGIA,
                                   hh.MOTA,
                                   ncc.TENCONGTY

                               };

            var ListEmployee = employeeData.ToList();
            dataGridViewHHDB.DataSource = ListEmployee;
            dataGridViewHHDB.Columns[0].HeaderText = "Mã Hàng Hóa";
            dataGridViewHHDB.Columns[1].HeaderText = "Tên Hàng Hóa";
            dataGridViewHHDB.Columns[2].HeaderText = "Số Lượng";
            dataGridViewHHDB.Columns[3].HeaderText = "Tên Loại";
            dataGridViewHHDB.Columns[4].HeaderText = "Đơn Giá";
            dataGridViewHHDB.Columns[5].HeaderText = "Giảm Giá";
            dataGridViewHHDB.Columns[6].HeaderText = "Mô Tả";
            dataGridViewHHDB.Columns[7].HeaderText = "Tên Công Ty";
            dataGridViewHHDB.Columns[0].Width = 50;
            dataGridViewHHDB.Columns[1].Width = 130;
            dataGridViewHHDB.Columns[2].Width = 50;
            dataGridViewHHDB.Columns[3].Width = 150;
            dataGridViewHHDB.Columns[4].Width = 80;
            dataGridViewHHDB.Columns[5].Width = 50;
            dataGridViewHHDB.Columns[6].Width = 150;
            dataGridViewHHDB.Columns[7].Width = 140;
        }

        private void btnTimKiemCN_Click_1(object sender, EventArgs e)
        {
            string tenCN = cmbChiNhanh.Text;
            var employeeData = from ct in db.CHITIETHDs
                               join hh in db.HANGHOAs
                               on ct.MAHH equals hh.MAHH
                               where ct.MAHH == hh.MAHH
                               join ncc in db.NHACUNGCAPs
                               on hh.MANCC equals ncc.MANCC
                               join l in db.LOAIs
                               on hh.MALOAI equals l.MALOAI
                               join hd in db.HOADONs
                               on ct.MAHD equals hd.MAHD
                               join cn in db.CHINHANHs
                               on hd.MACN equals cn.MACHINHANH
                               join nv in db.NHANVIENs
                               on hd.MANV equals nv.MANV
                               where tenCN == cn.TENCHINHANH
                               select new
                               {
                                   ct.MAHH,
                                   hh.TENHH,
                                   ct.SOLUONG,
                                   l.TENLOAI,
                                   hh.DONGIA,
                                   hh.GIAMGIA,
                                   hh.MOTA,
                                   ncc.TENCONGTY

                               };

            var ListEmployee = employeeData.ToList();
            dataGridViewHHDB.DataSource = ListEmployee;
            dataGridViewHHDB.Columns[0].HeaderText = "Mã Hàng Hóa";
            dataGridViewHHDB.Columns[1].HeaderText = "Tên Hàng Hóa";
            dataGridViewHHDB.Columns[2].HeaderText = "Số Lượng";
            dataGridViewHHDB.Columns[3].HeaderText = "Tên Loại";
            dataGridViewHHDB.Columns[4].HeaderText = "Đơn Giá";
            dataGridViewHHDB.Columns[5].HeaderText = "Giảm Giá";
            dataGridViewHHDB.Columns[6].HeaderText = "Mô Tả";
            dataGridViewHHDB.Columns[7].HeaderText = "Tên Công Ty";
            dataGridViewHHDB.Columns[0].Width = 50;
            dataGridViewHHDB.Columns[1].Width = 130;
            dataGridViewHHDB.Columns[2].Width = 50;
            dataGridViewHHDB.Columns[3].Width = 150;
            dataGridViewHHDB.Columns[4].Width = 80;
            dataGridViewHHDB.Columns[5].Width = 50;
            dataGridViewHHDB.Columns[6].Width = 150;
            dataGridViewHHDB.Columns[7].Width = 140;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            GetDataGridView();
        }
    }
}
