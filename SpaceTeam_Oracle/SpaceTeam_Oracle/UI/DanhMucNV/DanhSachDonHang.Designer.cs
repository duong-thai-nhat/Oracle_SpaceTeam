namespace SpaceTeam_Oracle.SpaceTeam.DanhMucNV
{
    partial class DanhSachDonHang
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
            this.dataGridViewDonHang = new System.Windows.Forms.DataGridView();
            this.btnXem = new System.Windows.Forms.Button();
            this.cmbChiNhanh = new System.Windows.Forms.ComboBox();
            this.label9 = new System.Windows.Forms.Label();
            this.cmbTenNV = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btnTaiLai = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewDonHang)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Montserrat Semi Bold", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.DarkGreen;
            this.label1.Location = new System.Drawing.Point(401, 20);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(346, 39);
            this.label1.TabIndex = 1;
            this.label1.Text = "DANH SÁCH ĐƠN HÀNG";
            // 
            // dataGridViewDonHang
            // 
            this.dataGridViewDonHang.BackgroundColor = System.Drawing.Color.LightCyan;
            this.dataGridViewDonHang.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewDonHang.Location = new System.Drawing.Point(13, 228);
            this.dataGridViewDonHang.Margin = new System.Windows.Forms.Padding(4);
            this.dataGridViewDonHang.Name = "dataGridViewDonHang";
            this.dataGridViewDonHang.RowHeadersWidth = 51;
            this.dataGridViewDonHang.Size = new System.Drawing.Size(1087, 420);
            this.dataGridViewDonHang.TabIndex = 2;
            // 
            // btnXem
            // 
            this.btnXem.Location = new System.Drawing.Point(473, 86);
            this.btnXem.Margin = new System.Windows.Forms.Padding(4);
            this.btnXem.Name = "btnXem";
            this.btnXem.Size = new System.Drawing.Size(172, 40);
            this.btnXem.TabIndex = 3;
            this.btnXem.Text = "Xem";
            this.btnXem.UseVisualStyleBackColor = true;
            this.btnXem.Click += new System.EventHandler(this.btnXem_Click);
            // 
            // cmbChiNhanh
            // 
            this.cmbChiNhanh.FormattingEnabled = true;
            this.cmbChiNhanh.Location = new System.Drawing.Point(218, 167);
            this.cmbChiNhanh.Margin = new System.Windows.Forms.Padding(4);
            this.cmbChiNhanh.Name = "cmbChiNhanh";
            this.cmbChiNhanh.Size = new System.Drawing.Size(209, 24);
            this.cmbChiNhanh.TabIndex = 34;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(70, 167);
            this.label9.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(87, 19);
            this.label9.TabIndex = 35;
            this.label9.Text = "Chi Nhánh";
            // 
            // cmbTenNV
            // 
            this.cmbTenNV.DisplayMember = "  ";
            this.cmbTenNV.FormattingEnabled = true;
            this.cmbTenNV.Location = new System.Drawing.Point(218, 96);
            this.cmbTenNV.Margin = new System.Windows.Forms.Padding(4);
            this.cmbTenNV.Name = "cmbTenNV";
            this.cmbTenNV.Size = new System.Drawing.Size(209, 24);
            this.cmbTenNV.TabIndex = 32;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(70, 96);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(115, 19);
            this.label2.TabIndex = 33;
            this.label2.Text = "Tên Nhân Viên";
            // 
            // btnTaiLai
            // 
            this.btnTaiLai.Location = new System.Drawing.Point(473, 159);
            this.btnTaiLai.Margin = new System.Windows.Forms.Padding(4);
            this.btnTaiLai.Name = "btnTaiLai";
            this.btnTaiLai.Size = new System.Drawing.Size(172, 40);
            this.btnTaiLai.TabIndex = 36;
            this.btnTaiLai.Text = "Tải lại";
            this.btnTaiLai.UseVisualStyleBackColor = true;
            this.btnTaiLai.Click += new System.EventHandler(this.btnTaiLai_Click);
            // 
            // DanhSachDonHang
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.ClientSize = new System.Drawing.Size(1113, 670);
            this.Controls.Add(this.btnTaiLai);
            this.Controls.Add(this.cmbChiNhanh);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.cmbTenNV);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.btnXem);
            this.Controls.Add(this.dataGridViewDonHang);
            this.Controls.Add(this.label1);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "DanhSachDonHang";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Danh Sách Đơn Hàng";
            this.Load += new System.EventHandler(this.DanhSachDonHang_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewDonHang)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dataGridViewDonHang;
        private System.Windows.Forms.Button btnXem;
        private System.Windows.Forms.ComboBox cmbChiNhanh;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.ComboBox cmbTenNV;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnTaiLai;
    }
}