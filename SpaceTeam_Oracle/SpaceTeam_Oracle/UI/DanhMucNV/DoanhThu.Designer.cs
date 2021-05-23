namespace SpaceTeam_Oracle.SpaceTeam.DanhMucNV
{
    partial class DoanhThu
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.cmbChiNhanh = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.cmbTenNhanVien = new System.Windows.Forms.ComboBox();
            this.tabControl = new System.Windows.Forms.TabControl();
            this.tabPageTheoNgay = new System.Windows.Forms.TabPage();
            this.tabPageTheoTuan = new System.Windows.Forms.TabPage();
            this.tabPageTheoThang = new System.Windows.Forms.TabPage();
            this.dataGridViewTheoNgay = new System.Windows.Forms.DataGridView();
            this.dataGridViewTheoTuan = new System.Windows.Forms.DataGridView();
            this.dataGridViewTheoThang = new System.Windows.Forms.DataGridView();
            this.tabControl.SuspendLayout();
            this.tabPageTheoNgay.SuspendLayout();
            this.tabPageTheoTuan.SuspendLayout();
            this.tabPageTheoThang.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewTheoNgay)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewTheoTuan)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewTheoThang)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F);
            this.label1.Location = new System.Drawing.Point(350, 23);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(110, 25);
            this.label1.TabIndex = 19;
            this.label1.Text = "Doanh Thu";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // cmbChiNhanh
            // 
            this.cmbChiNhanh.FormattingEnabled = true;
            this.cmbChiNhanh.Location = new System.Drawing.Point(142, 65);
            this.cmbChiNhanh.Name = "cmbChiNhanh";
            this.cmbChiNhanh.Size = new System.Drawing.Size(181, 21);
            this.cmbChiNhanh.TabIndex = 35;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(39, 72);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(57, 13);
            this.label4.TabIndex = 36;
            this.label4.Text = "Chi Nhánh";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(448, 71);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(79, 13);
            this.label5.TabIndex = 41;
            this.label5.Text = "Tên Nhân Viên";
            // 
            // cmbTenNhanVien
            // 
            this.cmbTenNhanVien.FormattingEnabled = true;
            this.cmbTenNhanVien.Location = new System.Drawing.Point(551, 64);
            this.cmbTenNhanVien.Name = "cmbTenNhanVien";
            this.cmbTenNhanVien.Size = new System.Drawing.Size(181, 21);
            this.cmbTenNhanVien.TabIndex = 40;
            // 
            // tabControl
            // 
            this.tabControl.Controls.Add(this.tabPageTheoNgay);
            this.tabControl.Controls.Add(this.tabPageTheoTuan);
            this.tabControl.Controls.Add(this.tabPageTheoThang);
            this.tabControl.Location = new System.Drawing.Point(32, 109);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(758, 248);
            this.tabControl.TabIndex = 42;
            // 
            // tabPageTheoNgay
            // 
            this.tabPageTheoNgay.Controls.Add(this.dataGridViewTheoNgay);
            this.tabPageTheoNgay.Location = new System.Drawing.Point(4, 22);
            this.tabPageTheoNgay.Name = "tabPageTheoNgay";
            this.tabPageTheoNgay.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageTheoNgay.Size = new System.Drawing.Size(750, 222);
            this.tabPageTheoNgay.TabIndex = 0;
            this.tabPageTheoNgay.Text = "Theo Ngày";
            this.tabPageTheoNgay.UseVisualStyleBackColor = true;
            this.tabPageTheoNgay.Click += new System.EventHandler(this.tabPage1_Click);
            // 
            // tabPageTheoTuan
            // 
            this.tabPageTheoTuan.Controls.Add(this.dataGridViewTheoTuan);
            this.tabPageTheoTuan.Location = new System.Drawing.Point(4, 22);
            this.tabPageTheoTuan.Name = "tabPageTheoTuan";
            this.tabPageTheoTuan.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageTheoTuan.Size = new System.Drawing.Size(750, 222);
            this.tabPageTheoTuan.TabIndex = 1;
            this.tabPageTheoTuan.Text = "Theo Tuần";
            this.tabPageTheoTuan.UseVisualStyleBackColor = true;
            // 
            // tabPageTheoThang
            // 
            this.tabPageTheoThang.Controls.Add(this.dataGridViewTheoThang);
            this.tabPageTheoThang.Location = new System.Drawing.Point(4, 22);
            this.tabPageTheoThang.Name = "tabPageTheoThang";
            this.tabPageTheoThang.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageTheoThang.Size = new System.Drawing.Size(750, 222);
            this.tabPageTheoThang.TabIndex = 2;
            this.tabPageTheoThang.Text = "Theo Tháng";
            this.tabPageTheoThang.UseVisualStyleBackColor = true;
            // 
            // dataGridViewTheoNgay
            // 
            this.dataGridViewTheoNgay.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewTheoNgay.Location = new System.Drawing.Point(6, 6);
            this.dataGridViewTheoNgay.Name = "dataGridViewTheoNgay";
            this.dataGridViewTheoNgay.Size = new System.Drawing.Size(738, 210);
            this.dataGridViewTheoNgay.TabIndex = 0;
            this.dataGridViewTheoNgay.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // dataGridViewTheoTuan
            // 
            this.dataGridViewTheoTuan.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewTheoTuan.Location = new System.Drawing.Point(6, 6);
            this.dataGridViewTheoTuan.Name = "dataGridViewTheoTuan";
            this.dataGridViewTheoTuan.Size = new System.Drawing.Size(738, 210);
            this.dataGridViewTheoTuan.TabIndex = 1;
            // 
            // dataGridViewTheoThang
            // 
            this.dataGridViewTheoThang.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewTheoThang.Location = new System.Drawing.Point(6, 6);
            this.dataGridViewTheoThang.Name = "dataGridViewTheoThang";
            this.dataGridViewTheoThang.Size = new System.Drawing.Size(738, 210);
            this.dataGridViewTheoThang.TabIndex = 1;
            // 
            // DoanhThu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 369);
            this.Controls.Add(this.tabControl);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.cmbTenNhanVien);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.cmbChiNhanh);
            this.Controls.Add(this.label1);
            this.Name = "DoanhThu";
            this.Text = "DoanhThu";
            this.Load += new System.EventHandler(this.DoanhThu_Load);
            this.tabControl.ResumeLayout(false);
            this.tabPageTheoNgay.ResumeLayout(false);
            this.tabPageTheoTuan.ResumeLayout(false);
            this.tabPageTheoThang.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewTheoNgay)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewTheoTuan)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewTheoThang)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cmbChiNhanh;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cmbTenNhanVien;
        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage tabPageTheoNgay;
        private System.Windows.Forms.TabPage tabPageTheoTuan;
        private System.Windows.Forms.TabPage tabPageTheoThang;
        private System.Windows.Forms.DataGridView dataGridViewTheoNgay;
        private System.Windows.Forms.DataGridView dataGridViewTheoTuan;
        private System.Windows.Forms.DataGridView dataGridViewTheoThang;
    }
}