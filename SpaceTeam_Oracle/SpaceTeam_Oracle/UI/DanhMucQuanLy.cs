using SpaceTeam_Oracle.SpaceTeam.DanhMucNV;
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

namespace SpaceTeam_Oracle.SpaceTeam
{
    public partial class DanhMucQuanLy : Form
    {
        public DanhMucQuanLy()
        {
            InitializeComponent();
        }

        private void DanhMucQuanLy_Load(object sender, EventArgs e)
        {
            //using (DanhMucQuanLy dmQL = new DanhMucQuanLy())
            //    if (dmQL.ShowDialog() == DialogResult.OK)
            //        Application.Run(new DanhMucQuanLy());
        }

        private void btnDoanhThu_Click(object sender, EventArgs e)
        {
            using (DoanhThu dT = new DoanhThu())
                if (dT.ShowDialog() == DialogResult.OK)
                    Application.Run(new DoanhThu());
        }

        private void btnTTCaNhan_Click(object sender, EventArgs e)
        {
            using (ThongTinCaNhan ttCN = new ThongTinCaNhan())
                if (ttCN.ShowDialog() == DialogResult.OK)
                    Application.Run(new ThongTinCaNhan());
        }

        private void btnQLKhoHang_Click(object sender, EventArgs e)
        {
            using (NhapKho nK = new NhapKho())
            if (nK.ShowDialog() == DialogResult.OK)
            Application.Run(new NhapKho());
        }

        private void btnDSHHDaBan_Click(object sender, EventArgs e)
        {
            using (DanhSachHangHoaDaBan dsHH = new DanhSachHangHoaDaBan())
                if (dsHH.ShowDialog() == DialogResult.OK)
                    Application.Run(new DanhSachHangHoaDaBan());
        }

        private void btnQLNhanVien_Click(object sender, EventArgs e)
        {
            using (QLNhanVien qLNV = new QLNhanVien())
                if (qLNV.ShowDialog() == DialogResult.OK)
                    Application.Run(new QLNhanVien());
        }

        private void btnQLDSDonHang_Click(object sender, EventArgs e)
        {
            using (DanhSachDonHang dsDH= new DanhSachDonHang())
                if (dsDH.ShowDialog() == DialogResult.OK)
                    Application.Run(new DanhSachDonHang());
        }

        private void btnPhanCong_Click(object sender, EventArgs e)
        {
            //chưa có
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult mess = MessageBox.Show("Bạn có muốn thoát hay không", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (mess == DialogResult.OK)
            {
                Close();
            }
        }
    }
}
