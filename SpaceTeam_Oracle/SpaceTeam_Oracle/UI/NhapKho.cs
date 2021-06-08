﻿using SpaceTeam_Oracle.UI;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SpaceTeam_Oracle
{
    public partial class NhapKho : Form
    {
        SpaceTeam_Context db = new SpaceTeam_Context();
        public NhapKho()
        {
            InitializeComponent();
        }

        private void NhapKho_Load(object sender, EventArgs e)
        {
            LoadComboboxLoai();
            LoadComboboxNCC();
            GetDataGridView();
        }
        #region Load Combobox Ten Loai
        public void LoadComboboxLoai()
        {
            try
            {
                List<LOAI> listLoai = db.LOAIs.ToList();
                cmbMaLoai.DataSource = listLoai;
                cmbMaLoai.DisplayMember = "MALOAI";
                cmbMaLoai.ValueMember = "MALOAI";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi  " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion
        #region Load Combobox Nha Cung Cap
        public void LoadComboboxNCC()
        {
            try
            {
                List<NHACUNGCAP> listNhaCungCap = db.NHACUNGCAPs.ToList();
                cmbMaNCC.DataSource = listNhaCungCap;
                cmbMaNCC.DisplayMember = "MANCC";
                cmbMaNCC.ValueMember = "MANCC";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi  " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion
        #region Hàm Insert HH
        public void InsertHH(int maHH, string tenHH,int maLoai,int soLuong, int donGia,int giamGia, string moTa, string maNCC )
        {
            HANGHOA add = new HANGHOA();
            add.MAHH = maHH;
            add.TENHH = tenHH;
            add.MALOAI = maLoai;
            add.SOLUONG = soLuong;
            add.DONGIA = donGia;
            add.GIAMGIA = giamGia;
            add.MOTA = moTa;
            add.MANCC = maNCC;
            db.HANGHOAs.Add(add);
            db.SaveChanges();
        }
        #endregion
        #region Hàm Insert HH1
        public void UpdateHH1(string tenHH,int soLuong)
        {
            SpaceTeam_Context db = new SpaceTeam_Context();
            HANGHOA update = db.HANGHOAs.SingleOrDefault(hh => hh.TENHH == tenHH);
            update.TENHH = tenHH;
            update.SOLUONG = update.SOLUONG + soLuong;
            db.SaveChanges();
        }
        #endregion
        #region Hàm Update HH
        public void UpdateHH(int maHH, string tenHH, int maLoai, int soLuong, int donGia, int giamGia, string moTa, string maNCC)
        {
            SpaceTeam_Context db = new SpaceTeam_Context();
            HANGHOA update = db.HANGHOAs.SingleOrDefault(hh => hh.MAHH == maHH);
            update.MAHH = maHH;
            update.TENHH = tenHH;
            update.MALOAI = maLoai;
            update.SOLUONG = soLuong;
            update.DONGIA = donGia;
            update.GIAMGIA = giamGia;
            update.MOTA = moTa;
            update.MANCC = maNCC;
            db.SaveChanges();
        }
        #endregion
        #region Hàm Delete HH
        public void DeleteHH(int maHH)
        {
            var hangHoa = db.HANGHOAs.Where(hh => hh.MAHH == maHH).SingleOrDefault();
            db.HANGHOAs.Remove(hangHoa);
            db.SaveChanges();
        }
        #endregion
        #region Hàm Get Id HH
        int GetIdHH()
        {
            int dem = 1;
            while (true)
            {
                var c = db.HANGHOAs.Where(w => w.MAHH == dem).SingleOrDefault();
                if (c == null)
                {
                    return dem;
                }
                dem++;
            }
        }
        #endregion
        #region Load DataGridView
        public void GetDataGridView()
        {
            var employeeData = from h in db.HANGHOAs
                               join l in db.LOAIs
                               on h.MALOAI equals l.MALOAI
                               join ncc in db.NHACUNGCAPs
                               on h.MANCC equals ncc.MANCC
                               select new
                               {
                                   h.MAHH,
                                   h.TENHH,
                                   l.MALOAI,
                                   h.SOLUONG,
                                   h.DONGIA,
                                   h.GIAMGIA,
                                   h.MOTA,
                                   ncc.MANCC
                               };

            var ListEmployee = employeeData.ToList();
            dataGridViewDSHHNhap.DataSource = ListEmployee;
            dataGridViewDSHHNhap.Columns[0].HeaderText = "Mã Hàng Hóa";
            dataGridViewDSHHNhap.Columns[1].HeaderText = "Tên Hàng Hóa";
            dataGridViewDSHHNhap.Columns[2].HeaderText = "Mã Loại";
            dataGridViewDSHHNhap.Columns[3].HeaderText = "Số Lượng";
            dataGridViewDSHHNhap.Columns[4].HeaderText = "Đơn Giá";
            dataGridViewDSHHNhap.Columns[5].HeaderText = "Giảm Giá";
            dataGridViewDSHHNhap.Columns[6].HeaderText = "Mô Tả";
            dataGridViewDSHHNhap.Columns[7].HeaderText = "Mã Nhà Cung Cấp";

            dataGridViewDSHHNhap.Columns[0].Width = 70;
            dataGridViewDSHHNhap.Columns[1].Width = 150;
            dataGridViewDSHHNhap.Columns[2].Width = 70;
            dataGridViewDSHHNhap.Columns[3].Width = 70;
            dataGridViewDSHHNhap.Columns[4].Width = 150;
            dataGridViewDSHHNhap.Columns[5].Width = 70;
            dataGridViewDSHHNhap.Columns[6].Width = 600;
            dataGridViewDSHHNhap.Columns[7].Width = 70;
        }
        #endregion
        #region Cell Click
        private void dataGridViewDSNhap_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = this.dataGridViewDSHHNhap.Rows[e.RowIndex];
                txtMaHH.Text = row.Cells[0].Value.ToString();
                txtTenHH.Text = row.Cells[1].Value.ToString();
                cmbMaLoai.Text = row.Cells[2].Value.ToString();
                numUDSoLuong.Text = row.Cells[3].Value.ToString();
                txtDonGia.Text = row.Cells[4].Value.ToString();
                txtGiamGia.Text = row.Cells[5].Value.ToString();
                txtMoTa.Text = row.Cells[6].Value.ToString();
                cmbMaNCC.Text = row.Cells[7].Value.ToString();
            }
        }
        #endregion
        #region button Add HH
        private void btnAdd_Click(object sender, EventArgs e)
        {
            int maHH = GetIdHH();
            string tenHH = txtTenHH.Text;
            int maLoai = int.Parse(cmbMaLoai.SelectedValue.ToString());
            int soLuong = (int)numUDSoLuong.Value;
            int donGia = int.Parse(txtDonGia.Text);
            int giamGia = int.Parse(txtGiamGia.Text);
            string moTa = txtMoTa.Text;
            string maNCC = cmbMaNCC.SelectedValue.ToString();

            try
            {
                string dem = db.HANGHOAs.Count(hh => hh.TENHH == tenHH).ToString();
                int dem1 = int.Parse(dem);
                if (dem1 == 1)
                {
                    UpdateHH1(tenHH,soLuong);
                    MessageBox.Show("Tên Hàng Hóa đã tồn tại.\nHệ Thống sẽ Cập Nhật số lượng cho Hàng Hóa này", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    GetDataGridView();
                }
                if (dem1 == 0)
                {
                    InsertHH(maHH, tenHH, maLoai, soLuong, donGia, giamGia, moTa, maNCC);
                    MessageBox.Show("Thêm Hàng Hóa Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    GetDataGridView();
                }
                //InsertHH(maHH, tenHH, maLoai, soLuong, donGia, giamGia, moTa, maNCC);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Thêm Hàng Hóa Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion
        #region btn Delete HH
        private void btnDelete_Click(object sender, EventArgs e)
        {
            int maHH = int.Parse(txtMaHH.Text);
            try
            {
                DeleteHH(maHH);
                MessageBox.Show("Xóa Hàng Hóa Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GetDataGridView();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Xóa Hàng Hóa Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion
        #region btn Update HH
        private void btnUpdate_Click(object sender, EventArgs e)
        {
            int maHH = int.Parse(txtMaHH.Text);
            string tenHH = txtTenHH.Text;
            int maLoai = int.Parse(cmbMaLoai.SelectedValue.ToString());
            int soLuong = (int)numUDSoLuong.Value;
            int donGia = int.Parse(txtDonGia.Text);
            int giamGia = int.Parse(txtGiamGia.Text);
            string moTa = txtMoTa.Text;
            string maNCC = cmbMaNCC.SelectedValue.ToString();
            try
            {
                UpdateHH(maHH, tenHH, maLoai, soLuong, donGia, giamGia, moTa, maNCC);
                MessageBox.Show("Sửa Hàng Hóa Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GetDataGridView();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Sửa Hàng Hóa Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion
        #region button Refresh HH
        private void btnRefesh_Click(object sender, EventArgs e)
        {
            txtMaHH.Text = " ";
            txtTenHH.Text = " ";
            cmbMaLoai.Text = " ";
            numUDSoLuong.TextAlign = 0;
            txtDonGia.Text = " ";
            txtGiamGia.Text = " ";
            txtMoTa.Text = " ";
            cmbMaNCC.Text = " ";

        }
        #endregion
        #region button Exit HH
        private void btnExit_Click(object sender, EventArgs e)
        {
            DialogResult mess = MessageBox.Show("Bạn có muốn thoát hay không", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (mess == DialogResult.OK)
            {
                Close();
            }
        }
        #endregion

        private void dataGridViewDSHHNhap_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}