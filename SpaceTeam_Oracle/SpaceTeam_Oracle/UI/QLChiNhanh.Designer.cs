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
            this.txbPageBill = new System.Windows.Forms.TextBox();
            this.btnLast = new System.Windows.Forms.Button();
            this.btnNext = new System.Windows.Forms.Button();
            this.btnPreviours = new System.Windows.Forms.Button();
            this.btnFirsts = new System.Windows.Forms.Button();
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
            this.groupBoxButton.Controls.Add(this.btnUpdate);
            this.groupBoxButton.Controls.Add(this.btnDelete);
            this.groupBoxButton.Controls.Add(this.btnAdd);
            this.groupBoxButton.Location = new System.Drawing.Point(16, 726);
            this.groupBoxButton.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBoxButton.Name = "groupBoxButton";
            this.groupBoxButton.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBoxButton.Size = new System.Drawing.Size(1035, 94);
            this.groupBoxButton.TabIndex = 35;
            this.groupBoxButton.TabStop = false;
            // 
            // btnExit
            // 
            this.btnExit.BackColor = System.Drawing.Color.Honeydew;
            this.btnExit.Location = new System.Drawing.Point(877, 18);
            this.btnExit.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(133, 53);
            this.btnExit.TabIndex = 0;
            this.btnExit.Text = "Thoát";
            this.btnExit.UseVisualStyleBackColor = false;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // btnRefesh
            // 
            this.btnRefesh.BackColor = System.Drawing.Color.Honeydew;
            this.btnRefesh.Location = new System.Drawing.Point(679, 20);
            this.btnRefesh.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnRefesh.Name = "btnRefesh";
            this.btnRefesh.Size = new System.Drawing.Size(133, 53);
            this.btnRefesh.TabIndex = 0;
            this.btnRefesh.Text = "Refesh";
            this.btnRefesh.UseVisualStyleBackColor = false;
            this.btnRefesh.Click += new System.EventHandler(this.btnRefesh_Click);
            // 
            // btnUpdate
            // 
            this.btnUpdate.BackColor = System.Drawing.Color.Honeydew;
            this.btnUpdate.Location = new System.Drawing.Point(465, 20);
            this.btnUpdate.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnUpdate.Name = "btnUpdate";
            this.btnUpdate.Size = new System.Drawing.Size(133, 53);
            this.btnUpdate.TabIndex = 0;
            this.btnUpdate.Text = "Sửa";
            this.btnUpdate.UseVisualStyleBackColor = false;
            this.btnUpdate.Click += new System.EventHandler(this.btnUpdate_Click);
            // 
            // btnDelete
            // 
            this.btnDelete.BackColor = System.Drawing.Color.Honeydew;
            this.btnDelete.Location = new System.Drawing.Point(251, 20);
            this.btnDelete.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(133, 53);
            this.btnDelete.TabIndex = 0;
            this.btnDelete.Text = "Xóa";
            this.btnDelete.UseVisualStyleBackColor = false;
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
            // 
            // btnAdd
            // 
            this.btnAdd.BackColor = System.Drawing.Color.Honeydew;
            this.btnAdd.Location = new System.Drawing.Point(32, 21);
            this.btnAdd.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(133, 53);
            this.btnAdd.TabIndex = 0;
            this.btnAdd.Text = "Thêm";
            this.btnAdd.UseVisualStyleBackColor = false;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F);
            this.label1.Location = new System.Drawing.Point(413, 22);
            this.label1.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(179, 39);
            this.label1.TabIndex = 34;
            this.label1.Text = "Chi Nhánh";
            // 
            // groupBoxCN
            // 
            this.groupBoxCN.Controls.Add(this.dataGridViewDSCN);
            this.groupBoxCN.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBoxCN.Location = new System.Drawing.Point(16, 236);
            this.groupBoxCN.Margin = new System.Windows.Forms.Padding(4);
            this.groupBoxCN.Name = "groupBoxCN";
            this.groupBoxCN.Padding = new System.Windows.Forms.Padding(4);
            this.groupBoxCN.Size = new System.Drawing.Size(1035, 416);
            this.groupBoxCN.TabIndex = 33;
            this.groupBoxCN.TabStop = false;
            this.groupBoxCN.Text = "Danh Sách Chi Nhánh";
            // 
            // dataGridViewDSCN
            // 
            this.dataGridViewDSCN.BackgroundColor = System.Drawing.Color.Honeydew;
            this.dataGridViewDSCN.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewDSCN.Location = new System.Drawing.Point(21, 48);
            this.dataGridViewDSCN.Margin = new System.Windows.Forms.Padding(4);
            this.dataGridViewDSCN.Name = "dataGridViewDSCN";
            this.dataGridViewDSCN.RowHeadersWidth = 51;
            this.dataGridViewDSCN.Size = new System.Drawing.Size(989, 343);
            this.dataGridViewDSCN.TabIndex = 0;
            this.dataGridViewDSCN.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewDSCN_CellContentClick);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtMaCN);
            this.groupBox1.Controls.Add(this.txtTenCN);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(16, 87);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox1.Size = new System.Drawing.Size(1035, 126);
            this.groupBox1.TabIndex = 32;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông Tin Chung";
            // 
            // txtMaCN
            // 
            this.txtMaCN.Location = new System.Drawing.Point(197, 44);
            this.txtMaCN.Margin = new System.Windows.Forms.Padding(4);
            this.txtMaCN.Name = "txtMaCN";
            this.txtMaCN.Size = new System.Drawing.Size(243, 34);
            this.txtMaCN.TabIndex = 56;
            // 
            // txtTenCN
            // 
            this.txtTenCN.Location = new System.Drawing.Point(729, 44);
            this.txtTenCN.Margin = new System.Windows.Forms.Padding(4);
            this.txtTenCN.Name = "txtTenCN";
            this.txtTenCN.Size = new System.Drawing.Size(235, 34);
            this.txtTenCN.TabIndex = 53;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(17, 44);
            this.label7.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(142, 28);
            this.label7.TabIndex = 44;
            this.label7.Text = "Mã Chi Nhánh";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(539, 48);
            this.label9.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(146, 28);
            this.label9.TabIndex = 43;
            this.label9.Text = "Tên Chi Nhánh";
            // 
            // txbPageBill
            // 
            this.txbPageBill.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold);
            this.txbPageBill.Location = new System.Drawing.Point(400, 660);
            this.txbPageBill.Margin = new System.Windows.Forms.Padding(4);
            this.txbPageBill.Name = "txbPageBill";
            this.txbPageBill.Size = new System.Drawing.Size(272, 34);
            this.txbPageBill.TabIndex = 82;
            this.txbPageBill.Text = "1";
            // 
            // btnLast
            // 
            this.btnLast.BackColor = System.Drawing.Color.Ivory;
            this.btnLast.Location = new System.Drawing.Point(911, 654);
            this.btnLast.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnLast.Name = "btnLast";
            this.btnLast.Size = new System.Drawing.Size(140, 50);
            this.btnLast.TabIndex = 86;
            this.btnLast.Text = "Last";
            this.btnLast.UseVisualStyleBackColor = false;
            this.btnLast.Click += new System.EventHandler(this.btnLast_Click);
            // 
            // btnNext
            // 
            this.btnNext.BackColor = System.Drawing.Color.Ivory;
            this.btnNext.Location = new System.Drawing.Point(733, 654);
            this.btnNext.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnNext.Name = "btnNext";
            this.btnNext.Size = new System.Drawing.Size(140, 50);
            this.btnNext.TabIndex = 85;
            this.btnNext.Text = "Next";
            this.btnNext.UseVisualStyleBackColor = false;
            this.btnNext.Click += new System.EventHandler(this.btnNext_Click);
            // 
            // btnPreviours
            // 
            this.btnPreviours.BackColor = System.Drawing.Color.Ivory;
            this.btnPreviours.Location = new System.Drawing.Point(177, 654);
            this.btnPreviours.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnPreviours.Name = "btnPreviours";
            this.btnPreviours.Size = new System.Drawing.Size(140, 50);
            this.btnPreviours.TabIndex = 84;
            this.btnPreviours.Text = "Previours";
            this.btnPreviours.UseVisualStyleBackColor = false;
            this.btnPreviours.Click += new System.EventHandler(this.btnPreviours_Click);
            // 
            // btnFirsts
            // 
            this.btnFirsts.BackColor = System.Drawing.Color.Ivory;
            this.btnFirsts.Location = new System.Drawing.Point(16, 656);
            this.btnFirsts.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnFirsts.Name = "btnFirsts";
            this.btnFirsts.Size = new System.Drawing.Size(140, 50);
            this.btnFirsts.TabIndex = 83;
            this.btnFirsts.Text = "Firsts";
            this.btnFirsts.UseVisualStyleBackColor = false;
            this.btnFirsts.Click += new System.EventHandler(this.btnFirsts_Click);
            // 
            // QLChiNhanh
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.PaleGreen;
            this.ClientSize = new System.Drawing.Size(1067, 831);
            this.Controls.Add(this.txbPageBill);
            this.Controls.Add(this.btnLast);
            this.Controls.Add(this.btnNext);
            this.Controls.Add(this.btnPreviours);
            this.Controls.Add(this.btnFirsts);
            this.Controls.Add(this.groupBoxButton);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.groupBoxCN);
            this.Controls.Add(this.groupBox1);
            this.Margin = new System.Windows.Forms.Padding(4);
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
        private System.Windows.Forms.TextBox txbPageBill;
        private System.Windows.Forms.Button btnLast;
        private System.Windows.Forms.Button btnNext;
        private System.Windows.Forms.Button btnPreviours;
        private System.Windows.Forms.Button btnFirsts;
    }
}