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

namespace SpaceTeam_Oracle
{
    public partial class QLChiNhanh : Form
    {
        SpaceTeam_Context db = new SpaceTeam_Context();
        public QLChiNhanh()
        {
            InitializeComponent();
        }

        private void QLChiNhanh_Load(object sender, EventArgs e)
        {
            GetDataGridView();
        }
        #region Hàm Insert CN
        public void InsertCN(int maCN, string tenCN)
        {
            CHINHANH add = new CHINHANH();
            add.MACHINHANH = maCN;
            add.TENCHINHANH = tenCN;
            db.CHINHANHs.Add(add);
            db.SaveChanges();
        }
        #endregion
        #region Hàm Update CN
        public void UpdateCN(int maCN, string tenCN)
        {
            CHINHANH update = db.CHINHANHs.SingleOrDefault(cn => cn.MACHINHANH == maCN);
            update.MACHINHANH = maCN;
            update.TENCHINHANH = tenCN;
            db.SaveChanges();
        }
        #endregion
        #region Hàm Delete CN
        public void DeleteCN(int maCN)
        {
            var chiNhanh = db.CHINHANHs.Where(cn => cn.MACHINHANH == maCN).SingleOrDefault();
            db.CHINHANHs.Remove(chiNhanh);
            db.SaveChanges();
        }
        #endregion

        #region Hàm Get Id CN
        int GetIdCN()
        {
            int dem = 1;
            while (true)
            {
                var c = db.CHINHANHs.Where(w => w.MACHINHANH == dem).SingleOrDefault();
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
            var employeeData = from cn in db.CHINHANHs
                               select new
                               {
                                   cn.MACHINHANH,
                                   cn.TENCHINHANH,
                               };

            var ListEmployee = employeeData.ToList();
            dataGridViewDSCN.DataSource = ListEmployee;
            dataGridViewDSCN.Columns[0].HeaderText = "Mã Chi Nhánh";
            dataGridViewDSCN.Columns[1].HeaderText = "Tên Chi Nhánh";
            dataGridViewDSCN.Columns[0].Width = 200;
            dataGridViewDSCN.Columns[1].Width = 600;
        }
        #endregion

        #region Cell CLick
        private void dataGridViewDSCN_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = this.dataGridViewDSCN.Rows[e.RowIndex];
                txtMaCN.Text = row.Cells[0].Value.ToString();
                txtTenCN.Text = row.Cells[1].Value.ToString();
            }
        }
        #endregion

        #region btn Add Chi Nhanh
        private void btnAdd_Click(object sender, EventArgs e)
        {
            int maCN = GetIdCN();
            string tenCN = txtTenCN.Text;

            try
            {
                InsertCN(maCN,tenCN);
                txtMaCN.Text = maCN.ToString();
                MessageBox.Show("Thêm Chi Nhánh Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GetDataGridView();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Thêm Chi Nhánh Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion

        #region button Xoa
        private void btnDelete_Click(object sender, EventArgs e)
        {
            int maCN = int.Parse(txtMaCN.Text);
            try
            {
                DeleteCN(maCN);
                MessageBox.Show("Xóa Chi Nhánh Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GetDataGridView();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Xóa Chi Nhánh Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion

        #region button Sua
        private void btnUpdate_Click(object sender, EventArgs e)
        {
            int maCN = int.Parse(txtMaCN.Text);
            string tenCN = txtTenCN.Text;

            try
            {
                UpdateCN(maCN, tenCN);
                MessageBox.Show("Sửa Chi Nhánh Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GetDataGridView();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Sửa Chi Nhánh Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }


        #endregion

        #region button Refresh
        private void btnRefesh_Click(object sender, EventArgs e)
        {
            txtMaCN.Text = " ";
            txtTenCN.Text = " ";
        }
        #endregion

        #region Thoat
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
