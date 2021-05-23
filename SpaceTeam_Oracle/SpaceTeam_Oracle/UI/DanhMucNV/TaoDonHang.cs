using SpaceTeam_Oracle.BUS;
using System;
using System.Linq;
using System.Windows.Forms;

namespace SpaceTeam_Oracle.SpaceTeam.DanhMucNV
{
    public partial class TaoDonHang : Form
    {
        SpaceTeam_Context db = new SpaceTeam_Context();
        public TaoDonHang()
        {
            InitializeComponent();
        }

        private void TaoDonHang_Load(object sender, EventArgs e)
        {
            //this.TopMost = true;
            //this.WindowState = FormWindowState.Maximized;
        }


        #region Hàm Load Data Grid View Dưới DB lên
        /// <summary>
        /// 
        /// </summary>
        private void LoadDataGridView()
        {
            //string sql;
            //sql = "SELECT a.MaHang, b.TenHang, a.SoLuong, b.DonGiaBan, a.GiamGia,a.ThanhTien FROM tblChiTietHDBan AS a, tblHang AS b WHERE a.MaHDBan = N'" + txtMaHDBan.Text + "' AND a.MaHang=b.MaHang";
            
            //dataGridDonHang.DataSource = ;
            dataGridDonHang.Columns[0].HeaderText = "Mã hàng";
            dataGridDonHang.Columns[1].HeaderText = "Tên hàng";
            dataGridDonHang.Columns[2].HeaderText = "Số lượng";
            dataGridDonHang.Columns[3].HeaderText = "Đơn giá";
            dataGridDonHang.Columns[4].HeaderText = "Giảm giá %";
            dataGridDonHang.Columns[5].HeaderText = "Thành tiền";
            dataGridDonHang.Columns[0].Width = 80;
            dataGridDonHang.Columns[1].Width = 130;
            dataGridDonHang.Columns[2].Width = 80;
            dataGridDonHang.Columns[3].Width = 90;
            dataGridDonHang.Columns[4].Width = 90;
            dataGridDonHang.Columns[5].Width = 90;
            dataGridDonHang.AllowUserToAddRows = false;
            dataGridDonHang.EditMode = DataGridViewEditMode.EditProgrammatically;
        }
        #endregion

        #region Hàm chuyển giờ 1-12 thành  0-12
        public static string ConvertTimeTo24(string hour)
        {
            string h = "";
            switch (hour)
            {
                case "1":
                    h = "13";
                    break;
                case "2":
                    h = "14";
                    break;
                case "3":
                    h = "15";
                    break;
                case "4":
                    h = "16";
                    break;
                case "5":
                    h = "17";
                    break;
                case "6":
                    h = "18";
                    break;
                case "7":
                    h = "19";
                    break;
                case "8":
                    h = "20";
                    break;
                case "9":
                    h = "21";
                    break;
                case "10":
                    h = "22";
                    break;
                case "11":
                    h = "23";
                    break;
                case "12":
                    h = "0";
                    break;
            }
            return h;
        }
        #endregion

        #region Hàm Reset Value trên form
        private void ResetValues()
        {
                //txtMaHDBan.Text = "";
                //txtNgayBan.Text = DateTime.Now.ToShortDateString();
                //cboMaNhanVien.Text = "";
                //cboMaKhach.Text = "";
                //txtTongTien.Text = "0";
                //lblBangChu.Text = "Bằng chữ: ";
                //cboMaHang.Text = "";
                //txtSoLuong.Text = "";
                //txtGiamGia.Text = "0";
                //txtThanhTien.Text = "0";
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



        #region btn Add Đơn Hàng

        private void btnAddDH_Click(object sender, EventArgs e)
        {
            string maHD = txtMaDH.Text;
            int maKH = int.Parse(cmbMaKhachHang.SelectedValue.ToString());
            string hoTen = cmbTenKhachHang.Text;
            string diaChi = txtDiaChi.Text;
            string soDienThoai = txtSoDienThoai.Text;
            string ghiChu = txtGhiChu.Text;
            int maNV = int.Parse(cmbMaNV.SelectedValue.ToString());
            string tongTien = txtTongTien.Text;

            InsertBill(maKH, hoTen, diaChi, soDienThoai, ghiChu, maNV);
        }
        #endregion


        #region Get Id Hóa Đơn
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


        #region Hàm Insert Bill
        public void InsertBill(int maKH, string hoTen, string diaChi, string SDT, string ghiChu, int maNV)
        {
            HOADON add = new HOADON();
            add.MAHD = GetIdBill();
            //add.MAKH = maKH;
            add.MAKH = 1;
            add.HOTEN = hoTen;
            add.DIACHI = diaChi;
            add.SDT = SDT;
            add.GHICHU = ghiChu;
            //add.MANV = maNV;
            add.MANV = 1;
            db.HOADONs.Add(add);
            db.SaveChanges();
        }
        #endregion


        #region Hàm Update Bill
        public void Update(int maHD,int maKH, string hoTen, string diaChi, string SDT, string ghiChu, int maNV)
        {
            SpaceTeam_Context db = new SpaceTeam_Context();
            HOADON update = db.HOADONs.SingleOrDefault(hd => hd.MAHD == maHD);
            //update.MAHD = maHD;
            //add.MAKH = maKH;
            update.MAKH = 1;
            update.HOTEN = hoTen;
            update.DIACHI = diaChi;
            update.SDT = SDT;
            update.GHICHU = ghiChu;
            //add.MANV = maNV;
            update.MANV = 1;
            db.SaveChanges();
        }
        #endregion


        #region Hàm Delete Bill
        public void Delete(int maHD)
        {
            SpaceTeam_Context db = new SpaceTeam_Context();
            var hoaDon = db.HOADONs.Where(hd => hd.MAHD == 1).SingleOrDefault();

            db.HOADONs.Remove(hoaDon);
            db.SaveChanges();
        }
        #endregion

        private void button3_Click(object sender, EventArgs e)
        {
            int i = 1;
            Delete(i);
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {

        }
    }
}
