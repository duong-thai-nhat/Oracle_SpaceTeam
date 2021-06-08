using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SpaceTeam_Oracle.UI
{
    public partial class QLKhachHang : Form
    {
        SpaceTeam_Context db = new SpaceTeam_Context();
        public QLKhachHang()
        {
            InitializeComponent();
        }

        private void QLKhachHang_Load(object sender, EventArgs e)
        {
            GetDataGridView();
        }
        #region Hàm GetIDNV
        int GetIdKH()
        {
            int dem = 1;
            while (true)
            {
                var c = db.KHACHHANGs.Where(w => w.MAKH== dem).SingleOrDefault();
                if (c == null)
                {
                    return dem;
                }
                dem++;
            }
        }
        #endregion
        #region Hàm Insert NhanVien
        public void InsertKH(int maKH,string hoTen, bool gioiTinh, DateTime ngaySinh, string SDT, string diaChi,string email)
        {
            KHACHHANG add = new KHACHHANG();
            add.MAKH = maKH;
            add.HOTEN = hoTen;
            add.GIOITINH = gioiTinh;
            add.NGAYSINH = ngaySinh;
            add.DIENTHOAI = SDT;
            add.DIACHI = diaChi;
            add.EMAIL = email;
            db.KHACHHANGs.Add(add);
            db.SaveChanges();
        }
        #endregion

        #region Hàm Update Khách Hàng
        public void UpdateKH(int maKH, string hoTen, bool gioiTinh, DateTime ngaySinh, string SDT, string diaChi,string email)
        {
            SpaceTeam_Context db = new SpaceTeam_Context();
            KHACHHANG update = db.KHACHHANGs.SingleOrDefault(kh => kh.MAKH == maKH);
            update.HOTEN = hoTen;
            update.GIOITINH = gioiTinh;
            update.NGAYSINH = ngaySinh;
            update.DIENTHOAI = SDT;
            update.DIACHI = diaChi;
            update.EMAIL = email;
            db.SaveChanges();
        }
        #endregion

        #region Hàm Delete KH
        public void DeleteKH(int maKH)
        {
            SpaceTeam_Context db = new SpaceTeam_Context();
            var khachHang = db.KHACHHANGs.Where(kh => kh.MAKH == maKH).SingleOrDefault();

            db.KHACHHANGs.Remove(khachHang);
            db.SaveChanges();
        }
        #endregion
        #region Load DataGridView
        public void GetDataGridView()
        {
            var KHData = from kh in db.KHACHHANGs
                               select new
                               {
                                   kh.MAKH,
                                   kh.HOTEN,
                                   kh.GIOITINH,
                                   kh.NGAYSINH,
                                   kh.EMAIL,
                                   kh.DIENTHOAI,
                                   kh.DIACHI,
                                   
                               };

            var ListKH = KHData.ToList();
            dataGridViewKhachHang.DataSource = ListKH;
            dataGridViewKhachHang.Columns[0].HeaderText = "Mã Khách Hàng";
            dataGridViewKhachHang.Columns[1].HeaderText = "Họ tên Khách Hàng";
            dataGridViewKhachHang.Columns[2].HeaderText = "Giới Tính";
            dataGridViewKhachHang.Columns[3].HeaderText = "Ngày sinh";
            dataGridViewKhachHang.Columns[4].HeaderText = "Email";
            dataGridViewKhachHang.Columns[5].HeaderText = "Số Điện Thoại";
            dataGridViewKhachHang.Columns[6].HeaderText = "Địa Chỉ";
            
            dataGridViewKhachHang.Columns[0].Width = 100;
            dataGridViewKhachHang.Columns[1].Width = 150;
            dataGridViewKhachHang.Columns[2].Width = 80;
            dataGridViewKhachHang.Columns[3].Width = 120;
            dataGridViewKhachHang.Columns[4].Width = 150;
            dataGridViewKhachHang.Columns[5].Width = 100;
            dataGridViewKhachHang.Columns[6].Width = 500;
        }
        #endregion

        #region Cell CLick

        private void dataGridViewKhachHang_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = this.dataGridViewKhachHang.Rows[e.RowIndex];
                txtMaKH.Text = row.Cells[0].Value.ToString();
                txtHoTen.Text = row.Cells[1].Value.ToString();
                if (row.Cells[2].Value.ToString() == "True")
                    radioMen.Checked = true;
                if (row.Cells[2].Value.ToString() == "False")
                    radioFemale.Checked = true;
                dtpkBD.Value = Convert.ToDateTime(row.Cells[3].Value);
                txtEmail.Text = row.Cells[4].Value.ToString();
                txtSDT.Text = row.Cells[5].Value.ToString();
                txtDiaChi.Text = row.Cells[6].Value.ToString();
            }
        }

        #endregion DONE 
        #region btn Add
        private void btnAdd_Click(object sender, EventArgs e)
        {
            int maKH = GetIdKH();
            DateTime dateBD = dtpkBD.Value;
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
            string email = txtEmail.Text;

            try
            {
                InsertKH(maKH, hoTen, gioiTinh, dateBD, sDT, diaChi, email);

                MessageBox.Show("Thêm Nhân Viên Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GetDataGridView();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Thêm Nhân Viên Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion
        #region Delete Khach Hang
        private void btnDelete_Click(object sender, EventArgs e)
        {
            int maKH = int.Parse(txtMaKH.Text);
            try
            {
                DeleteKH(maKH);

                MessageBox.Show("Xóa Nhân Viên Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GetDataGridView();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Xóa Nhân Viên Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion
        #region Update KH
        private void btnUpdate_Click(object sender, EventArgs e)
        {
            int maKH = int.Parse(txtMaKH.Text);
            DateTime dateBD = dtpkBD.Value;
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
            string email = txtEmail.Text;

            try
            {
                UpdateKH(maKH, hoTen, gioiTinh, dateBD, sDT, diaChi, email);

                MessageBox.Show("Update Nhân Viên Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GetDataGridView();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Update Nhân Viên Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }


        #endregion
        #region button Fresh NCC
        private void btnRefesh_Click(object sender, EventArgs e)
        {
            txtMaKH.Text = " ";
            txtHoTen.Text = " ";
            //dtpkBD.Text = "TO_TIMESTAMP ('2018-11-30 17:53:28.673','YYYY-MM-DD HH24:MI:SS.FF3')";
            radioMen.Checked = true;
            txtEmail.Text = " ";
            txtSDT.Text = " ";
            txtDiaChi.Text = " ";
        }
        #endregion

        #region button Exit NCC
        private void btnExit_Click(object sender, EventArgs e)
        {
            DialogResult mess = MessageBox.Show("Bạn có muốn thoát hay không", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (mess == DialogResult.OK)
            {
                Close();
            }
        }
        #endregion
    }
}
