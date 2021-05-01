﻿using SpaceTeam_Oracle.SpaceTeam;
using SpaceTeam_Oracle.SpaceTeam.DanhMucNV;
using SpaceTeam_Oracle.SpaceTeam.ManHinhChung;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SpaceTeam_Oracle
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new ThongTinCaNhan());
        }
    }
}
