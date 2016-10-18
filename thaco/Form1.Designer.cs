namespace THACO
{
    partial class Form1
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
            this.components = new System.ComponentModel.Container();
            this.COM = new System.IO.Ports.SerialPort(this.components);
            this.TIMER1 = new System.Windows.Forms.Timer(this.components);
            this.TIMER2 = new System.Windows.Forms.Timer(this.components);
            this.tabShowData = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.LB_DBStatus = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.TB_TenLoaiSP4 = new System.Windows.Forms.TextBox();
            this.TB_TenLoaiSP3 = new System.Windows.Forms.TextBox();
            this.TB_TenLoaiSP2 = new System.Windows.Forms.TextBox();
            this.TB_TenLoaiSP1 = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.TB_NSX2 = new System.Windows.Forms.TextBox();
            this.TB_TKHN = new System.Windows.Forms.TextBox();
            this.TB_TTHN = new System.Windows.Forms.TextBox();
            this.TB_KHN4 = new System.Windows.Forms.TextBox();
            this.TB_KHN3 = new System.Windows.Forms.TextBox();
            this.TB_KHN2 = new System.Windows.Forms.TextBox();
            this.TB_KHN1 = new System.Windows.Forms.TextBox();
            this.TB_THN4 = new System.Windows.Forms.TextBox();
            this.TB_THN3 = new System.Windows.Forms.TextBox();
            this.TB_THN2 = new System.Windows.Forms.TextBox();
            this.TB_THN1 = new System.Windows.Forms.TextBox();
            this.CB_SP4 = new System.Windows.Forms.ComboBox();
            this.CB_SP3 = new System.Windows.Forms.ComboBox();
            this.CB_SP2 = new System.Windows.Forms.ComboBox();
            this.CB_SP1 = new System.Windows.Forms.ComboBox();
            this.TB_TIME = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.txtConnectionString = new System.Windows.Forms.TextBox();
            this.txtPassword = new System.Windows.Forms.TextBox();
            this.txtUserName = new System.Windows.Forms.TextBox();
            this.txtDatabaseName = new System.Windows.Forms.TextBox();
            this.txtServerName = new System.Windows.Forms.TextBox();
            this.lblPassword = new System.Windows.Forms.Label();
            this.lblDatabaseName = new System.Windows.Forms.Label();
            this.lblConnectionString = new System.Windows.Forms.Label();
            this.lblUserName = new System.Windows.Forms.Label();
            this.lblServerName = new System.Windows.Forms.Label();
            this.radioButton2 = new System.Windows.Forms.RadioButton();
            this.radioButton1 = new System.Windows.Forms.RadioButton();
            this.label11 = new System.Windows.Forms.Label();
            this.btnSave = new System.Windows.Forms.Button();
            this.TIMER3 = new System.Windows.Forms.Timer(this.components);
            this.TIMER4 = new System.Windows.Forms.Timer(this.components);
            this.TIMER5 = new System.Windows.Forms.Timer(this.components);
            this.TIMER6 = new System.Windows.Forms.Timer(this.components);
            this.TIMER7 = new System.Windows.Forms.Timer(this.components);
            this.tabShowData.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            this.SuspendLayout();
            // 
            // TIMER1
            // 
            this.TIMER1.Interval = 5000;
            this.TIMER1.Tick += new System.EventHandler(this.TIMER1_Tick);
            // 
            // TIMER2
            // 
            this.TIMER2.Interval = 5000;
            this.TIMER2.Tick += new System.EventHandler(this.TIMER2_Tick);
            // 
            // tabShowData
            // 
            this.tabShowData.Controls.Add(this.tabPage1);
            this.tabShowData.Controls.Add(this.tabPage2);
            this.tabShowData.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabShowData.Font = new System.Drawing.Font("Cambria", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tabShowData.Location = new System.Drawing.Point(0, 0);
            this.tabShowData.Name = "tabShowData";
            this.tabShowData.SelectedIndex = 0;
            this.tabShowData.Size = new System.Drawing.Size(612, 455);
            this.tabShowData.TabIndex = 0;
            // 
            // tabPage1
            // 
            this.tabPage1.AutoScroll = true;
            this.tabPage1.Controls.Add(this.LB_DBStatus);
            this.tabPage1.Controls.Add(this.label12);
            this.tabPage1.Controls.Add(this.label4);
            this.tabPage1.Controls.Add(this.TB_TenLoaiSP4);
            this.tabPage1.Controls.Add(this.TB_TenLoaiSP3);
            this.tabPage1.Controls.Add(this.TB_TenLoaiSP2);
            this.tabPage1.Controls.Add(this.TB_TenLoaiSP1);
            this.tabPage1.Controls.Add(this.label9);
            this.tabPage1.Controls.Add(this.label6);
            this.tabPage1.Controls.Add(this.label5);
            this.tabPage1.Controls.Add(this.label3);
            this.tabPage1.Controls.Add(this.label2);
            this.tabPage1.Controls.Add(this.TB_NSX2);
            this.tabPage1.Controls.Add(this.TB_TKHN);
            this.tabPage1.Controls.Add(this.TB_TTHN);
            this.tabPage1.Controls.Add(this.TB_KHN4);
            this.tabPage1.Controls.Add(this.TB_KHN3);
            this.tabPage1.Controls.Add(this.TB_KHN2);
            this.tabPage1.Controls.Add(this.TB_KHN1);
            this.tabPage1.Controls.Add(this.TB_THN4);
            this.tabPage1.Controls.Add(this.TB_THN3);
            this.tabPage1.Controls.Add(this.TB_THN2);
            this.tabPage1.Controls.Add(this.TB_THN1);
            this.tabPage1.Controls.Add(this.CB_SP4);
            this.tabPage1.Controls.Add(this.CB_SP3);
            this.tabPage1.Controls.Add(this.CB_SP2);
            this.tabPage1.Controls.Add(this.CB_SP1);
            this.tabPage1.Controls.Add(this.TB_TIME);
            this.tabPage1.Controls.Add(this.label10);
            this.tabPage1.Controls.Add(this.label1);
            this.tabPage1.Font = new System.Drawing.Font("Cambria", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tabPage1.ForeColor = System.Drawing.Color.Navy;
            this.tabPage1.Location = new System.Drawing.Point(4, 24);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(604, 427);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "CONTROL TAB";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // LB_DBStatus
            // 
            this.LB_DBStatus.AutoSize = true;
            this.LB_DBStatus.Font = new System.Drawing.Font("Cambria", 11F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LB_DBStatus.ForeColor = System.Drawing.Color.Maroon;
            this.LB_DBStatus.Location = new System.Drawing.Point(263, 371);
            this.LB_DBStatus.Name = "LB_DBStatus";
            this.LB_DBStatus.Size = new System.Drawing.Size(53, 17);
            this.LB_DBStatus.TabIndex = 147;
            this.LB_DBStatus.Text = "FAIL!!!";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Cambria", 11F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.ForeColor = System.Drawing.Color.Maroon;
            this.label12.Location = new System.Drawing.Point(189, 371);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(68, 17);
            this.label12.TabIndex = 146;
            this.label12.Text = "STATUS: ";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Cambria", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.Color.Navy;
            this.label4.Location = new System.Drawing.Point(196, 118);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(61, 15);
            this.label4.TabIndex = 145;
            this.label4.Text = "VARIANT";
            // 
            // TB_TenLoaiSP4
            // 
            this.TB_TenLoaiSP4.Location = new System.Drawing.Point(199, 266);
            this.TB_TenLoaiSP4.Name = "TB_TenLoaiSP4";
            this.TB_TenLoaiSP4.ReadOnly = true;
            this.TB_TenLoaiSP4.Size = new System.Drawing.Size(100, 23);
            this.TB_TenLoaiSP4.TabIndex = 144;
            this.TB_TenLoaiSP4.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // TB_TenLoaiSP3
            // 
            this.TB_TenLoaiSP3.Location = new System.Drawing.Point(199, 222);
            this.TB_TenLoaiSP3.Name = "TB_TenLoaiSP3";
            this.TB_TenLoaiSP3.ReadOnly = true;
            this.TB_TenLoaiSP3.Size = new System.Drawing.Size(100, 23);
            this.TB_TenLoaiSP3.TabIndex = 143;
            this.TB_TenLoaiSP3.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // TB_TenLoaiSP2
            // 
            this.TB_TenLoaiSP2.Location = new System.Drawing.Point(199, 177);
            this.TB_TenLoaiSP2.Name = "TB_TenLoaiSP2";
            this.TB_TenLoaiSP2.ReadOnly = true;
            this.TB_TenLoaiSP2.Size = new System.Drawing.Size(100, 23);
            this.TB_TenLoaiSP2.TabIndex = 142;
            this.TB_TenLoaiSP2.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // TB_TenLoaiSP1
            // 
            this.TB_TenLoaiSP1.Location = new System.Drawing.Point(199, 136);
            this.TB_TenLoaiSP1.Name = "TB_TenLoaiSP1";
            this.TB_TenLoaiSP1.ReadOnly = true;
            this.TB_TenLoaiSP1.Size = new System.Drawing.Size(100, 23);
            this.TB_TenLoaiSP1.TabIndex = 141;
            this.TB_TenLoaiSP1.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Cambria", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.ForeColor = System.Drawing.Color.Navy;
            this.label9.Location = new System.Drawing.Point(211, 317);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(46, 15);
            this.label9.TabIndex = 138;
            this.label9.Text = "TOTAL";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Cambria", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.Color.Navy;
            this.label6.Location = new System.Drawing.Point(331, 118);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(53, 15);
            this.label6.TabIndex = 137;
            this.label6.Text = "ACTUAL";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Cambria", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.Color.Navy;
            this.label5.Location = new System.Drawing.Point(437, 118);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(39, 15);
            this.label5.TabIndex = 136;
            this.label5.Text = "PLAN";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Cambria", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.Navy;
            this.label3.Location = new System.Drawing.Point(177, 87);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(39, 15);
            this.label3.TabIndex = 135;
            this.label3.Text = "NGÀY";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Cambria", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.Navy;
            this.label2.Location = new System.Drawing.Point(32, 118);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(51, 15);
            this.label2.TabIndex = 134;
            this.label2.Text = "MODEL";
            // 
            // TB_NSX2
            // 
            this.TB_NSX2.Font = new System.Drawing.Font("Cambria", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.TB_NSX2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.TB_NSX2.Location = new System.Drawing.Point(270, 79);
            this.TB_NSX2.Name = "TB_NSX2";
            this.TB_NSX2.ReadOnly = true;
            this.TB_NSX2.Size = new System.Drawing.Size(100, 23);
            this.TB_NSX2.TabIndex = 133;
            this.TB_NSX2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // TB_TKHN
            // 
            this.TB_TKHN.Location = new System.Drawing.Point(440, 309);
            this.TB_TKHN.Name = "TB_TKHN";
            this.TB_TKHN.ReadOnly = true;
            this.TB_TKHN.Size = new System.Drawing.Size(100, 23);
            this.TB_TKHN.TabIndex = 132;
            this.TB_TKHN.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // TB_TTHN
            // 
            this.TB_TTHN.Location = new System.Drawing.Point(334, 309);
            this.TB_TTHN.Name = "TB_TTHN";
            this.TB_TTHN.ReadOnly = true;
            this.TB_TTHN.Size = new System.Drawing.Size(100, 23);
            this.TB_TTHN.TabIndex = 131;
            this.TB_TTHN.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // TB_KHN4
            // 
            this.TB_KHN4.Location = new System.Drawing.Point(440, 266);
            this.TB_KHN4.Name = "TB_KHN4";
            this.TB_KHN4.ReadOnly = true;
            this.TB_KHN4.Size = new System.Drawing.Size(100, 23);
            this.TB_KHN4.TabIndex = 130;
            this.TB_KHN4.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // TB_KHN3
            // 
            this.TB_KHN3.Location = new System.Drawing.Point(440, 222);
            this.TB_KHN3.Name = "TB_KHN3";
            this.TB_KHN3.ReadOnly = true;
            this.TB_KHN3.Size = new System.Drawing.Size(100, 23);
            this.TB_KHN3.TabIndex = 129;
            this.TB_KHN3.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // TB_KHN2
            // 
            this.TB_KHN2.Location = new System.Drawing.Point(440, 177);
            this.TB_KHN2.Name = "TB_KHN2";
            this.TB_KHN2.ReadOnly = true;
            this.TB_KHN2.Size = new System.Drawing.Size(100, 23);
            this.TB_KHN2.TabIndex = 128;
            this.TB_KHN2.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // TB_KHN1
            // 
            this.TB_KHN1.Location = new System.Drawing.Point(440, 136);
            this.TB_KHN1.Name = "TB_KHN1";
            this.TB_KHN1.ReadOnly = true;
            this.TB_KHN1.Size = new System.Drawing.Size(100, 23);
            this.TB_KHN1.TabIndex = 127;
            this.TB_KHN1.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // TB_THN4
            // 
            this.TB_THN4.Location = new System.Drawing.Point(334, 266);
            this.TB_THN4.Name = "TB_THN4";
            this.TB_THN4.ReadOnly = true;
            this.TB_THN4.Size = new System.Drawing.Size(100, 23);
            this.TB_THN4.TabIndex = 126;
            this.TB_THN4.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // TB_THN3
            // 
            this.TB_THN3.Location = new System.Drawing.Point(334, 222);
            this.TB_THN3.Name = "TB_THN3";
            this.TB_THN3.ReadOnly = true;
            this.TB_THN3.Size = new System.Drawing.Size(100, 23);
            this.TB_THN3.TabIndex = 125;
            this.TB_THN3.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // TB_THN2
            // 
            this.TB_THN2.Location = new System.Drawing.Point(334, 177);
            this.TB_THN2.Name = "TB_THN2";
            this.TB_THN2.ReadOnly = true;
            this.TB_THN2.Size = new System.Drawing.Size(100, 23);
            this.TB_THN2.TabIndex = 124;
            this.TB_THN2.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // TB_THN1
            // 
            this.TB_THN1.Location = new System.Drawing.Point(334, 136);
            this.TB_THN1.Name = "TB_THN1";
            this.TB_THN1.ReadOnly = true;
            this.TB_THN1.Size = new System.Drawing.Size(100, 23);
            this.TB_THN1.TabIndex = 123;
            this.TB_THN1.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // CB_SP4
            // 
            this.CB_SP4.DisplayMember = "TenSanPham";
            this.CB_SP4.FormattingEnabled = true;
            this.CB_SP4.Location = new System.Drawing.Point(35, 266);
            this.CB_SP4.Name = "CB_SP4";
            this.CB_SP4.Size = new System.Drawing.Size(121, 23);
            this.CB_SP4.TabIndex = 122;
            this.CB_SP4.Tag = 3;
            // 
            // CB_SP3
            // 
            this.CB_SP3.DisplayMember = "TenSanPham";
            this.CB_SP3.FormattingEnabled = true;
            this.CB_SP3.Location = new System.Drawing.Point(35, 222);
            this.CB_SP3.Name = "CB_SP3";
            this.CB_SP3.Size = new System.Drawing.Size(121, 23);
            this.CB_SP3.TabIndex = 121;
            this.CB_SP3.Tag = 2;
            // 
            // CB_SP2
            // 
            this.CB_SP2.DisplayMember = "TenSanPham";
            this.CB_SP2.FormattingEnabled = true;
            this.CB_SP2.Location = new System.Drawing.Point(35, 177);
            this.CB_SP2.Name = "CB_SP2";
            this.CB_SP2.Size = new System.Drawing.Size(121, 23);
            this.CB_SP2.TabIndex = 120;
            this.CB_SP2.Tag = 1;
            // 
            // CB_SP1
            // 
            this.CB_SP1.DisplayMember = "TenSanPham";
            this.CB_SP1.FormattingEnabled = true;
            this.CB_SP1.Location = new System.Drawing.Point(35, 136);
            this.CB_SP1.Name = "CB_SP1";
            this.CB_SP1.Size = new System.Drawing.Size(121, 23);
            this.CB_SP1.TabIndex = 119;
            this.CB_SP1.Tag = 0;
            // 
            // TB_TIME
            // 
            this.TB_TIME.Font = new System.Drawing.Font("Cambria", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.TB_TIME.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.TB_TIME.Location = new System.Drawing.Point(475, 49);
            this.TB_TIME.Name = "TB_TIME";
            this.TB_TIME.ReadOnly = true;
            this.TB_TIME.Size = new System.Drawing.Size(100, 23);
            this.TB_TIME.TabIndex = 110;
            this.TB_TIME.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Cambria", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.ForeColor = System.Drawing.Color.Maroon;
            this.label10.Location = new System.Drawing.Point(8, 12);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(259, 32);
            this.label10.TabIndex = 109;
            this.label10.Text = "NHÀ MÁY NHÍP ÔTÔ";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.label1.Location = new System.Drawing.Point(155, 51);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(317, 19);
            this.label1.TabIndex = 97;
            this.label1.Text = "BẢNG THEO DÕI KẾT QUẢ NGÀY SẢN XUẤT";
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.txtConnectionString);
            this.tabPage2.Controls.Add(this.txtPassword);
            this.tabPage2.Controls.Add(this.txtUserName);
            this.tabPage2.Controls.Add(this.txtDatabaseName);
            this.tabPage2.Controls.Add(this.txtServerName);
            this.tabPage2.Controls.Add(this.lblPassword);
            this.tabPage2.Controls.Add(this.lblDatabaseName);
            this.tabPage2.Controls.Add(this.lblConnectionString);
            this.tabPage2.Controls.Add(this.lblUserName);
            this.tabPage2.Controls.Add(this.lblServerName);
            this.tabPage2.Controls.Add(this.radioButton2);
            this.tabPage2.Controls.Add(this.radioButton1);
            this.tabPage2.Controls.Add(this.label11);
            this.tabPage2.Controls.Add(this.btnSave);
            this.tabPage2.ForeColor = System.Drawing.Color.Navy;
            this.tabPage2.Location = new System.Drawing.Point(4, 24);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Size = new System.Drawing.Size(604, 427);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "SETTINGS";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // txtConnectionString
            // 
            this.txtConnectionString.Location = new System.Drawing.Point(188, 131);
            this.txtConnectionString.Name = "txtConnectionString";
            this.txtConnectionString.Size = new System.Drawing.Size(354, 23);
            this.txtConnectionString.TabIndex = 128;
            // 
            // txtPassword
            // 
            this.txtPassword.Location = new System.Drawing.Point(188, 246);
            this.txtPassword.Name = "txtPassword";
            this.txtPassword.Size = new System.Drawing.Size(354, 23);
            this.txtPassword.TabIndex = 128;
            // 
            // txtUserName
            // 
            this.txtUserName.Location = new System.Drawing.Point(188, 208);
            this.txtUserName.Name = "txtUserName";
            this.txtUserName.Size = new System.Drawing.Size(354, 23);
            this.txtUserName.TabIndex = 128;
            // 
            // txtDatabaseName
            // 
            this.txtDatabaseName.Location = new System.Drawing.Point(188, 165);
            this.txtDatabaseName.Name = "txtDatabaseName";
            this.txtDatabaseName.Size = new System.Drawing.Size(354, 23);
            this.txtDatabaseName.TabIndex = 128;
            // 
            // txtServerName
            // 
            this.txtServerName.Location = new System.Drawing.Point(188, 131);
            this.txtServerName.Name = "txtServerName";
            this.txtServerName.Size = new System.Drawing.Size(354, 23);
            this.txtServerName.TabIndex = 128;
            // 
            // lblPassword
            // 
            this.lblPassword.AutoSize = true;
            this.lblPassword.ForeColor = System.Drawing.Color.Black;
            this.lblPassword.Location = new System.Drawing.Point(40, 254);
            this.lblPassword.Name = "lblPassword";
            this.lblPassword.Size = new System.Drawing.Size(68, 15);
            this.lblPassword.TabIndex = 123;
            this.lblPassword.Text = "Mật khẩu:";
            // 
            // lblDatabaseName
            // 
            this.lblDatabaseName.AutoSize = true;
            this.lblDatabaseName.ForeColor = System.Drawing.Color.Black;
            this.lblDatabaseName.Location = new System.Drawing.Point(40, 173);
            this.lblDatabaseName.Name = "lblDatabaseName";
            this.lblDatabaseName.Size = new System.Drawing.Size(115, 15);
            this.lblDatabaseName.TabIndex = 122;
            this.lblDatabaseName.Text = "Tên cơ sở dữ liệu:";
            // 
            // lblConnectionString
            // 
            this.lblConnectionString.AutoSize = true;
            this.lblConnectionString.ForeColor = System.Drawing.Color.Black;
            this.lblConnectionString.Location = new System.Drawing.Point(40, 139);
            this.lblConnectionString.Name = "lblConnectionString";
            this.lblConnectionString.Size = new System.Drawing.Size(90, 15);
            this.lblConnectionString.TabIndex = 124;
            this.lblConnectionString.Text = "Chuỗi kết nối:";
            // 
            // lblUserName
            // 
            this.lblUserName.AutoSize = true;
            this.lblUserName.ForeColor = System.Drawing.Color.Black;
            this.lblUserName.Location = new System.Drawing.Point(40, 216);
            this.lblUserName.Name = "lblUserName";
            this.lblUserName.Size = new System.Drawing.Size(100, 15);
            this.lblUserName.TabIndex = 126;
            this.lblUserName.Text = "Tên đăng nhập:";
            // 
            // lblServerName
            // 
            this.lblServerName.AutoSize = true;
            this.lblServerName.ForeColor = System.Drawing.Color.Black;
            this.lblServerName.Location = new System.Drawing.Point(40, 139);
            this.lblServerName.Name = "lblServerName";
            this.lblServerName.Size = new System.Drawing.Size(76, 15);
            this.lblServerName.TabIndex = 125;
            this.lblServerName.Text = "Tên Server:";
            // 
            // radioButton2
            // 
            this.radioButton2.AutoSize = true;
            this.radioButton2.Location = new System.Drawing.Point(365, 79);
            this.radioButton2.Name = "radioButton2";
            this.radioButton2.Size = new System.Drawing.Size(127, 19);
            this.radioButton2.TabIndex = 120;
            this.radioButton2.TabStop = true;
            this.radioButton2.Text = "Tạo chuỗi kết nối";
            this.radioButton2.UseVisualStyleBackColor = true;
            this.radioButton2.CheckedChanged += new System.EventHandler(this.radioButton_CheckedChanged);
            // 
            // radioButton1
            // 
            this.radioButton1.AutoSize = true;
            this.radioButton1.Location = new System.Drawing.Point(79, 79);
            this.radioButton1.Name = "radioButton1";
            this.radioButton1.Size = new System.Drawing.Size(148, 19);
            this.radioButton1.TabIndex = 121;
            this.radioButton1.TabStop = true;
            this.radioButton1.Text = "Chuỗi kết nối đầy đủ";
            this.radioButton1.UseVisualStyleBackColor = true;
            this.radioButton1.CheckedChanged += new System.EventHandler(this.radioButton_CheckedChanged);
            // 
            // label11
            // 
            this.label11.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.label11.Font = new System.Drawing.Font("Cambria", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.ForeColor = System.Drawing.Color.Maroon;
            this.label11.Location = new System.Drawing.Point(-4, 9);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(596, 32);
            this.label11.TabIndex = 119;
            this.label11.Text = "KẾT NỐI CƠ SỞ DỮ LIỆU";
            this.label11.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(262, 316);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(75, 23);
            this.btnSave.TabIndex = 113;
            this.btnSave.Text = "Lưu";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // TIMER3
            // 
            this.TIMER3.Interval = 8000;
            this.TIMER3.Tick += new System.EventHandler(this.TIMER3_Tick);
            // 
            // TIMER4
            // 
            this.TIMER4.Interval = 3600000;
            this.TIMER4.Tick += new System.EventHandler(this.TIMER4_Tick);
            // 
            // TIMER5
            // 
            this.TIMER5.Interval = 3600000;
            this.TIMER5.Tick += new System.EventHandler(this.TIMER5_Tick);
            // 
            // TIMER6
            // 
            this.TIMER6.Interval = 3600000;
            this.TIMER6.Tick += new System.EventHandler(this.TIMER6_Tick);
            // 
            // TIMER7
            // 
            this.TIMER7.Interval = 3600000;
            this.TIMER7.Tick += new System.EventHandler(this.TIMER7_Tick);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(612, 455);
            this.Controls.Add(this.tabShowData);
            this.MaximizeBox = false;
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "THACO";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.tabShowData.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            this.tabPage2.ResumeLayout(false);
            this.tabPage2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.IO.Ports.SerialPort COM;
        private System.Windows.Forms.Timer TIMER1;
        private System.Windows.Forms.Timer TIMER2;
        private System.Windows.Forms.TabControl tabShowData;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox TB_TIME;
        private System.Windows.Forms.Timer TIMER3;
        private System.Windows.Forms.Timer TIMER4;
        private System.Windows.Forms.Timer TIMER5;
        private System.Windows.Forms.Timer TIMER6;
        private System.Windows.Forms.Timer TIMER7;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.Label lblPassword;
        private System.Windows.Forms.Label lblDatabaseName;
        private System.Windows.Forms.Label lblConnectionString;
        private System.Windows.Forms.Label lblUserName;
        private System.Windows.Forms.Label lblServerName;
        private System.Windows.Forms.RadioButton radioButton2;
        private System.Windows.Forms.RadioButton radioButton1;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.TextBox txtPassword;
        private System.Windows.Forms.TextBox txtUserName;
        private System.Windows.Forms.TextBox txtDatabaseName;
        private System.Windows.Forms.TextBox txtServerName;
        private System.Windows.Forms.TextBox txtConnectionString;
        private System.Windows.Forms.Label LB_DBStatus;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox TB_TenLoaiSP4;
        private System.Windows.Forms.TextBox TB_TenLoaiSP3;
        private System.Windows.Forms.TextBox TB_TenLoaiSP2;
        private System.Windows.Forms.TextBox TB_TenLoaiSP1;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox TB_NSX2;
        private System.Windows.Forms.TextBox TB_TKHN;
        private System.Windows.Forms.TextBox TB_TTHN;
        private System.Windows.Forms.TextBox TB_KHN4;
        private System.Windows.Forms.TextBox TB_KHN3;
        private System.Windows.Forms.TextBox TB_KHN2;
        private System.Windows.Forms.TextBox TB_KHN1;
        private System.Windows.Forms.TextBox TB_THN4;
        private System.Windows.Forms.TextBox TB_THN3;
        private System.Windows.Forms.TextBox TB_THN2;
        private System.Windows.Forms.TextBox TB_THN1;
        private System.Windows.Forms.ComboBox CB_SP4;
        private System.Windows.Forms.ComboBox CB_SP3;
        private System.Windows.Forms.ComboBox CB_SP2;
        private System.Windows.Forms.ComboBox CB_SP1;
    }
}

