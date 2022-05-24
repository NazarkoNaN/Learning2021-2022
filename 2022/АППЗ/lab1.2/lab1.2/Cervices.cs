using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace lab1._2
{
    static class Cervices
    {
        private static string[] allCervises = {"Book a single room",
                                        "Book a double room",
                                        "Book a family room",
                                        "Add a bar set to the room",
                                        "Order massages for 1 person"};
        public static void SaveData(string text)
        {
            string vay = "C:\\demo\\demo.txt";

            TextReader read = new StreamReader(vay);
            string data = read.ReadToEnd();
            read.Close();

            TextWriter txt = new StreamWriter(vay);
            txt.Write(data + text);
            txt.Close();
        }

        public static string Cervise(int i)
        {
            if(i<0 || i > allCervises.Length-1)
            {
                return null;
            } else { 
                return allCervises[i]; 
            }
            
        }

        public static void AllServices()
        {
            for(int i = 0; i < allCervises.Length; i++)
            {
                Console.WriteLine((i + 1) + ". " + allCervises[i]);
            }
        }
    }
}
