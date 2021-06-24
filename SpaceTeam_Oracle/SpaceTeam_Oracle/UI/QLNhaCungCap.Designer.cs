﻿namespace SpaceTeam_Oracle.UI
{
    partial class QLNhaCungCap
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
            this.groupBoxCN = new System.Windows.Forms.GroupBox();
            this.dataGridViewDSNCC = new System.Windows.Forms.DataGridView();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtDiaChi = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtSDT = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtEmail = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtMaNCC = new System.Windows.Forms.TextBox();
            this.txtTenNCC = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.btnAdd = new System.Windows.Forms.Button();
            this.btnDelete = new System.Windows.Forms.Button();
            this.btnUpdate = new System.Windows.Forms.Button();
            this.btnRefesh = new System.Windows.Forms.Button();
            this.btnExit = new System.Windows.Forms.Button();
            this.groupBoxButton = new System.Windows.Forms.GroupBox();
            this.groupBoxCN.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewDSNCC)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.groupBoxButton.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F);
            this.label1.Location = new System.Drawing.Point(326, 19);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(193, 31);
            this.label1.TabIndex = 38;
            this.label1.Text = "Nhà Cung Cấp";
            // 
            // groupBoxCN
            // 
            this.groupBoxCN.BackColor = System.Drawing.Color.PaleGreen;
            this.groupBoxCN.Controls.Add(this.dataGridViewDSNCC);
            this.groupBoxCN.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBoxCN.Location = new System.Drawing.Point(28, 276);
            this.groupBoxCN.Name = "groupBoxCN";
            this.groupBoxCN.Size = new System.Drawing.Size(747, 338);
            this.groupBoxCN.TabIndex = 37;
            this.groupBoxCN.TabStop = false;
            this.groupBoxCN.Text = "Danh Sách Nhà Cung Cấp";
            // 
            // dataGridViewDSNCC
            // 
            this.dataGridViewDSNCC.BackgroundColor = System.Drawing.Color.Honeydew;
            this.dataGridViewDSNCC.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewDSNCC.Location = new System.Drawing.Point(16, 35);
            this.dataGridViewDSNCC.Name = "dataGridViewDSNCC";
            this.dataGridViewDSNCC.RowHeadersWidth = 51;
            this.dataGridViewDSNCC.Size = new System.Drawing.Size(707, 283);
            this.dataGridViewDSNCC.TabIndex = 0;
            this.dataGridViewDSNCC.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewDSCN_CellContentClick);
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.PaleGreen;
            this.groupBox1.Controls.Add(this.txtDiaChi);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.txtSDT);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.txtEmail);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.txtMaNCC);
            this.groupBox1.Controls.Add(this.txtTenNCC);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(28, 61);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(747, 209);
            this.groupBox1.TabIndex = 36;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông Tin Chung";
            // 
            // txtDiaChi
            // 
            this.txtDiaChi.Location = new System.Drawing.Point(171, 163);
            this.txtDiaChi.Name = "txtDiaChi";
            this.txtDiaChi.Size = new System.Drawing.Size(204, 29);
            this.txtDiaChi.TabIndex = 62;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.PaleGreen;
            this.label4.Font = new System.Drawing.Font("Segoe UI Semibold", 12F);
            this.label4.Location = new System.Drawing.Point(17, 163);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(60, 21);
            this.label4.TabIndex = 61;
            this.label4.Text = "Địa Chỉ";
            // 
            // txtSDT
            // 
            this.txtSDT.Location = new System.Drawing.Point(552, 111);
            this.txtSDT.Name = "txtSDT";
            this.txtSDT.Size = new System.Drawing.Size(184, 29);
            this.txtSDT.TabIndex = 60;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.PaleGreen;
            this.label3.Font = new System.Drawing.Font("Segoe UI Semibold", 12F);
            this.label3.Location = new System.Drawing.Point(398, 111);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(110, 21);
            this.label3.TabIndex = 59;
            this.label3.Text = "Số Điện Thoại";
            // 
            // txtEmail
            // 
            this.txtEmail.Location = new System.Drawing.Point(171, 111);
            this.txtEmail.Name = "txtEmail";
            this.txtEmail.Size = new System.Drawing.Size(204, 29);
            this.txtEmail.TabIndex = 58;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.PaleGreen;
            this.label2.Font = new System.Drawing.Font("Segoe UI Semibold", 12F);
            this.label2.Location = new System.Drawing.Point(17, 111);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(48, 21);
            this.label2.TabIndex = 57;
            this.label2.Text = "Email";
            // 
            // txtMaNCC
            // 
            this.txtMaNCC.Location = new System.Drawing.Point(171, 58);
            this.txtMaNCC.Name = "txtMaNCC";
            this.txtMaNCC.Size = new System.Drawing.Size(204, 29);
            this.txtMaNCC.TabIndex = 56;
            // 
            // txtTenNCC
            // 
            this.txtTenNCC.Location = new System.Drawing.Point(552, 58);
            this.txtTenNCC.Name = "txtTenNCC";
            this.txtTenNCC.Size = new System.Drawing.Size(184, 29);
            this.txtTenNCC.TabIndex = 53;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.BackColor = System.Drawing.Color.PaleGreen;
            this.label7.Font = new System.Drawing.Font("Segoe UI Semibold", 12F);
            this.label7.Location = new System.Drawing.Point(17, 58);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(140, 21);
            this.label7.TabIndex = 44;
            this.label7.Text = "Mã Nhà Cung Cấp";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(387, 61);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(142, 21);
            this.label9.TabIndex = 43;
            this.label9.Text = "Tên Nhà Cung Cấp";
            // 
            // btnAdd
            // 
            this.btnAdd.BackColor = System.Drawing.Color.Ivory;
            this.btnAdd.Location = new System.Drawing.Point(21, 17);
            this.btnAdd.Margin = new System.Windows.Forms.Padding(2);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(107, 40);
            this.btnAdd.TabIndex = 0;
            this.btnAdd.Text = "Thêm";
            this.btnAdd.UseVisualStyleBackColor = false;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // btnDelete
            // 
            this.btnDelete.BackColor = System.Drawing.Color.Ivory;
            this.btnDelete.Location = new System.Drawing.Point(171, 17);
            this.btnDelete.Margin = new System.Windows.Forms.Padding(2);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(100, 42);
            this.btnDelete.TabIndex = 0;
            this.btnDelete.Text = "Xóa";
            this.btnDelete.UseVisualStyleBackColor = false;
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
            // 
            // btnUpdate
            // 
            this.btnUpdate.BackColor = System.Drawing.Color.Ivory;
            this.btnUpdate.Location = new System.Drawing.Point(319, 17);
            this.btnUpdate.Margin = new System.Windows.Forms.Padding(2);
            this.btnUpdate.Name = "btnUpdate";
            this.btnUpdate.Size = new System.Drawing.Size(101, 40);
            this.btnUpdate.TabIndex = 0;
            this.btnUpdate.Text = "Sửa";
            this.btnUpdate.UseVisualStyleBackColor = false;
            this.btnUpdate.Click += new System.EventHandler(this.btnUpdate_Click);
            // 
            // btnRefesh
            // 
            this.btnRefesh.BackColor = System.Drawing.Color.Ivory;
            this.btnRefesh.Location = new System.Drawing.Point(468, 16);
            this.btnRefesh.Margin = new System.Windows.Forms.Padding(2);
            this.btnRefesh.Name = "btnRefesh";
            this.btnRefesh.Size = new System.Drawing.Size(110, 40);
            this.btnRefesh.TabIndex = 0;
            this.btnRefesh.Text = "Refesh";
            this.btnRefesh.UseVisualStyleBackColor = false;
            this.btnRefesh.Click += new System.EventHandler(this.btnRefesh_Click);
            // 
            // btnExit
            // 
            this.btnExit.BackColor = System.Drawing.Color.Ivory;
            this.btnExit.Location = new System.Drawing.Point(624, 15);
            this.btnExit.Margin = new System.Windows.Forms.Padding(2);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(99, 41);
            this.btnExit.TabIndex = 0;
            this.btnExit.Text = "Thoát";
            this.btnExit.UseVisualStyleBackColor = false;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // groupBoxButton
            // 
            this.groupBoxButton.Controls.Add(this.btnExit);
            this.groupBoxButton.Controls.Add(this.btnRefesh);
            this.groupBoxButton.Controls.Add(this.btnUpdate);
            this.groupBoxButton.Controls.Add(this.btnDelete);
            this.groupBoxButton.Controls.Add(this.btnAdd);
            this.groupBoxButton.Location = new System.Drawing.Point(28, 623);
            this.groupBoxButton.Margin = new System.Windows.Forms.Padding(2);
            this.groupBoxButton.Name = "groupBoxButton";
            this.groupBoxButton.Padding = new System.Windows.Forms.Padding(2);
            this.groupBoxButton.Size = new System.Drawing.Size(742, 73);
            this.groupBoxButton.TabIndex = 39;
            this.groupBoxButton.TabStop = false;
            // 
            // QLNhaCungCap
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.PaleGreen;
            this.ClientSize = new System.Drawing.Size(787, 742);
            this.Controls.Add(this.groupBoxButton);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.groupBoxCN);
            this.Controls.Add(this.groupBox1);
            this.Name = "QLNhaCungCap";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Nhà Cung Cấp";
            this.Load += new System.EventHandler(this.QLNhaCungCap_Load);
            this.groupBoxCN.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewDSNCC)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBoxButton.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBoxCN;
        private System.Windows.Forms.DataGridView dataGridViewDSNCC;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtMaNCC;
        private System.Windows.Forms.TextBox txtTenNCC;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.Button btnDelete;
        private System.Windows.Forms.Button btnUpdate;
        private System.Windows.Forms.Button btnRefesh;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.GroupBox groupBoxButton;
        private System.Windows.Forms.TextBox txtDiaChi;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtSDT;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtEmail;
        private System.Windows.Forms.Label label2;
    }
}