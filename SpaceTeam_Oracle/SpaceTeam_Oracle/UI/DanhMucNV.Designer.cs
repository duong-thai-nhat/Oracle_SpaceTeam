namespace GUI.SpaceTeam
{
    partial class DanhMucNV
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
            this.btnTaoDonHang = new System.Windows.Forms.Button();
            this.btnDoanhThu = new System.Windows.Forms.Button();
            this.btnTTCaNhan = new System.Windows.Forms.Button();
            this.btnDSDonHang = new System.Windows.Forms.Button();
            this.btnDSHHDaBan = new System.Windows.Forms.Button();
            this.btnThoát = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F);
            this.label1.Location = new System.Drawing.Point(456, 22);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(131, 29);
            this.label1.TabIndex = 0;
            this.label1.Text = "Nhân Viên";
            // 
            // btnTaoDonHang
            // 
            this.btnTaoDonHang.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.btnTaoDonHang.Location = new System.Drawing.Point(78, 87);
            this.btnTaoDonHang.Margin = new System.Windows.Forms.Padding(4);
            this.btnTaoDonHang.Name = "btnTaoDonHang";
            this.btnTaoDonHang.Size = new System.Drawing.Size(212, 86);
            this.btnTaoDonHang.TabIndex = 1;
            this.btnTaoDonHang.Text = "Tạo Đơn Hàng";
            this.btnTaoDonHang.UseVisualStyleBackColor = true;
            this.btnTaoDonHang.Click += new System.EventHandler(this.btnTaoDonHang_Click);
            // 
            // btnDoanhThu
            // 
            this.btnDoanhThu.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.btnDoanhThu.Location = new System.Drawing.Point(417, 87);
            this.btnDoanhThu.Margin = new System.Windows.Forms.Padding(4);
            this.btnDoanhThu.Name = "btnDoanhThu";
            this.btnDoanhThu.Size = new System.Drawing.Size(212, 86);
            this.btnDoanhThu.TabIndex = 2;
            this.btnDoanhThu.Text = "Doanh Thu";
            this.btnDoanhThu.UseVisualStyleBackColor = true;
            this.btnDoanhThu.Click += new System.EventHandler(this.btnDoanhThu_Click);
            // 
            // btnTTCaNhan
            // 
            this.btnTTCaNhan.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.btnTTCaNhan.Location = new System.Drawing.Point(740, 87);
            this.btnTTCaNhan.Margin = new System.Windows.Forms.Padding(4);
            this.btnTTCaNhan.Name = "btnTTCaNhan";
            this.btnTTCaNhan.Size = new System.Drawing.Size(212, 86);
            this.btnTTCaNhan.TabIndex = 3;
            this.btnTTCaNhan.Text = "Thông tin cá nhân";
            this.btnTTCaNhan.UseVisualStyleBackColor = true;
            this.btnTTCaNhan.Click += new System.EventHandler(this.btnTTCaNhan_Click);
            // 
            // btnDSDonHang
            // 
            this.btnDSDonHang.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.btnDSDonHang.Location = new System.Drawing.Point(78, 200);
            this.btnDSDonHang.Margin = new System.Windows.Forms.Padding(4);
            this.btnDSDonHang.Name = "btnDSDonHang";
            this.btnDSDonHang.Size = new System.Drawing.Size(212, 86);
            this.btnDSDonHang.TabIndex = 4;
            this.btnDSDonHang.Text = "Danh Sách Đơn Hàng";
            this.btnDSDonHang.UseVisualStyleBackColor = true;
            this.btnDSDonHang.Click += new System.EventHandler(this.btnDSDonHang_Click);
            // 
            // btnDSHHDaBan
            // 
            this.btnDSHHDaBan.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.btnDSHHDaBan.Location = new System.Drawing.Point(417, 200);
            this.btnDSHHDaBan.Margin = new System.Windows.Forms.Padding(4);
            this.btnDSHHDaBan.Name = "btnDSHHDaBan";
            this.btnDSHHDaBan.Size = new System.Drawing.Size(212, 86);
            this.btnDSHHDaBan.TabIndex = 5;
            this.btnDSHHDaBan.Text = "Danh Sách Hàng Hóa Đã Bán";
            this.btnDSHHDaBan.UseVisualStyleBackColor = true;
            this.btnDSHHDaBan.Click += new System.EventHandler(this.btnDSHHDaBan_Click);
            // 
            // btnThoát
            // 
            this.btnThoát.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.btnThoát.Location = new System.Drawing.Point(740, 200);
            this.btnThoát.Margin = new System.Windows.Forms.Padding(4);
            this.btnThoát.Name = "btnThoát";
            this.btnThoát.Size = new System.Drawing.Size(212, 86);
            this.btnThoát.TabIndex = 6;
            this.btnThoát.Text = "Thoát";
            this.btnThoát.UseVisualStyleBackColor = true;
            this.btnThoát.Click += new System.EventHandler(this.btnThoát_Click);
            // 
            // DanhMucNV
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1011, 378);
            this.Controls.Add(this.btnThoát);
            this.Controls.Add(this.btnDSHHDaBan);
            this.Controls.Add(this.btnDSDonHang);
            this.Controls.Add(this.btnTTCaNhan);
            this.Controls.Add(this.btnDoanhThu);
            this.Controls.Add(this.btnTaoDonHang);
            this.Controls.Add(this.label1);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "DanhMucNV";
            this.Text = "Danh mục Nhân Viên";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnTaoDonHang;
        private System.Windows.Forms.Button btnDoanhThu;
        private System.Windows.Forms.Button btnTTCaNhan;
        private System.Windows.Forms.Button btnDSDonHang;
        private System.Windows.Forms.Button btnDSHHDaBan;
        private System.Windows.Forms.Button btnThoát;
    }
}