namespace SpaceTeam_Oracle.SpaceTeam.ManHinhChung
{
    partial class QuanLyKhoHang
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
            this.tabControl = new System.Windows.Forms.TabControl();
            this.tabPageHangNhapKho = new System.Windows.Forms.TabPage();
            this.dataGridViewTheoNgay = new System.Windows.Forms.DataGridView();
            this.tabPageHangTrongKho = new System.Windows.Forms.TabPage();
            this.dataGridViewTheoTuan = new System.Windows.Forms.DataGridView();
            this.tabPageHangXuatKho = new System.Windows.Forms.TabPage();
            this.dataGridViewTheoThang = new System.Windows.Forms.DataGridView();
            this.label10 = new System.Windows.Forms.Label();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.dateTimePicker2 = new System.Windows.Forms.DateTimePicker();
            this.label4 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.tabControl.SuspendLayout();
            this.tabPageHangNhapKho.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewTheoNgay)).BeginInit();
            this.tabPageHangTrongKho.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewTheoTuan)).BeginInit();
            this.tabPageHangXuatKho.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewTheoThang)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F);
            this.label1.Location = new System.Drawing.Point(337, 23);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(180, 25);
            this.label1.TabIndex = 43;
            this.label1.Text = "Quản Lý Kho Hàng";
            // 
            // tabControl
            // 
            this.tabControl.Controls.Add(this.tabPageHangNhapKho);
            this.tabControl.Controls.Add(this.tabPageHangTrongKho);
            this.tabControl.Controls.Add(this.tabPageHangXuatKho);
            this.tabControl.Location = new System.Drawing.Point(19, 240);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(758, 292);
            this.tabControl.TabIndex = 49;
            // 
            // tabPageHangNhapKho
            // 
            this.tabPageHangNhapKho.Controls.Add(this.dataGridViewTheoNgay);
            this.tabPageHangNhapKho.Location = new System.Drawing.Point(4, 22);
            this.tabPageHangNhapKho.Name = "tabPageHangNhapKho";
            this.tabPageHangNhapKho.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageHangNhapKho.Size = new System.Drawing.Size(750, 266);
            this.tabPageHangNhapKho.TabIndex = 0;
            this.tabPageHangNhapKho.Text = "Hàng Nhập Kho";
            this.tabPageHangNhapKho.UseVisualStyleBackColor = true;
            // 
            // dataGridViewTheoNgay
            // 
            this.dataGridViewTheoNgay.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewTheoNgay.Location = new System.Drawing.Point(6, 6);
            this.dataGridViewTheoNgay.Name = "dataGridViewTheoNgay";
            this.dataGridViewTheoNgay.Size = new System.Drawing.Size(738, 254);
            this.dataGridViewTheoNgay.TabIndex = 0;
            // 
            // tabPageHangTrongKho
            // 
            this.tabPageHangTrongKho.Controls.Add(this.dataGridViewTheoTuan);
            this.tabPageHangTrongKho.Location = new System.Drawing.Point(4, 22);
            this.tabPageHangTrongKho.Name = "tabPageHangTrongKho";
            this.tabPageHangTrongKho.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageHangTrongKho.Size = new System.Drawing.Size(750, 266);
            this.tabPageHangTrongKho.TabIndex = 1;
            this.tabPageHangTrongKho.Text = "Hàng Trong Kho";
            this.tabPageHangTrongKho.UseVisualStyleBackColor = true;
            // 
            // dataGridViewTheoTuan
            // 
            this.dataGridViewTheoTuan.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewTheoTuan.Location = new System.Drawing.Point(6, 6);
            this.dataGridViewTheoTuan.Name = "dataGridViewTheoTuan";
            this.dataGridViewTheoTuan.Size = new System.Drawing.Size(738, 254);
            this.dataGridViewTheoTuan.TabIndex = 1;
            // 
            // tabPageHangXuatKho
            // 
            this.tabPageHangXuatKho.Controls.Add(this.dataGridViewTheoThang);
            this.tabPageHangXuatKho.Location = new System.Drawing.Point(4, 22);
            this.tabPageHangXuatKho.Name = "tabPageHangXuatKho";
            this.tabPageHangXuatKho.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageHangXuatKho.Size = new System.Drawing.Size(750, 266);
            this.tabPageHangXuatKho.TabIndex = 2;
            this.tabPageHangXuatKho.Text = "Hàng Xuất Kho";
            this.tabPageHangXuatKho.UseVisualStyleBackColor = true;
            // 
            // dataGridViewTheoThang
            // 
            this.dataGridViewTheoThang.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewTheoThang.Location = new System.Drawing.Point(6, 6);
            this.dataGridViewTheoThang.Name = "dataGridViewTheoThang";
            this.dataGridViewTheoThang.Size = new System.Drawing.Size(738, 254);
            this.dataGridViewTheoThang.TabIndex = 1;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(26, 209);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(139, 15);
            this.label10.TabIndex = 51;
            this.label10.Text = "Thông Tin Hàng Hóa";
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Location = new System.Drawing.Point(103, 70);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(186, 20);
            this.dateTimePicker1.TabIndex = 52;
            // 
            // dateTimePicker2
            // 
            this.dateTimePicker2.Location = new System.Drawing.Point(392, 70);
            this.dateTimePicker2.Name = "dateTimePicker2";
            this.dateTimePicker2.Size = new System.Drawing.Size(186, 20);
            this.dateTimePicker2.TabIndex = 53;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(26, 76);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(48, 13);
            this.label4.TabIndex = 54;
            this.label4.Text = "Từ Ngày";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(318, 76);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(55, 13);
            this.label2.TabIndex = 55;
            this.label2.Text = "Đến Ngày";
            // 
            // QuanLyKhoHang
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 562);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.dateTimePicker2);
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.tabControl);
            this.Controls.Add(this.label1);
            this.Name = "QuanLyKhoHang";
            this.Text = "QuanLyKhoHang";
            this.tabControl.ResumeLayout(false);
            this.tabPageHangNhapKho.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewTheoNgay)).EndInit();
            this.tabPageHangTrongKho.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewTheoTuan)).EndInit();
            this.tabPageHangXuatKho.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewTheoThang)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage tabPageHangNhapKho;
        private System.Windows.Forms.DataGridView dataGridViewTheoNgay;
        private System.Windows.Forms.TabPage tabPageHangTrongKho;
        private System.Windows.Forms.DataGridView dataGridViewTheoTuan;
        private System.Windows.Forms.TabPage tabPageHangXuatKho;
        private System.Windows.Forms.DataGridView dataGridViewTheoThang;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.DateTimePicker dateTimePicker2;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label2;
    }
}