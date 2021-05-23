using SpaceTeam_Oracle;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS
{
    class TaoDonHang_Services
    {
        private static TaoDonHang_Services instance;

        public static TaoDonHang_Services Instance
        {
            get { if (instance == null) instance = new TaoDonHang_Services(); return instance; }
            private set { instance = value; }
        }

        SpaceTeam_Context db = new SpaceTeam_Context();

        #region GetIdClass
        int GetIdClass()
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


        public void InsertBill(int maKH, string hoTen, string diaChi, string SDT, string ghiChu, int maNV)
        {
            HOADON add = new HOADON();
            add.MAHD = GetIdClass();
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
    }
}
