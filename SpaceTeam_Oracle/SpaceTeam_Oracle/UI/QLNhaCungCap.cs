using System;
using System.Data;
using System.Linq;
using System.Windows.Forms;

namespace SpaceTeam_Oracle.UI
{
    public partial class QLNhaCungCap : Form
    {
        private ContextCUONG db = new ContextCUONG();

        public QLNhaCungCap()
        {
            InitializeComponent();
        }

        private void QLNhaCungCap_Load(object sender, EventArgs e)
        {
            GetDataGridView();
        }

        #region Hàm Get IdNCC

        private int GetIdNCC()
        {
            int dem = 1;

            while (true)
            {
                var c = db.NHACUNGCAPs.Where(w => w.MANCC == dem).SingleOrDefault();
                if (c == null)
                {
                    return dem;
                }
                dem++;
            }
        }

        #endregion Hàm Get IdNCC

        #region Hàm Insert NCC

        public string InsertNCC(int maNCC, string tenNCC, string eMail, string SDT, string diaChi)
        {
            int dem = db.NHACUNGCAPs.Count(w => w.TENCONGTY == tenNCC );
            if (dem == 0)
            {
                NHACUNGCAP add = new NHACUNGCAP();
                add.MANCC = maNCC;
                add.TENCONGTY = tenNCC;
                add.EMAIL = eMail;
                add.DIENTHOAI = SDT;
                add.DIACHI = diaChi;
                db.NHACUNGCAPs.Add(add);
                db.SaveChanges();
                return "1";
            }
            return "2";
        }

        #endregion Hàm Insert NCC

        #region Hàm Update NCC

        public void UpdateNCC(int maNCC, string tenNCC, string eMail, string SDT, string diaChi)
        {
            NHACUNGCAP update = db.NHACUNGCAPs.SingleOrDefault(ncc => ncc.MANCC == maNCC);
            update.MANCC = maNCC;
            update.TENCONGTY = tenNCC;
            update.EMAIL = eMail;
            update.DIENTHOAI = SDT;
            update.DIACHI = diaChi;
            db.SaveChanges();
        }

        #endregion Hàm Update NCC

        #region Hàm Delete NCC

        public void DeleteNCC(int maNCC)
        {
            var nhaCungCap = db.NHACUNGCAPs.Where(ncc => ncc.MANCC == maNCC).SingleOrDefault();
            db.NHACUNGCAPs.Remove(nhaCungCap);
            db.SaveChanges();
        }

        #endregion Hàm Delete NCC

        #region Load DataGridView

        public void GetDataGridView()
        {
            var NCCdata = from ncc in db.NHACUNGCAPs
                          select new
                          {
                              ncc.MANCC,
                              ncc.TENCONGTY,
                              ncc.EMAIL,
                              ncc.DIENTHOAI,
                              ncc.DIACHI
                          };

            var ListEmployee = NCCdata.ToList();
            dataGridViewDSNCC.DataSource = ListEmployee;
            dataGridViewDSNCC.Columns[0].HeaderText = "Mã Nhà Cung Cấp";
            dataGridViewDSNCC.Columns[1].HeaderText = "Tên Nhà Cung Cấp";
            dataGridViewDSNCC.Columns[2].HeaderText = "Email";
            dataGridViewDSNCC.Columns[3].HeaderText = "Số Điện Thoại";
            dataGridViewDSNCC.Columns[4].HeaderText = "Địa Chỉ";
            dataGridViewDSNCC.Columns[0].Width = 100;
            dataGridViewDSNCC.Columns[1].Width = 400;
            dataGridViewDSNCC.Columns[2].Width = 200;
            dataGridViewDSNCC.Columns[3].Width = 200;
            dataGridViewDSNCC.Columns[4].Width = 600;
        }

        #endregion Load DataGridView

        #region Cell CLick

        private void dataGridViewDSCN_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = this.dataGridViewDSNCC.Rows[e.RowIndex];
                txtMaNCC.Text = row.Cells[0].Value.ToString();
                txtTenNCC.Text = row.Cells[1].Value.ToString();
                txtEmail.Text = row.Cells[2].Value.ToString();
                txtSDT.Text = row.Cells[3].Value.ToString();
                txtDiaChi.Text = row.Cells[4].Value.ToString();
            }
        }

        #endregion Cell CLick

        #region button Add NCC

        private void btnAdd_Click(object sender, EventArgs e)
        {
            int maNCC = GetIdNCC();
            string tenNCC = txtTenNCC.Text;
            string eMail = txtEmail.Text;
            string SDT = txtSDT.Text;// để qua máy t sửa  thử
            string diaChi = txtDiaChi.Text;
            string temp = InsertNCC(maNCC, tenNCC, eMail, SDT, diaChi);
            
            if (temp == "1")
            {
                MessageBox.Show("Thêm Nhà Cung Cấp Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GetDataGridView();
            }
            else
            {
                MessageBox.Show("Tên Nhà Cung Cấp đã tồn tại ", "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        #endregion button Add NCC

        #region button Delete NCC

        private void btnDelete_Click(object sender, EventArgs e)
        {
            int maNCC = int.Parse(txtMaNCC.Text);
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

        #endregion button Delete NCC

        #region button Update NCC

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            int maNCC = int.Parse(txtMaNCC.Text);
            string tenNCC = txtTenNCC.Text;
            string eMail = txtEmail.Text;
            string SDT = txtSDT.Text;
            string diaChi = txtDiaChi.Text;
            try
            {
                UpdateNCC(maNCC, tenNCC, eMail, SDT, diaChi);
                MessageBox.Show("Sửa Chi Nhánh Thành Công", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GetDataGridView();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Sửa Chi Nhánh Không Thành Công " + ex.Message, "Insert Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        #endregion button Update NCC

        #region button Refesh NCC

        private void btnRefesh_Click(object sender, EventArgs e)
        {
            txtMaNCC.Text = " ";
            txtTenNCC.Text = " ";
            GetDataGridView();
        }

        #endregion button Update NCC

        #region button Exit NCC

        private void btnExit_Click(object sender, EventArgs e)
        {
            DialogResult mess = MessageBox.Show("Bạn có muốn thoát hay không", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (mess == DialogResult.OK)
            {
                Close();
            }
        }

        #endregion button Exit NCC

        
    }
}