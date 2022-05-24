using System;

namespace MyProject{
    class Program{
        static void Main(string[] args)
        {
            Console.Write("Nuber N: ");
            var N = Convert.ToDouble(Console.ReadLine());

            Console.Write("The area of the rectangle: ");
            var S = Convert.ToDouble(Console.ReadLine());

            var K=0.0;


            for(int i=0;i<N;i++){
                var rand1= new Random();
                var rand2 = new Random();

                var x= rand1.NextDouble()-1;
                var y= rand2.NextDouble();
                if(y<=Math.Exp(x))
                    K++;
            }
            var result = S*K/N;
            Console.WriteLine("Result: " + result);
        }
    }
}
