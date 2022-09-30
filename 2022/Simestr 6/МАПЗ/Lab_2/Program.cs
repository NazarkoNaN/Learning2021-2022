namespace MyProj{
    public class Program{
        static void Main(string[] arg){

            Console.Write("A: ");
            var A = Convert.ToInt32(Console.ReadLine());

            Console.Write("B: ");
            var B = Convert.ToInt32(Console.ReadLine());
            
            Console.Write("C: ");
            var C = Convert.ToInt32(Console.ReadLine());

            int S=0,N=0;

            if(A%2==0){
                S+=A;
                N++;
            }
            if(B%2==0){
                S+=B;
                N++;
            }
            if(C%2==0){
                S+=C;
                N++;
            }

            Console.WriteLine("S = "+ S + "\nN = " + N);
        }
    }
}
