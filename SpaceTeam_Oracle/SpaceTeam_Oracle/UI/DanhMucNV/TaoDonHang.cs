
using System;
using System.Linq;
using System.Windows.Forms;
using System.Data;
using System.Collections.Generic;

namespace SpaceTeam_Oracle.SpaceTeam.DanhMucNV
{
    public partial class TaoDonHang : Form
    {
        SpaceTeam_Oracle db = new SpaceTeam_Oracle();

        public TaoDonHang()
        {
            InitializeComponent();
        }

        #region Load Form
        private void TaoDonHang_Load(object sender, EventArgs e)
        {
            //this.TopMost = true;
            //this.FormBorderStyle = FormBorderStyle.FixedDialog;
            //this.WindowState = FormWindowState.Normal;
            LoadComboboxLoai();
            LoadComboboxKhachHang();
            LoadComboboxNhanVien();
            LoadComboboxCN();
            GetDataGridView();
        }
        #endregion

        #region Load Combobox KhachHang 

        public void LoadComboboxKhachHang()
        {
            try
            {
                List<KHACHHANG> listKhachHang = db.KHACHHANGs.ToList();
                cmbMaKhachHang.DataSource = listKhachHang;
                cmbMaKhachHang.DisplayMember = "MAKH";
                cmbMaKhachHang.ValueMember = "MAKH";
                cmbTenKhachHang.DataSource = listKhachHang;
                cmbTenKhachHang.DisplayMember = "HOTEN";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi  " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion

        #region Load Combobox Loai

        public void LoadComboboxLoai()
        {
            try
            {
                List<LOAI> listLoai = db.LOAIs.ToList();
                cmbLoai.DataSource = listLoai;
                cmbLoai.DisplayMember = "TENLOAI";
                cmbLoai.ValueMember = "MALOAI";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi  " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion

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
                cmbMaNV.DataSource = listNhanVien;
                cmbMaNV.DisplayMember = "MANV";
                cmbMaNV.ValueMember = "MANV";
                cmbTenNV.DataSource = listNhanVien;
                cmbTenNV.DisplayMember = "HOTEN";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi  " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion

        #region Load Combobox HANGHOA

        public void LoadComboboxHangHoa(int maLoai)
        {
            try
            {
                List<HANGHOA> listHangHoa = db.HANGHOAs.Where(hh => hh.MALOAI == maLoai).ToList();
                cmbMaHang.DataSource = listHangHoa;
                cmbMaHang.ValueMember = "MAHH";
                cmbMaHang.DisplayMember = "TENHH";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi  " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion

        #region Hàm chuyển số thành chữ
        public static string ChuyenSoSangChu(string sNumber)
        {
            int mLen, mDigit;
            string mTemp = "";
            string[] mNumText;
            //Xóa các dấu "," nếu có
            sNumber = sNumber.Replace(",", "");
            mNumText = "không;một;hai;ba;bốn;năm;sáu;bảy;tám;chín".Split(';');
            mLen = sNumber.Length - 1; // trừ 1 vì thứ tự đi từ 0
            for (int i = 0; i <= mLen; i++)
            {
                mDigit = Convert.ToInt32(sNumber.Substring(i, 1));
                mTemp = mTemp + " " + mNumText[mDigit];
                if (mLen == i) // Chữ số cuối cùng không cần xét tiếp break; 
                    switch ((mLen - i) % 9)
                    {
                        case 0:
                            mTemp = mTemp + " tỷ";
                            if (sNumber.Substring(i + 1, 3) == "000") i = i + 3;
                            if (sNumber.Substring(i + 1, 3) == "000") i = i + 3;
                            if (sNumber.Substring(i + 1, 3) == "000") i = i + 3;
                            break;
                        case 6:
                            mTemp = mTemp + " triệu";
                            if (sNumber.Substring(i + 1, 3) == "000") i = i + 3;
                            if (sNumber.Substring(i + 1, 3) == "000") i = i + 3;
                            break;
                        case 3:
                            mTemp = mTemp + " nghìn";
                            if (sNumber.Substring(i + 1, 3) == "000") i = i + 3;
                            break;
                        default:
                            switch ((mLen - i) % 3)
                            {
                                case 2:
                                    mTemp = mTemp + " trăm";
                                    break;
                                case 1:
                                    mTemp = mTemp + " mươi";
                                    break;
                            }
                            break;
                    }
            }
            //Loại bỏ trường hợp x00
            mTemp = mTemp.Replace("không mươi không ", "");
            mTemp = mTemp.Replace("không mươi không", ""); //Loại bỏ trường hợp 00x 
            mTemp = mTemp.Replace("không mươi ", "linh "); //Loại bỏ trường hợp x0, x>=2
            mTemp = mTemp.Replace("mươi không", "mươi");
            //Fix trường hợp 10
            mTemp = mTemp.Replace("một mươi", "mười");
            //Fix trường hợp x4, x>=2
            mTemp = mTemp.Replace("mươi bốn", "mươi tư");
            //Fix trường hợp x04
            mTemp = mTemp.Replace("linh bốn", "linh tư");
            //Fix trường hợp x5, x>=2
            mTemp = mTemp.Replace("mươi năm", "mươi lăm");
            //Fix trường hợp x1, x>=2
            mTemp = mTemp.Replace("mươi một", "mươi mốt");
            //Fix trường hợp x15
            mTemp = mTemp.Replace("mười năm", "mười lăm");
            //Bỏ ký tự space
            mTemp = mTemp.Trim();
            //Viết hoa ký tự đầu tiên
            mTemp = mTemp.Substring(0, 1).ToUpper() + mTemp.Substring(1) + " đồng";
            return mTemp;
        }


        #endregion

        #region Hàm Get Id Hóa Đơn
        int GetIdBill()
        {
            int dem = 1;
            while (true)
            {
                var c = db.HOADONs.Where(w => w.MAHD == dem).SingleOrDefault();
                if (c == null)
                {
                    return dem;
                }
                dem++;
            }
        }
        #endregion

        #region Selection Loai ra Hàng Hóa
        private void cmbLoai_SelectionChangeCommitted(object sender, EventArgs e)
        {
            int loai = int.Parse(cmbLoai.SelectedValue.ToString());
            LoadComboboxHangHoa(loai);
        }
        #endregion

        #region Selection MaHang ra thông tin hàng hóa
        private void cmbMaHang_SelectionChangeCommitted(object sender, EventArgs e)
        {
            int maHH = int.Parse(cmbMaHang.SelectedValue.ToString());
            GetHangHoa(maHH);
        }
        #endregion

        #region Hàm lấy thông tin hàng hóa
        public void GetHangHoa(int maHH)
        {
            var hh = db.HANGHOAs.Where(h => h.MAHH == maHH).SingleOrDefault();
            txtDonGia.Text = hh.DONGIA.ToString();
            txtGiamGia.Text = hh.GIAMGIA.ToString();
            txtTenHang.Text = hh.TENHH.ToString();
        }
        #endregion

        #region Hàm check ID Hóa đơn
        public int CheckIdHD(int idHD)
        {
            var hd = db.HOADONs.Where(h => h.MAHD == idHD).SingleOrDefault();
            if (hd != null)
                return hd.MAHD;
            return -1;
        }
        #endregion

        #region Hàm Insert Bill
        public void InsertBill(int maHD, int maCN, int maKH, string hoTen, string diaChi, string SDT, string ghiChu, int maNV, DateTime ngayTao)
        {
            HOADON add = new HOADON();
            add.MACN = maCN;
            add.MAHD = maHD;
            add.MAKH = maKH;
            add.HOTEN = hoTen;
            add.DIACHI = diaChi;
            add.SDT = SDT;
            add.GHICHU = ghiChu;
            add.MANV = maNV;
            add.NGAYTAO = ngayTao;
            db.HOADONs.Add(add);
            db.SaveChanges();
        }
        #endregion

        #region Hàm Insert CTHD
        public void InsertBillDetail(int maHoaDon, int maHangHoa, int donGia, int giamgia, int soLuong)
        {
            CHITIETHD add = new CHITIETHD();
            add.MAHD = maHoaDon;
            add.MAHH = maHangHoa;
            add.DONGIA = donGia;
            add.GIAMGIA = giamgia;
            add.SOLUONG = soLuong;
            db.CHITIETHDs.Add(add);
            db.SaveChanges();
        }
        #endregion

        #region Hàm Update Bill
        public void Update(int maHD, int maCN, int maKH, string hoTen, string diaChi, string SDT, string ghiChu, int maNV)
        {
            SpaceTeam_Oracle db = new SpaceTeam_Oracle();
            HOADON update = db.HOADONs.SingleOrDefault(hd => hd.MAHD == maHD);
            update.MACN = maCN;
            update.MAKH = maKH;
            update.HOTEN = hoTen;
            update.DIACHI = diaChi;
            update.SDT = SDT;
            update.GHICHU = ghiChu;
            update.MANV = maNV;
            db.SaveChanges();
        }
        #endregion

        #region Hàm Delete Bill
        public void Delete(int maHD)
        {
            SpaceTeam_Oracle db = new SpaceTeam_Oracle();
            var hoaDon = db.HOADONs.Where(hd => hd.MAHD == 1).SingleOrDefault();

            db.HOADONs.Remove(hoaDon);
            db.SaveChanges();
        }
        #endregion

        #region btn Add Đơn Hàng
        private void btnAddDH_Click(object sender, EventArgs e)
        {
            int maHD = GetIdBill();
            int maKH = int.Parse(cmbMaKhachHang.SelectedValue.ToString());
            int maCN = int.Parse(cmbChiNhanh.SelectedValue.ToString());
            string hoTen = cmbTenKhachHang.Text;
            string diaChi = txtDiaChi.Text;
            string soDienThoai = txtSoDienThoai.Text;
            string ghiChu = txtGhiChu.Text;
            DateTime ngayTao = dtNgayBan.Value;
            int maNV = int.Parse(cmbMaNV.SelectedValue.ToString());
            string tongTien = txtTongTien.Text;
            

            try
            {
                InsertBill(maHD, maCN, maKH, hoTen, diaChi, soDienThoai, ghiChu, maNV, ngayTao);
                MessageBox.Show("Thêm Đơn Hàng Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            catch (Exception ex)
            {
                MessageBox.Show("Thêm Đơn Hàng Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion

        #region button Thêm Món cho đơn hàng
        private void btnThemMon_Click(object sender, EventArgs e)
        {
            try
            {
                int maHoaDon = int.Parse(txtMaHD.Text);
                int check = CheckIdHD(maHoaDon);
                int maCN = int.Parse(cmbChiNhanh.SelectedValue.ToString());
                int maHangHoa = int.Parse(cmbMaHang.SelectedValue.ToString());
                int soLuong = (int)nupSL.Value;
                int giamGia = int.Parse(txtGiamGia.Text);
                int donGia = int.Parse(txtDonGia.Text);
                string test = cmbMaKhachHang.SelectedValue.ToString();
                if (check == -1)
                {
                    int maKH = int.Parse(cmbMaKhachHang.SelectedValue.ToString());
                    string hoTen = cmbTenKhachHang.Text;
                    string diaChi = txtDiaChi.Text;
                    string soDienThoai = txtSoDienThoai.Text;
                    string ghiChu = txtGhiChu.Text;
                    int maNV = int.Parse(cmbMaNV.SelectedValue.ToString());
                    string tongTien = txtTongTien.Text;
                    DateTime ngayTao = dtNgayBan.Value;
                    try
                    {
                        InsertBill(maHoaDon, maCN, maKH, hoTen, diaChi, soDienThoai, ghiChu, maNV, ngayTao);
                        InsertBillDetail(maHoaDon, maHangHoa, donGia, giamGia, soLuong);
                        GetDataGridViewCTDH(maHoaDon);
                        MessageBox.Show("Thêm Đơn Hàng Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Thêm vào Đơn Hàng Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                else
                {
                    InsertBillDetail(maHoaDon, maHangHoa, donGia, giamGia, soLuong);
                    GetDataGridViewCTDH(maHoaDon);
                    MessageBox.Show("Thêm vào đơn hàng thành công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Thêm Đơn Hàng Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion

        #region btn Thoat
        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult mess = MessageBox.Show("Bạn có muốn thoát hay không", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (mess == DialogResult.OK)
            {
                Close();
            }
        }
        #endregion

        private void dataGridDonHang_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = this.dataGridDonHang.Rows[e.RowIndex];
                txtMaHD.Text = row.Cells[0].Value.ToString();
               
                cmbTenKhachHang.Text = row.Cells[1].Value.ToString();
                txtDiaChi.Text = row.Cells[2].Value.ToString();
                txtSoDienThoai.Text = row.Cells[3].Value.ToString();
                txtGhiChu.Text = row.Cells[4].Value.ToString();
                dtNgayBan.Value = Convert.ToDateTime(row.Cells[5].Value.ToString());

                cmbMaNV.Text = row.Cells[6].Value.ToString();
                cmbTenNV.Text = row.Cells[7].Value.ToString();
                cmbChiNhanh.Text = row.Cells[8].Value.ToString();
                GetDataGridViewCTDH(int.Parse(row.Cells[0].Value.ToString()));
            }

        }

        #region Load DataGridView
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
            dataGridDonHang.DataSource = ListEmployee;
            dataGridDonHang.Columns[0].HeaderText = "Mã hóa đơn";
            dataGridDonHang.Columns[1].HeaderText = "Họ tên khách hàng";
            dataGridDonHang.Columns[2].HeaderText = "Địa chỉ";
            dataGridDonHang.Columns[3].HeaderText = "Điện Thoại";
            dataGridDonHang.Columns[4].HeaderText = "Ghi chú";
            dataGridDonHang.Columns[5].HeaderText = "Ngày tạo đơn hàng";
            dataGridDonHang.Columns[6].HeaderText = "Mã nhân viên";
            dataGridDonHang.Columns[7].HeaderText = "Nhân viên bán hàng";
            dataGridDonHang.Columns[8].HeaderText = "Tên Chi Nhánh";
            dataGridDonHang.Columns[0].Width = 30;
            dataGridDonHang.Columns[1].Width = 130;
            dataGridDonHang.Columns[2].Width = 120;
            dataGridDonHang.Columns[3].Width = 90;
            dataGridDonHang.Columns[4].Width = 120;
            dataGridDonHang.Columns[5].Width = 100;
            dataGridDonHang.Columns[6].Width = 40;
            dataGridDonHang.Columns[7].Width = 140;
            dataGridDonHang.Columns[8].Width = 120;
        }
        #endregion

        #region Load DataGridView
        public void GetDataGridViewCTDH(int maHD)
        {
            var employeeData = from hd in db.HOADONs
                               join ct in db.CHITIETHDs
                               on hd.MAHD equals ct.MAHD
                               join hh in db.HANGHOAs
                               on ct.MAHH equals hh.MAHH
                               where ct.MAHD == maHD
                               select new
                               {
                                   ct.MAHD,
                                   ct.MAHH,
                                   hh.TENHH,
                                   ct.SOLUONG,
                                   ct.DONGIA,
                                   TONGTIEN = ct.DONGIA * ct.SOLUONG
                               };

            var ListEmployee = employeeData.ToList();
            dataGridBillDetail.DataSource = ListEmployee;
            dataGridBillDetail.Columns[0].HeaderText = "Mã hóa đơn";
            dataGridBillDetail.Columns[1].HeaderText = "Mã hàng hóa";
            dataGridBillDetail.Columns[2].HeaderText = "Tên hàng hóa";
            dataGridBillDetail.Columns[3].HeaderText = "Số Lượng ";
            dataGridBillDetail.Columns[4].HeaderText = "Đơn Giá";
            dataGridBillDetail.Columns[5].HeaderText = "Tổng Tiền";
            dataGridBillDetail.Columns[0].Width = 60;
            dataGridBillDetail.Columns[1].Width = 60;
            dataGridBillDetail.Columns[2].Width = 160;
            dataGridBillDetail.Columns[3].Width = 40;
            dataGridBillDetail.Columns[4].Width = 80;
            dataGridBillDetail.Columns[5].Width = 80;
        }
        #endregion
    }
}
