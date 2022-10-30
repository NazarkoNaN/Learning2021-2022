using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Lab1_3
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            double equal = 0;

            try
            {
                equal = checked(Convert.ToDouble(textBox1.Text));
            }
            catch
            {
                Answer1.Text = (2^2).ToString();
            }
            finally
            {
                Answer1.Text = SimpleNumbers.Check(equal);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int topAbourd = 0;

            try
            {
                topAbourd = checked(Convert.ToInt32(textBox2.Text));
            }
            catch
            {
                Answer2.Text = "Неправильно введенні данні";
            }
            finally
            {
                Answer2.Text = SimpleNumbers.Generate(topAbourd);
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            int a = 0;
            int b = 0;

            try
            {
                a = checked(Convert.ToInt32(textBox3.Text));
                b = checked(Convert.ToInt32(textBox4.Text));
            }
            catch
            {
                Answer3.Text = "Неправильно введенні данні";
            }
            finally
            {
                Answer3.Text = SimpleNumbers.Evclid(a,b);
            }
        }

        public static class SimpleNumbers
        {
            public static string Check(double number)
            {
                double i;

                for (i = 2; i < number-1; i++)
                {
                    if (Math.Pow(i,(number - 1)) % number != 1)
                        break;    
                }

                if (i == number - 1)
                    return "просте";
                else
                    return "не просте";
            }
            public static string Generate(int topAbourd)
            {
                if (topAbourd < 2)
                    return "Неправильно введенні данні";
                while (true)
                {
                    Random rand = new Random();
                    int p = rand.Next(2, topAbourd+1);

                    double i;
                    for(i = 2; i < p; i++)
                    {
                        if (p % i == 0)
                            break;
                    }

                    if (i == p)
                        return p.ToString();
                }
            }

            public static string Evclid(double a, double b)
            {
                if(a < b)
                {
                    double c = a;
                    a = b;
                    b = c;
                }

                double r;
                do
                {
                    r = a % b;
                    if (r != 0)
                    {
                        a = b;
                        b = r;
                    }
                } while (r != 0);

                return b.ToString();
            }
        }

        private void label7_Click(object sender, EventArgs e)
        {

        }
    }
}
