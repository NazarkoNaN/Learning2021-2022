using System;
using System.Collections.Generic;
using System.Text;

namespace Lab1_2
{
    public static class Surplus
    {
        public static string Add(int a, int b, int mod)
        {
            return ((a + b) % mod).ToString();
        }

        public static string Minus(int a, int b, int mod)
        {
            b = b % mod;
            b = mod - b;
            return Add(a,b,mod);
        }

        public static string Multiply(int a, int b, int mod)
        {
            return ((a * b) % mod).ToString();
        }

        public static string Divide(int a, int b, int mod)
        {
            for(int i = 2; i < mod; i++)
            {
                if (mod % i == 0)
                    return Error.IncorectData;
            }
            for(int i = 1; i < mod; i++)
            {
                if ((i * b) % mod == 1)
                {
                    b = i;
                    break;
                }
            }

            return Multiply(a,b,mod);
        }

        public static string Power(int a, int b, int mod)
        {
            int result = 1;
            for(int i = 0; i < b; i++)
                result = (result * a) % mod;

            return result.ToString();
        }
    }
}
