using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Lab1_2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int _a = 1;
            int _b = 1;
            int _mod = 1;

            char _action = '+';

            try
            {
                _a = Convert.ToInt32(a.Text);
                _b = Convert.ToInt32(b.Text);
                _mod = Convert.ToInt32(mod.Text);

                _action = action.Text[0];
            }
            catch
            {
                result.Text = Error.IncorectData;
                return;
            }

            result.Text = Calculate(_a, _b, _mod, _action);

        }

        private string Calculate(int a,int b, int mod, char action)
        {
            string result;

            switch (action)
            {
                case '+':
                    result = Surplus.Add(a, b, mod);
                    break;
                case '-':
                    result = Surplus.Minus(a, b, mod);
                    break;
                case '*':
                    result = Surplus.Multiply(a, b, mod);
                    break;
                case '/':
                    result = Surplus.Divide(a, b, mod);
                    break;
                case '^':
                    result = Surplus.Power(a, b, mod);
                    break;
                default:
                    result = Error.IncorectData;
                    break;
            }

            return result;
        }
    }

    public static class Error
    {
        public const string IncorectData = "Incorrect write data";
    }
}
