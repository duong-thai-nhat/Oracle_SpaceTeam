using System.Collections.Generic;
using System.Linq;
namespace SpaceTeam_Oracle.BUS
{
    public class BUS_QLNhanVien
    {
        SpaceTeam_Oracle_Context db = new SpaceTeam_Oracle_Context();


        #region Get Chi Nhanh


        public void InstanceMethod()
        {
            // ...
        }

        public List<CHINHANH> GetChiNhanh()
        {
            List<CHINHANH> listChiNhanh = db.CHINHANHs.ToList();
            return listChiNhanh;
        }
        #endregion

        #region Get Chi Nhanh

        public List<CHUCVU> GetChucVụ()
        {
            List<CHUCVU> listChucVu = db.CHUCVUs.ToList();
            return listChucVu;
        }
        #endregion
    }
}
