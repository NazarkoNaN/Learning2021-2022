using System;

namespace lab1._2
{
    class Program
    {
        static void Main(string[] args)
        {
            string MyServices = "";
            string i;
            do
            {
                Console.WriteLine("If you want to finish, write 'end'");
                Console.WriteLine("Select a service:");
                Cervices.AllServices();
                i = Console.ReadLine();

                if (i != "end")
                {
                    if(Cervices.Cervise(Convert.ToInt32(i) - 1) != null){
                        MyServices += "\n" + Cervices.Cervise(Convert.ToInt32(i) - 1);
                    }    
                }
                else
                {
                    Cervices.SaveData(MyServices+"\n");
                    break;
                }
                
                Console.Clear();
            } while (true);
            
        }
    }
}
