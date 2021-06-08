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
    public partial class QLNhaCungCap : Form
    {
        SpaceTeam_Context db = new SpaceTeam_Context();
        public QLNhaCungCap()
        {
            InitializeComponent();
        }

        private void QLNhaCungCap_Load(object sender, EventArgs e)
        {
            GetDataGridView();
        }
        #region Hàm Insert NCC
        public void InsertNCC(string maNCC, string tenNCC)
        {
            NHACUNGCAP add = new NHACUNGCAP();
            add.MANCC = maNCC;
            add.TENCONGTY = tenNCC;
            db.NHACUNGCAPs.Add(add);
            db.SaveChanges();
        }
        #endregion
        #region Hàm Update NCC
        public void UpdateNCC(string maNCC, string tenNCC)
        {
            SpaceTeam_Context db = new SpaceTeam_Context();
            NHACUNGCAP update = db.NHACUNGCAPs.SingleOrDefault(ncc => ncc.MANCC == maNCC);
            update.MANCC = maNCC;
            update.TENCONGTY = tenNCC;
            db.SaveChanges();
        }
        #endregion
        #region Hàm Delete NCC
        public void DeleteNCC(string maNCC)
        {
            var nhaCungCap = db.NHACUNGCAPs.Where(ncc => ncc.MANCC == maNCC).SingleOrDefault();
            db.NHACUNGCAPs.Remove(nhaCungCap);
            db.SaveChanges();
        }
        #endregion
        #region Load DataGridView
        public void GetDataGridView()
        {
            var NCCdata = from ncc in db.NHACUNGCAPs
                               select new
                               {
                                   ncc.MANCC,
                                   ncc.TENCONGTY
                               };

            var ListEmployee = NCCdata.ToList();
            dataGridViewDSNCC.DataSource = ListEmployee;
            dataGridViewDSNCC.Columns[0].HeaderText = "Mã Nhà Cung Cấp";
            dataGridViewDSNCC.Columns[1].HeaderText = "Tên Nhà Cung Cấp";
            dataGridViewDSNCC.Columns[0].Width = 200;
            dataGridViewDSNCC.Columns[1].Width = 600;
        }
        #endregion
        #region Cell CLick
        private void dataGridViewDSCN_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = this.dataGridViewDSNCC.Rows[e.RowIndex];
                txtMaNCC.Text = row.Cells[0].Value.ToString();
                txtTenNCC.Text = row.Cells[1].Value.ToString();
            }
        }
        #endregion
        #region button Add NCC
        private void btnAdd_Click(object sender, EventArgs e)
        {
            string maNCC = txtMaNCC.Text;
            string tenNCC = txtTenNCC.Text;

            try
            {
                InsertNCC(maNCC, tenNCC);

                MessageBox.Show("Thêm Chi Nhánh Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GetDataGridView();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Thêm Chi Nhánh Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion

        #region button Delete NCC
        private void btnDelete_Click(object sender, EventArgs e)
        {
            string maNCC = txtMaNCC.Text;
            try
            {
                DeleteNCC(maNCC);
                MessageBox.Show("Xóa Chi Nhánh Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GetDataGridView();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Xóa Chi Nhánh Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion

        #region button Update NCC

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            string maNCC = txtMaNCC.Text;
            string tenNCC = txtTenNCC.Text;

            try
            {
                UpdateNCC(maNCC, tenNCC);
                UpdateNCC(maNCC, tenNCC);
                MessageBox.Show("Sửa Chi Nhánh Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GetDataGridView();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Sửa Chi Nhánh Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion

        #region button Update NCC
        private void btnRefesh_Click(object sender, EventArgs e)
        {
            txtMaNCC.Text = " ";
            txtTenNCC.Text = " ";
            GetDataGridView();
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
