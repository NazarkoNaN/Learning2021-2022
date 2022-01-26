using OfficeOpenXml;
using OfficeOpenXml.Drawing.Chart;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Lab1._1
{
    public partial class Form1 : Form
    {
        private List<char> simbolList = new List<char>();

        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            for(int i = 0; i < textBox.TextLength; i++)
                simbolList.Add(textBox.Text[i]);

            simbolList.Sort();

            char previosChar = new char();
            List<Simbol> Gr = new List<Simbol>();
            Simbol simbol = new Simbol();
            int k = 0;
            foreach (char p in simbolList)
            {
                if (p >='\u0021')
                {
                    if (k == 0)
                    {
                        simbol = new Simbol(p);
                        Gr.Add(simbol);
                    }
                    else if (p == previosChar)
                    {
                        Gr[Gr.IndexOf(simbol)].kol++;
                    }
                    else if (p != previosChar)
                    {
                        simbol = new Simbol(p);
                        Gr.Add(simbol);
                    }
                }

                k++;
                previosChar = p;
            }

            exelCreatro(Gr);

            textBox2.Clear();
            foreach (Simbol p in Gr)
                textBox2.Text += p.simbl +"-"+p.kol+ "   ";

            simbolList.Clear();
            Gr.Clear();
        }

        private async Task exelCreatro(List<Simbol> Gr)
        {
            ExcelPackage.LicenseContext = OfficeOpenXml.LicenseContext.NonCommercial;
            var file = new FileInfo(@".\Lab.xlsx");

            var Data = Gr;

            await SaveExelFile(Data,file);
        }

        private static async Task SaveExelFile(List<Simbol> data, FileInfo file)
        {
            DeliteIfExists(file);

            using(var package = new ExcelPackage(file))
            {
                var ws = package.Workbook.Worksheets.Add("MinReport");

                var range = ws.Cells["A1"].LoadFromCollection(data,true);
                range.AutoFitColumns();

                ExcelBarChart Chart = ws.Drawings.AddChart("barChart", eChartType.BarClustered) as ExcelBarChart;
                Chart.Title.Text = "Графік";
                Chart.SetSize(600, 300);
                Chart.SetPosition(5, 0, 1, 0);
                var ser1 = (ExcelChartSerie)(Chart.Series.Add(ws.Cells["B1:B"+ (data.Count()+1)],ws.Cells["A1:A"+(data.Count+1)]));

                await package.SaveAsync();
            }
        }

        private static void DeliteIfExists(FileInfo file)
        {
            if (file.Exists)
                file.Delete();
        }
    }
}

public class Simbol
{
    public char simbl { get; set; }
    public int kol { get; set; }

    public Simbol(char s) { this.simbl = s; this.kol = 1; }

    public Simbol() { }
}
