﻿namespace SpaceTeam_Oracle
{
    partial class QLChiNhanh
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
            this.groupBoxButton = new System.Windows.Forms.GroupBox();
            this.btnExit = new System.Windows.Forms.Button();
            this.btnRefesh = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.btnUpdate = new System.Windows.Forms.Button();
            this.btnDelete = new System.Windows.Forms.Button();
            this.btnAdd = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBoxCN = new System.Windows.Forms.GroupBox();
            this.dataGridViewDSCN = new System.Windows.Forms.DataGridView();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtMaCN = new System.Windows.Forms.TextBox();
            this.txtTenCN = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.groupBoxButton.SuspendLayout();
            this.groupBoxCN.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewDSCN)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBoxButton
            // 
            this.groupBoxButton.Controls.Add(this.btnExit);
            this.groupBoxButton.Controls.Add(this.btnRefesh);
            this.groupBoxButton.Controls.Add(this.btnSave);
            this.groupBoxButton.Controls.Add(this.btnUpdate);
            this.groupBoxButton.Controls.Add(this.btnDelete);
            this.groupBoxButton.Controls.Add(this.btnAdd);
            this.groupBoxButton.Location = new System.Drawing.Point(70, 539);
            this.groupBoxButton.Margin = new System.Windows.Forms.Padding(2);
            this.groupBoxButton.Name = "groupBoxButton";
            this.groupBoxButton.Padding = new System.Windows.Forms.Padding(2);
            this.groupBoxButton.Size = new System.Drawing.Size(648, 62);
            this.groupBoxButton.TabIndex = 35;
            this.groupBoxButton.TabStop = false;
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(539, 15);
            this.btnExit.Margin = new System.Windows.Forms.Padding(2);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(81, 29);
            this.btnExit.TabIndex = 0;
            this.btnExit.Text = "Thoát";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // btnRefesh
            // 
            this.btnRefesh.Location = new System.Drawing.Point(430, 15);
            this.btnRefesh.Margin = new System.Windows.Forms.Padding(2);
            this.btnRefesh.Name = "btnRefesh";
            this.btnRefesh.Size = new System.Drawing.Size(82, 29);
            this.btnRefesh.TabIndex = 0;
            this.btnRefesh.Text = "Refesh";
            this.btnRefesh.UseVisualStyleBackColor = true;
            this.btnRefesh.Click += new System.EventHandler(this.btnRefesh_Click);
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(328, 16);
            this.btnSave.Margin = new System.Windows.Forms.Padding(2);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(79, 28);
            this.btnSave.TabIndex = 0;
            this.btnSave.Text = "Ghi/Lưu";
            this.btnSave.UseVisualStyleBackColor = true;
            // 
            // btnUpdate
            // 
            this.btnUpdate.Location = new System.Drawing.Point(217, 17);
            this.btnUpdate.Margin = new System.Windows.Forms.Padding(2);
            this.btnUpdate.Name = "btnUpdate";
            this.btnUpdate.Size = new System.Drawing.Size(83, 28);
            this.btnUpdate.TabIndex = 0;
            this.btnUpdate.Text = "Sửa";
            this.btnUpdate.UseVisualStyleBackColor = true;
            this.btnUpdate.Click += new System.EventHandler(this.btnUpdate_Click);
            // 
            // btnDelete
            // 
            this.btnDelete.Location = new System.Drawing.Point(107, 16);
            this.btnDelete.Margin = new System.Windows.Forms.Padding(2);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(81, 28);
            this.btnDelete.TabIndex = 0;
            this.btnDelete.Text = "Xóa";
            this.btnDelete.UseVisualStyleBackColor = true;
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(9, 15);
            this.btnAdd.Margin = new System.Windows.Forms.Padding(2);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(72, 28);
            this.btnAdd.TabIndex = 0;
            this.btnAdd.Text = "Thêm";
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F);
            this.label1.Location = new System.Drawing.Point(372, 28);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(105, 25);
            this.label1.TabIndex = 34;
            this.label1.Text = "Chi Nhánh";
            // 
            // groupBoxCN
            // 
            this.groupBoxCN.Controls.Add(this.dataGridViewDSCN);
            this.groupBoxCN.Location = new System.Drawing.Point(12, 192);
            this.groupBoxCN.Name = "groupBoxCN";
            this.groupBoxCN.Size = new System.Drawing.Size(776, 338);
            this.groupBoxCN.TabIndex = 33;
            this.groupBoxCN.TabStop = false;
            this.groupBoxCN.Text = "Danh Sách Chi Nhánh";
            // 
            // dataGridViewDSCN
            // 
            this.dataGridViewDSCN.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewDSCN.Location = new System.Drawing.Point(16, 19);
            this.dataGridViewDSCN.Name = "dataGridViewDSCN";
            this.dataGridViewDSCN.Size = new System.Drawing.Size(742, 299);
            this.dataGridViewDSCN.TabIndex = 0;
            this.dataGridViewDSCN.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewDSCN_CellContentClick);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtMaCN);
            this.groupBox1.Controls.Add(this.txtTenCN);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Location = new System.Drawing.Point(12, 71);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(776, 83);
            this.groupBox1.TabIndex = 32;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông Tin Chung";
            // 
            // txtMaCN
            // 
            this.txtMaCN.Location = new System.Drawing.Point(116, 30);
            this.txtMaCN.Name = "txtMaCN";
            this.txtMaCN.Size = new System.Drawing.Size(121, 20);
            this.txtMaCN.TabIndex = 56;
            // 
            // txtTenCN
            // 
            this.txtTenCN.Location = new System.Drawing.Point(515, 29);
            this.txtTenCN.Name = "txtTenCN";
            this.txtTenCN.Size = new System.Drawing.Size(121, 20);
            this.txtTenCN.TabIndex = 53;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(13, 36);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(75, 13);
            this.label7.TabIndex = 44;
            this.label7.Text = "Mã Chi Nhánh";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(425, 33);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(79, 13);
            this.label9.TabIndex = 43;
            this.label9.Text = "Tên Chi Nhánh";
            // 
            // QLChiNhanh
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 621);
            this.Controls.Add(this.groupBoxButton);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.groupBoxCN);
            this.Controls.Add(this.groupBox1);
            this.Name = "QLChiNhanh";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "QLChiNhanh";
            this.Load += new System.EventHandler(this.QLChiNhanh_Load);
            this.groupBoxButton.ResumeLayout(false);
            this.groupBoxCN.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewDSCN)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBoxButton;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.Button btnRefesh;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Button btnUpdate;
        private System.Windows.Forms.Button btnDelete;
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBoxCN;
        private System.Windows.Forms.DataGridView dataGridViewDSCN;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtMaCN;
        private System.Windows.Forms.TextBox txtTenCN;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label9;
    }
}