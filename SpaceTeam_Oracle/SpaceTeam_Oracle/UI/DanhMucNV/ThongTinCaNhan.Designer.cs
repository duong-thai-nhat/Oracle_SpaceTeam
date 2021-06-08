﻿namespace SpaceTeam_Oracle.SpaceTeam.DanhMucNV
{
    partial class ThongTinCaNhan
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
            this.dataGridViewDSND = new System.Windows.Forms.DataGridView();
            this.groupBoxButton = new System.Windows.Forms.GroupBox();
            this.btnExit = new System.Windows.Forms.Button();
            this.btnRefesh = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.btnUpdate = new System.Windows.Forms.Button();
            this.btnDelete = new System.Windows.Forms.Button();
            this.btnAdd = new System.Windows.Forms.Button();
            this.groupBoxEmployeeInfo = new System.Windows.Forms.GroupBox();
            this.radioFemale = new System.Windows.Forms.RadioButton();
            this.radioMen = new System.Windows.Forms.RadioButton();
            this.dtpkBD = new System.Windows.Forms.DateTimePicker();
            this.cmbChucVu = new System.Windows.Forms.ComboBox();
            this.cmbChiNhanh = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtDiaChi = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtSDT = new System.Windows.Forms.TextBox();
            this.txt = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.txtMatKhau = new System.Windows.Forms.TextBox();
            this.txtLuong = new System.Windows.Forms.TextBox();
            this.txtHoTen = new System.Windows.Forms.TextBox();
            this.txtTenDN = new System.Windows.Forms.TextBox();
            this.txtEmail = new System.Windows.Forms.TextBox();
            this.txtMaNV = new System.Windows.Forms.TextBox();
            this.lblUsername = new System.Windows.Forms.Label();
            this.lblEmail = new System.Windows.Forms.Label();
            this.lblPassword = new System.Windows.Forms.Label();
            this.lblSalary = new System.Windows.Forms.Label();
            this.lblFullName = new System.Windows.Forms.Label();
            this.lblEmployeeId = new System.Windows.Forms.Label();
            this.groupBoxCN.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewDSND)).BeginInit();
            this.groupBoxButton.SuspendLayout();
            this.groupBoxEmployeeInfo.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F);
            this.label1.Location = new System.Drawing.Point(397, 30);
            this.label1.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(232, 29);
            this.label1.TabIndex = 20;
            this.label1.Text = "Thông Tin Cá Nhân";
            // 
            // groupBoxCN
            // 
            this.groupBoxCN.Controls.Add(this.dataGridViewDSND);
            this.groupBoxCN.Location = new System.Drawing.Point(17, 378);
            this.groupBoxCN.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.groupBoxCN.Name = "groupBoxCN";
            this.groupBoxCN.Padding = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.groupBoxCN.Size = new System.Drawing.Size(1035, 355);
            this.groupBoxCN.TabIndex = 40;
            this.groupBoxCN.TabStop = false;
            this.groupBoxCN.Text = "Danh Sách Thông Tin Người Dùng";
            // 
            // dataGridViewDSND
            // 
            this.dataGridViewDSND.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewDSND.Location = new System.Drawing.Point(8, 33);
            this.dataGridViewDSND.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.dataGridViewDSND.Name = "dataGridViewDSND";
            this.dataGridViewDSND.RowHeadersWidth = 51;
            this.dataGridViewDSND.Size = new System.Drawing.Size(989, 286);
            this.dataGridViewDSND.TabIndex = 0;
            this.dataGridViewDSND.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewDSCV_CellContentClick);
            // 
            // groupBoxButton
            // 
            this.groupBoxButton.Controls.Add(this.btnExit);
            this.groupBoxButton.Controls.Add(this.btnRefesh);
            this.groupBoxButton.Controls.Add(this.btnSave);
            this.groupBoxButton.Controls.Add(this.btnUpdate);
            this.groupBoxButton.Controls.Add(this.btnDelete);
            this.groupBoxButton.Controls.Add(this.btnAdd);
            this.groupBoxButton.Location = new System.Drawing.Point(100, 745);
            this.groupBoxButton.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBoxButton.Name = "groupBoxButton";
            this.groupBoxButton.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBoxButton.Size = new System.Drawing.Size(864, 76);
            this.groupBoxButton.TabIndex = 41;
            this.groupBoxButton.TabStop = false;
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(719, 18);
            this.btnExit.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(108, 36);
            this.btnExit.TabIndex = 0;
            this.btnExit.Text = "Thoát";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // btnRefesh
            // 
            this.btnRefesh.Location = new System.Drawing.Point(573, 18);
            this.btnRefesh.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnRefesh.Name = "btnRefesh";
            this.btnRefesh.Size = new System.Drawing.Size(109, 36);
            this.btnRefesh.TabIndex = 0;
            this.btnRefesh.Text = "Refesh";
            this.btnRefesh.UseVisualStyleBackColor = true;
            this.btnRefesh.Click += new System.EventHandler(this.btnRefesh_Click);
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(437, 20);
            this.btnSave.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(105, 34);
            this.btnSave.TabIndex = 0;
            this.btnSave.Text = "Ghi/Lưu";
            this.btnSave.UseVisualStyleBackColor = true;
            // 
            // btnUpdate
            // 
            this.btnUpdate.Location = new System.Drawing.Point(289, 21);
            this.btnUpdate.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnUpdate.Name = "btnUpdate";
            this.btnUpdate.Size = new System.Drawing.Size(111, 34);
            this.btnUpdate.TabIndex = 0;
            this.btnUpdate.Text = "Sửa";
            this.btnUpdate.UseVisualStyleBackColor = true;
            this.btnUpdate.Click += new System.EventHandler(this.btnUpdate_Click);
            // 
            // btnDelete
            // 
            this.btnDelete.Location = new System.Drawing.Point(143, 20);
            this.btnDelete.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(108, 34);
            this.btnDelete.TabIndex = 0;
            this.btnDelete.Text = "Xóa";
            this.btnDelete.UseVisualStyleBackColor = true;
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(12, 18);
            this.btnAdd.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(96, 34);
            this.btnAdd.TabIndex = 0;
            this.btnAdd.Text = "Thêm";
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // groupBoxEmployeeInfo
            // 
            this.groupBoxEmployeeInfo.Controls.Add(this.radioFemale);
            this.groupBoxEmployeeInfo.Controls.Add(this.radioMen);
            this.groupBoxEmployeeInfo.Controls.Add(this.dtpkBD);
            this.groupBoxEmployeeInfo.Controls.Add(this.cmbChucVu);
            this.groupBoxEmployeeInfo.Controls.Add(this.cmbChiNhanh);
            this.groupBoxEmployeeInfo.Controls.Add(this.label5);
            this.groupBoxEmployeeInfo.Controls.Add(this.label4);
            this.groupBoxEmployeeInfo.Controls.Add(this.txtDiaChi);
            this.groupBoxEmployeeInfo.Controls.Add(this.label3);
            this.groupBoxEmployeeInfo.Controls.Add(this.txtSDT);
            this.groupBoxEmployeeInfo.Controls.Add(this.txt);
            this.groupBoxEmployeeInfo.Controls.Add(this.label2);
            this.groupBoxEmployeeInfo.Controls.Add(this.label6);
            this.groupBoxEmployeeInfo.Controls.Add(this.txtMatKhau);
            this.groupBoxEmployeeInfo.Controls.Add(this.txtLuong);
            this.groupBoxEmployeeInfo.Controls.Add(this.txtHoTen);
            this.groupBoxEmployeeInfo.Controls.Add(this.txtTenDN);
            this.groupBoxEmployeeInfo.Controls.Add(this.txtEmail);
            this.groupBoxEmployeeInfo.Controls.Add(this.txtMaNV);
            this.groupBoxEmployeeInfo.Controls.Add(this.lblUsername);
            this.groupBoxEmployeeInfo.Controls.Add(this.lblEmail);
            this.groupBoxEmployeeInfo.Controls.Add(this.lblPassword);
            this.groupBoxEmployeeInfo.Controls.Add(this.lblSalary);
            this.groupBoxEmployeeInfo.Controls.Add(this.lblFullName);
            this.groupBoxEmployeeInfo.Controls.Add(this.lblEmployeeId);
            this.groupBoxEmployeeInfo.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBoxEmployeeInfo.ForeColor = System.Drawing.SystemColors.Highlight;
            this.groupBoxEmployeeInfo.Location = new System.Drawing.Point(97, 90);
            this.groupBoxEmployeeInfo.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBoxEmployeeInfo.Name = "groupBoxEmployeeInfo";
            this.groupBoxEmployeeInfo.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBoxEmployeeInfo.Size = new System.Drawing.Size(861, 282);
            this.groupBoxEmployeeInfo.TabIndex = 16;
            this.groupBoxEmployeeInfo.TabStop = false;
            this.groupBoxEmployeeInfo.Text = "Thông Tin Người Dùng";
            // 
            // radioFemale
            // 
            this.radioFemale.AutoSize = true;
            this.radioFemale.Location = new System.Drawing.Point(639, 139);
            this.radioFemale.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.radioFemale.Name = "radioFemale";
            this.radioFemale.Size = new System.Drawing.Size(49, 21);
            this.radioFemale.TabIndex = 25;
            this.radioFemale.TabStop = true;
            this.radioFemale.Text = "Nữ";
            this.radioFemale.UseVisualStyleBackColor = true;
            // 
            // radioMen
            // 
            this.radioMen.AutoSize = true;
            this.radioMen.Location = new System.Drawing.Point(544, 140);
            this.radioMen.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.radioMen.Name = "radioMen";
            this.radioMen.Size = new System.Drawing.Size(61, 21);
            this.radioMen.TabIndex = 24;
            this.radioMen.TabStop = true;
            this.radioMen.Text = "Nam";
            this.radioMen.UseVisualStyleBackColor = true;
            // 
            // dtpkBD
            // 
            this.dtpkBD.Location = new System.Drawing.Point(181, 139);
            this.dtpkBD.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.dtpkBD.Name = "dtpkBD";
            this.dtpkBD.Size = new System.Drawing.Size(215, 22);
            this.dtpkBD.TabIndex = 23;
            // 
            // cmbChucVu
            // 
            this.cmbChucVu.FormattingEnabled = true;
            this.cmbChucVu.Location = new System.Drawing.Point(544, 213);
            this.cmbChucVu.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cmbChucVu.Name = "cmbChucVu";
            this.cmbChucVu.Size = new System.Drawing.Size(265, 24);
            this.cmbChucVu.TabIndex = 22;
            // 
            // cmbChiNhanh
            // 
            this.cmbChiNhanh.FormattingEnabled = true;
            this.cmbChiNhanh.Location = new System.Drawing.Point(544, 175);
            this.cmbChiNhanh.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cmbChiNhanh.Name = "cmbChiNhanh";
            this.cmbChiNhanh.Size = new System.Drawing.Size(265, 24);
            this.cmbChiNhanh.TabIndex = 21;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 10.2F);
            this.label5.ForeColor = System.Drawing.SystemColors.ControlText;
            this.label5.Location = new System.Drawing.Point(439, 218);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(64, 19);
            this.label5.TabIndex = 20;
            this.label5.Text = "Chức vụ";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 10.2F);
            this.label4.ForeColor = System.Drawing.SystemColors.ControlText;
            this.label4.Location = new System.Drawing.Point(439, 178);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(80, 19);
            this.label4.TabIndex = 15;
            this.label4.Text = "Chi Nhánh";
            // 
            // txtDiaChi
            // 
            this.txtDiaChi.Location = new System.Drawing.Point(181, 218);
            this.txtDiaChi.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtDiaChi.Name = "txtDiaChi";
            this.txtDiaChi.Size = new System.Drawing.Size(215, 22);
            this.txtDiaChi.TabIndex = 19;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 10.2F);
            this.label3.ForeColor = System.Drawing.SystemColors.ControlText;
            this.label3.Location = new System.Drawing.Point(23, 219);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(61, 19);
            this.label3.TabIndex = 18;
            this.label3.Text = "Địa Chỉ";
            // 
            // txtSDT
            // 
            this.txtSDT.Location = new System.Drawing.Point(181, 178);
            this.txtSDT.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtSDT.Name = "txtSDT";
            this.txtSDT.Size = new System.Drawing.Size(215, 22);
            this.txtSDT.TabIndex = 16;
            // 
            // txt
            // 
            this.txt.AutoSize = true;
            this.txt.Font = new System.Drawing.Font("Times New Roman", 10.2F);
            this.txt.ForeColor = System.Drawing.SystemColors.ControlText;
            this.txt.Location = new System.Drawing.Point(21, 180);
            this.txt.Name = "txt";
            this.txt.Size = new System.Drawing.Size(39, 19);
            this.txt.TabIndex = 17;
            this.txt.Text = "SĐT";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 10.2F);
            this.label2.ForeColor = System.Drawing.SystemColors.ControlText;
            this.label2.Location = new System.Drawing.Point(21, 142);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(78, 19);
            this.label2.TabIndex = 4;
            this.label2.Text = "Ngày Sinh";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Times New Roman", 10.2F);
            this.label6.ForeColor = System.Drawing.SystemColors.ControlText;
            this.label6.Location = new System.Drawing.Point(439, 142);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(74, 19);
            this.label6.TabIndex = 2;
            this.label6.Text = "Giới Tính";
            // 
            // txtMatKhau
            // 
            this.txtMatKhau.Location = new System.Drawing.Point(544, 102);
            this.txtMatKhau.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtMatKhau.Name = "txtMatKhau";
            this.txtMatKhau.Size = new System.Drawing.Size(265, 22);
            this.txtMatKhau.TabIndex = 1;
            this.txtMatKhau.UseSystemPasswordChar = true;
            // 
            // txtLuong
            // 
            this.txtLuong.Location = new System.Drawing.Point(544, 65);
            this.txtLuong.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtLuong.Name = "txtLuong";
            this.txtLuong.Size = new System.Drawing.Size(265, 22);
            this.txtLuong.TabIndex = 1;
            // 
            // txtHoTen
            // 
            this.txtHoTen.Location = new System.Drawing.Point(544, 31);
            this.txtHoTen.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtHoTen.Name = "txtHoTen";
            this.txtHoTen.Size = new System.Drawing.Size(265, 22);
            this.txtHoTen.TabIndex = 1;
            // 
            // txtTenDN
            // 
            this.txtTenDN.Location = new System.Drawing.Point(181, 102);
            this.txtTenDN.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtTenDN.Name = "txtTenDN";
            this.txtTenDN.Size = new System.Drawing.Size(215, 22);
            this.txtTenDN.TabIndex = 1;
            // 
            // txtEmail
            // 
            this.txtEmail.Location = new System.Drawing.Point(181, 65);
            this.txtEmail.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtEmail.Name = "txtEmail";
            this.txtEmail.Size = new System.Drawing.Size(215, 22);
            this.txtEmail.TabIndex = 1;
            // 
            // txtMaNV
            // 
            this.txtMaNV.Location = new System.Drawing.Point(181, 31);
            this.txtMaNV.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtMaNV.Name = "txtMaNV";
            this.txtMaNV.Size = new System.Drawing.Size(215, 22);
            this.txtMaNV.TabIndex = 1;
            // 
            // lblUsername
            // 
            this.lblUsername.AutoSize = true;
            this.lblUsername.Font = new System.Drawing.Font("Times New Roman", 10.2F);
            this.lblUsername.ForeColor = System.Drawing.SystemColors.ControlText;
            this.lblUsername.Location = new System.Drawing.Point(23, 105);
            this.lblUsername.Name = "lblUsername";
            this.lblUsername.Size = new System.Drawing.Size(105, 19);
            this.lblUsername.TabIndex = 0;
            this.lblUsername.Text = "Tên đăng nhập";
            // 
            // lblEmail
            // 
            this.lblEmail.AutoSize = true;
            this.lblEmail.Font = new System.Drawing.Font("Times New Roman", 10.2F);
            this.lblEmail.ForeColor = System.Drawing.SystemColors.ControlText;
            this.lblEmail.Location = new System.Drawing.Point(23, 68);
            this.lblEmail.Name = "lblEmail";
            this.lblEmail.Size = new System.Drawing.Size(49, 19);
            this.lblEmail.TabIndex = 0;
            this.lblEmail.Text = "Email";
            // 
            // lblPassword
            // 
            this.lblPassword.AutoSize = true;
            this.lblPassword.Font = new System.Drawing.Font("Times New Roman", 10.2F);
            this.lblPassword.ForeColor = System.Drawing.SystemColors.ControlText;
            this.lblPassword.Location = new System.Drawing.Point(439, 105);
            this.lblPassword.Name = "lblPassword";
            this.lblPassword.Size = new System.Drawing.Size(71, 19);
            this.lblPassword.TabIndex = 0;
            this.lblPassword.Text = "Mật khẩu";
            // 
            // lblSalary
            // 
            this.lblSalary.AutoSize = true;
            this.lblSalary.Font = new System.Drawing.Font("Times New Roman", 10.2F);
            this.lblSalary.ForeColor = System.Drawing.SystemColors.ControlText;
            this.lblSalary.Location = new System.Drawing.Point(439, 68);
            this.lblSalary.Name = "lblSalary";
            this.lblSalary.Size = new System.Drawing.Size(53, 19);
            this.lblSalary.TabIndex = 0;
            this.lblSalary.Text = "Lương";
            // 
            // lblFullName
            // 
            this.lblFullName.AutoSize = true;
            this.lblFullName.Font = new System.Drawing.Font("Times New Roman", 10.2F);
            this.lblFullName.ForeColor = System.Drawing.SystemColors.ControlText;
            this.lblFullName.Location = new System.Drawing.Point(439, 31);
            this.lblFullName.Name = "lblFullName";
            this.lblFullName.Size = new System.Drawing.Size(55, 19);
            this.lblFullName.TabIndex = 0;
            this.lblFullName.Text = "Họ tên";
            // 
            // lblEmployeeId
            // 
            this.lblEmployeeId.AutoSize = true;
            this.lblEmployeeId.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEmployeeId.ForeColor = System.Drawing.SystemColors.ControlText;
            this.lblEmployeeId.Location = new System.Drawing.Point(23, 31);
            this.lblEmployeeId.Name = "lblEmployeeId";
            this.lblEmployeeId.Size = new System.Drawing.Size(58, 19);
            this.lblEmployeeId.TabIndex = 0;
            this.lblEmployeeId.Text = "Mã NV";
            // 
            // ThongTinCaNhan
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1103, 823);
            this.Controls.Add(this.groupBoxEmployeeInfo);
            this.Controls.Add(this.groupBoxButton);
            this.Controls.Add(this.groupBoxCN);
            this.Controls.Add(this.label1);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "ThongTinCaNhan";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ThongTinCaNhan";
            this.Load += new System.EventHandler(this.ThongTinCaNhan_Load);
            this.groupBoxCN.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewDSND)).EndInit();
            this.groupBoxButton.ResumeLayout(false);
            this.groupBoxEmployeeInfo.ResumeLayout(false);
            this.groupBoxEmployeeInfo.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBoxCN;
        private System.Windows.Forms.DataGridView dataGridViewDSND;
        private System.Windows.Forms.GroupBox groupBoxButton;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.Button btnRefesh;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Button btnUpdate;
        private System.Windows.Forms.Button btnDelete;
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.GroupBox groupBoxEmployeeInfo;
        private System.Windows.Forms.RadioButton radioFemale;
        private System.Windows.Forms.RadioButton radioMen;
        private System.Windows.Forms.DateTimePicker dtpkBD;
        private System.Windows.Forms.ComboBox cmbChucVu;
        private System.Windows.Forms.ComboBox cmbChiNhanh;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtDiaChi;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtSDT;
        private System.Windows.Forms.Label txt;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtMatKhau;
        private System.Windows.Forms.TextBox txtLuong;
        private System.Windows.Forms.TextBox txtHoTen;
        private System.Windows.Forms.TextBox txtTenDN;
        private System.Windows.Forms.TextBox txtEmail;
        private System.Windows.Forms.TextBox txtMaNV;
        private System.Windows.Forms.Label lblUsername;
        private System.Windows.Forms.Label lblEmail;
        private System.Windows.Forms.Label lblPassword;
        private System.Windows.Forms.Label lblSalary;
        private System.Windows.Forms.Label lblFullName;
        private System.Windows.Forms.Label lblEmployeeId;
    }
}