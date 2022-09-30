using System;

namespace MyProran2{

    class Proram{

        static double integral(){
            var N = 1000;
            var S = 1.0;
            var K=0.0;

            for(int i=0;i<N;i++){
                var rand1= new Random();
                var rand2 = new Random();

                var x= rand1.NextDouble()-1;
                var y= rand2.NextDouble();
                if(y<=Math.Exp(x))
                    K++;
            }
            return S*K/N;
        }

        static void Main(string[] ars)
        {
            double[] arr1 = new double[100];
            double[] arr2 = new double[1000];

            double integral1=0;
            double integral2=0;

            for(int i=0;i<100;i++){
                arr1[i]=integral();
                integral1+=arr1[i];
            }
            integral1/=100;

            for(int i=0;i<1000;i++){
                arr2[i]=integral();
                integral2+=arr2[i];
            }
            integral2/=1000;


            double M1=0;
            double M2=0;

            for(int i=0;i<100;i++)
                M1+=arr1[i]/100;
            
            for(int i=0;i<1000;i++)
                M2+=arr2[i]/1000;


            double D1=0;
            double D2=0;

            for(int i=0;i<100;i++)
                D1+=(arr1[i]-M1);
            D1*=D1;

            for(int i=0;i<1000;i++)
                D2+=(arr2[i]-M2);
            D2*=D2;

            Console.WriteLine("Interal(100) : "+ integral1);
            Console.WriteLine("M(100) : "+ Math.Round(M1,2));
            Console.WriteLine("D(100) : "+ D1);
            Console.WriteLine("Q(100) :" + (M1 - integral1));

            Console.WriteLine("");

            Console.WriteLine("Interal(1000) : "+ integral2);
            Console.WriteLine("M(1000) : "+ Math.Round(M2,2));
            Console.WriteLine("D(1000) : "+ D2);
            Console.WriteLine("Q(100) :" + (M2 - integral2));
        }
    }
}