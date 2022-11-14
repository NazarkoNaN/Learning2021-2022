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
            int equal = 0;

            try
            {
                equal = checked(Convert.ToInt32(textBox1.Text));
            }
            catch
            {
                Answer1.Text = (2 ^ 2).ToString();
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
                Answer3.Text = SimpleNumbers.Evclid(a, b);
            }
        }

        public static class SimpleNumbers
        {
            public static string Check(int number)
            {
                int i;

                if (number == 2 || number == 3)
                    return "просте";

                for (i = 2; i < number - 1; i++)
                {
                    if (PoverMod(i, number - 1, number) != 1)
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
                    int p = rand.Next(2, topAbourd + 1);

                    double i;
                    for (i = 2; i < p; i++)
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
                if (a < b)
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

        private void button4_Click(object sender, EventArgs e)
        {
            label10.Text = phi(Convert.ToInt32(textBox5.Text)).ToString();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            int n = Convert.ToInt32(textBox6.Text);
            int m = Convert.ToInt32(textBox7.Text);

            int result = PoverMod(n,m-2,m);

            label13.Text = result.ToString(); 
        }

        private void button6_Click(object sender, EventArgs e)
        {
            string philepath = "C:\\GitHub\\Learning2021-2022\\2022\\Simestr 7\\БПД\\Lab1_6.xlsx";

            WriteXLSX newWrite = new WriteXLSX(philepath);

            for (int i = 2; i <= 41; i++)
            {
                int[] row = new int[42];
                for (int k = 1; k <= 42; k++)
                    row[k - 1] = PoverMod(i, k, 43);

                string range1 = "B" + (i + 2) + ":AQ" + (i + 2);
                string range2 = "AS" + (i + 2) + ":AT" + (i + 2);

                List<int> HqList = new List<int>();
                for (int k = 0; k < row.Length; k++)
                {
                    if (!IsInside(HqList, row[k]))
                        HqList.Add(row[k]);
                }
                HqList.Sort();

                string Hq = "";
                for (int k = 0; k < HqList.ToArray().Length - 1; k++)
                    Hq += HqList[k] + ", ";
                Hq += HqList[HqList.ToArray().Length - 1];

                string[] rowString = new string[row.Length];
                for(int k = 0; k < row.Length; k++)
                {
                    rowString[k] = row[k].ToString();
                }

                newWrite.WriteExcel(rowString, range1);
                newWrite.WriteExcel(new string[] { Hq, HqList.ToArray().Length.ToString() }, range2);
            }

            newWrite.Close();
        }


        private bool IsInside(List<int> list, int element)
        {
            for(int i = 0; i < list.ToArray().Length; i++)
            {
                if (list[i] == element)
                    return true;
            }

            return false;
        }

        private int phi(int n)
        {
            int result = n;
            for (int i = 2; i * i <= n; ++i)
            {
                if (n % i == 0)
                {
                    while (n % i == 0)
                        n /= i;
                    result -= result / i;
                }
            }
            if (n > 1)
                result -= result / n;

            return result;
        }

        private static int PoverMod(int a, int n, int mod)
        {
            int result = 1;

            for(int i = 0; i < n; i++)
                result = (result * a) % mod;

            return result;
        }

        
    }
}
