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

       
    }
}
