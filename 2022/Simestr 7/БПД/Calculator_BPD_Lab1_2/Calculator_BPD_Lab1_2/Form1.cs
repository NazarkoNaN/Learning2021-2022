using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Calculator_BPD_Lab1_2
{
    public partial class Form1 : Form
    {
        Table table;
        Label[,] labels;
        Label[] inverseNumbers;
        public Form1()
        {
            InitializeComponent();
            labels = new Label[,]{ { label3, label4, label5, label6, label7 }, 
                                   { label8, label9, label10, label11, label12 },
                                   { label13, label14, label15, label16, label17 },
                                   { label18, label19, label20, label21, label22 },
                                   { label23, label24, label25, label26, label27 },};

            inverseNumbers = new Label[] { k21, k22, k23, k24, k25 };

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void Calculate_Click(object sender, EventArgs e)
        {
            table = new Table(labels, inverseNumbers, textBox1.Text);

            switch (comboBox1.Text)
            {
                case "+":
                    table.PlasCalculate();
                    break;
                case "-":
                    table.MinusCalculate();
                    break;
                case "*":
                    table.MulriplicateCalculate();
                    break;
                case "^":
                    table.PowerCalculate();
                    break;
            }
        }
    }
}
