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
    public partial class QLChucVu : Form
    {
        Context db = new Context();
        public QLChucVu()
        {
            InitializeComponent();
        }

        private void QLChucVu_Load(object sender, EventArgs e)
        {
            GetDataGridView();
        }
        #region Hàm Insert CV
        public void InsertCV(string maCV, string tenCV)
        {
            CHUCVU add = new CHUCVU();
            add.MACHUCVU = maCV;
            add.TENCHUCVU = tenCV;
            db.CHUCVUs.Add(add);
            db.SaveChanges();
        }
        #endregion
        #region Hàm Update CV
        public void UpdateCV(string maCV, string tenCV)
        {
            Context db = new Context();
            CHUCVU update = db.CHUCVUs.SingleOrDefault(cv => cv.MACHUCVU == maCV);
            update.MACHUCVU = maCV;
            update.TENCHUCVU = tenCV;
            db.SaveChanges();
        }
        #endregion
        #region Hàm Delete CV
        public void DeleteCV(string maCV)
        {
            var chucVu = db.CHUCVUs.Where(cv => cv.MACHUCVU== maCV).SingleOrDefault();
            db.CHUCVUs.Remove(chucVu);
            db.SaveChanges();
        }
        #endregion
        
        #region Load DataGridView
        public void GetDataGridView()
        {
            var employeeData = from cv in db.CHUCVUs
                               select new
                               {
                                   cv.MACHUCVU,
                                   cv.TENCHUCVU
                               };

            var ListEmployee = employeeData.ToList();
            dataGridViewDSCV.DataSource = ListEmployee;
            dataGridViewDSCV.Columns[0].HeaderText = "Mã Chức Vụ";
            dataGridViewDSCV.Columns[1].HeaderText = "Tên Chức Vụ";
            dataGridViewDSCV.Columns[0].Width = 200;
            dataGridViewDSCV.Columns[1].Width = 600;
        }
        #endregion
        

        private void btnAdd_Click(object sender, EventArgs e)
        {
            string maCV = txtMaCV.Text;
            string tenCV = txtTenCV.Text;

            try
            {
                InsertCV(maCV, tenCV);

                MessageBox.Show("Thêm Chi Nhánh Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GetDataGridView();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Thêm Chi Nhánh Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            string maCV = txtMaCV.Text;
            try
            {
                DeleteCV(maCV);
                MessageBox.Show("Xóa Chi Nhánh Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GetDataGridView();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Xóa Chi Nhánh Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            string maCV = txtMaCV.Text;
            string tenCV = txtTenCV.Text;

            try
            {
                UpdateCV(maCV, tenCV);
                MessageBox.Show("Sửa Chi Nhánh Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GetDataGridView();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Sửa Chi Nhánh Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnRefesh_Click(object sender, EventArgs e)
        {
            txtMaCV.Text = " ";
            txtTenCV.Text = " ";
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            DialogResult mess = MessageBox.Show("Bạn có muốn thoát hay không", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (mess == DialogResult.OK)
            {
                Close();
            }
        }

        private void dataGridViewDSCV_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = this.dataGridViewDSCV.Rows[e.RowIndex];
                txtMaCV.Text = row.Cells[0].Value.ToString();
                txtTenCV.Text = row.Cells[1].Value.ToString();
            }
        }
    }
}
