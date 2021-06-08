using SpaceTeam_Oracle.SpaceTeam.DanhMucNV;
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
    public partial class DanhMucAdmin : Form
    {
        public DanhMucAdmin()
        {
            InitializeComponent();
        }

        private void btnQLNhanVien_Click(object sender, EventArgs e)
        {
            using (QLNhanVien qLNV = new QLNhanVien())
                if (qLNV.ShowDialog() == DialogResult.OK)
                    Application.Run(new QLNhanVien());
        }

        private void btnDoanhThu_Click(object sender, EventArgs e)
        {
            using (DoanhThu dT = new DoanhThu())
                if (dT.ShowDialog() == DialogResult.OK)
                    Application.Run(new DoanhThu());
        }

        private void btnTTCaNhan_Click(object sender, EventArgs e)
        {
            using (ThongTinCaNhan tTCN = new ThongTinCaNhan())
                if (tTCN.ShowDialog() == DialogResult.OK)
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
            using (DanhSachHangHoaDaBan dSHHDB = new DanhSachHangHoaDaBan())
                if (dSHHDB.ShowDialog() == DialogResult.OK)
                    Application.Run(new DanhSachHangHoaDaBan());
        }

        private void btnQLDSDonHang_Click(object sender, EventArgs e)
        {
            using (QLChucVu qLCV = new QLChucVu())
                if (qLCV.ShowDialog() == DialogResult.OK)
                    Application.Run(new QLChucVu());
        }

        private void btnPhanCong_Click(object sender, EventArgs e)
        {
            //using (PhanCong pC = new PhanCong())
            //    if (pC.ShowDialog() == DialogResult.OK)
            //        Application.Run(new PhanCong());
        }

        private void DanhMucAdmin_Load(object sender, EventArgs e)
        {

        }
        private void btnQLDSChiNhanh_Click(object sender, EventArgs e)
        {
            using (QLChiNhanh qLCN = new QLChiNhanh())
                if (qLCN.ShowDialog() == DialogResult.OK)
                    Application.Run(new QLChiNhanh());
        }

        private void btnQLDSKhachHang_Click(object sender, EventArgs e)
        {
            using (QLKhachHang qLKH = new QLKhachHang())
                if (qLKH.ShowDialog() == DialogResult.OK)
                    Application.Run(new QLKhachHang());
        }

        private void btnQLDSNhaCungCap_Click(object sender, EventArgs e)
        {
            using (QLNhaCungCap qLNCC = new QLNhaCungCap())
                if (qLNCC.ShowDialog() == DialogResult.OK)
                    Application.Run(new QLNhaCungCap());
        }

        private void btnQLDSDonHang_Click_1(object sender, EventArgs e)
        {
            using (DanhSachDonHang dSDH = new DanhSachDonHang())
                if (dSDH.ShowDialog() == DialogResult.OK)
                    Application.Run(new DanhSachDonHang());
        }
    }
}
