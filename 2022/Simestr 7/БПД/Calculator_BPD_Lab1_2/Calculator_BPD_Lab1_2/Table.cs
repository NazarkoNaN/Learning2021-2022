using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Calculator_BPD_Lab1_2
{
    public class Table
    {
        private Label[,] _moduls;
        private Label[] _inverseNumbers;
        private double _m;

        public Table(Label[,] labels, Label[] inverseNumbers, string m)
        {
            _moduls = labels;
            _inverseNumbers = inverseNumbers;
            _m = Convert.ToDouble(m);
        }

        public void PlasCalculate()
        {
            for (int i = 0, i1 = 1; i < 5; i++, i1++)
            {
                for (int k = 0, k1 = 1; k < 5; k++, k1++)
                {
                    double result = Math.Abs((i1 + k1) * _m + (i1 + k1)) % _m;

                    if (result == 0)
                        _moduls[i, k].Text = (_m).ToString();
                    else
                        _moduls[i, k].Text = (result).ToString();
                }
            }

            for (int i = 0; i < _inverseNumbers.Length; i++)
                _inverseNumbers[i].Text = ((i + 1) * (-1)).ToString();
        }

        public void MinusCalculate()
        {
            for (int i = 0, i1 = 1; i < 5; i++, i1++)
            {
                for (int k = 0, k1 = 1; k < 5; k++, k1++)
                {
                    double result = Math.Abs((i1 - k1) * _m + (i1 - k1)) % _m;

                    if (result == 0)
                        _moduls[i, k].Text = (_m).ToString();
                    else
                        _moduls[i, k].Text = (result).ToString();
                }
            }

            for (int i = 0; i < _inverseNumbers.Length; i++)
                _inverseNumbers[i].Text = "_";
        }

        public void MulriplicateCalculate()
        {
            for (int i = 0, i1 = 1; i < 5; i++, i1++) 
            {
                for (int k = 0, k1 = 1; k < 5; k++, k1++)
                {
                    double result = Math.Abs(i1 * k1 * _m + i1 * k1) % _m;

                    if(result == 0)
                        _moduls[i, k].Text = (_m).ToString();
                    else
                        _moduls[i, k].Text = (result).ToString();
                }
            }

            for (int i = 0; i < _inverseNumbers.Length; i++)
                _inverseNumbers[i].Text = (1f/(i+1)).ToString();
        }

        public void PowerCalculate()
        {
            for (int i = 0, i1 = 1; i < 5; i++, i1++)
            {
                for (int k = 0, k1 = 1; k < 5; k++, k1++)
                {
                    double result = Math.Abs((Math.Pow(i1, k1) * _m + Math.Pow(i1, k1))) % _m;

                    if (result == 0)
                        _moduls[i, k].Text = (_m).ToString();
                    else
                        _moduls[i, k].Text = (result).ToString();
                }
            }

            for (int i = 0; i < _inverseNumbers.Length; i++)
                _inverseNumbers[i].Text = "_";
        }
    }
}
