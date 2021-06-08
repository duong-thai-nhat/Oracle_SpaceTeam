using SpaceTeam_Oracle.SpaceTeam.DanhMucNV;
using System;
using System.Windows.Forms;

namespace GUI.SpaceTeam
{
    public partial class DanhMucNV : Form
    {
        public DanhMucNV()
        {
            InitializeComponent();
        }

        private void btnTaoDonHang_Click(object sender, EventArgs e)
        {
            using (TaoDonHang lophoc = new TaoDonHang())
                if (lophoc.ShowDialog() == DialogResult.OK)
                    Application.Run(new TaoDonHang());
        }

        private void btnDoanhThu_Click(object sender, EventArgs e)
        {
            using (DoanhThu lophoc = new DoanhThu())
                if (lophoc.ShowDialog() == DialogResult.OK)
                    Application.Run(new DoanhThu());
        }

        private void btnTTCaNhan_Click(object sender, EventArgs e)
        {
            using (ThongTinCaNhan lophoc = new ThongTinCaNhan())
                if (lophoc.ShowDialog() == DialogResult.OK)
                    Application.Run(new ThongTinCaNhan());
        }

        private void btnDSDonHang_Click(object sender, EventArgs e)
        {
            using (DanhSachDonHang lophoc = new DanhSachDonHang())
                if (lophoc.ShowDialog() == DialogResult.OK)
                    Application.Run(new DanhSachDonHang());
        }

        private void btnDSHHDaBan_Click(object sender, EventArgs e)
        {
            using (DanhSachHangHoaDaBan lophoc = new DanhSachHangHoaDaBan())
                if (lophoc.ShowDialog() == DialogResult.OK)
                    Application.Run(new DanhSachHangHoaDaBan());
        }

        private void btnThoát_Click(object sender, EventArgs e)
        {
            DialogResult mess = MessageBox.Show("Bạn có muốn thoát hay không", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (mess == DialogResult.OK)
            {
                Close();
            }
        }

        private void DanhMucNV_Load(object sender, EventArgs e)
        {

        }
    }
}
