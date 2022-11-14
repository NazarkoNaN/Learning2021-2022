using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Office.Interop.Excel;

namespace Lab1_3
{
    public class WriteXLSX
    {
        string philepath = "C:\\GitHub\\Learning2021-2022\\2022\\Simestr 7\\БПД\\Lab1_4.xlsx";

        Application excel ;
        Workbook wb;
        Worksheet ws;

        public WriteXLSX(string philepath)
        {
            this.philepath = philepath;

            excel = new Application();
            wb = excel.Workbooks.Open(philepath);
            ws = wb.Worksheets[1];
        }
        
        public void WriteExcel(string[] things, string range)
        {
            Range cells = ws.Range[range];
            cells.set_Value(XlRangeValueDataType.xlRangeValueDefault, things);
        }

        public void Close()
        {
            wb.Save();
            //wb.SaveAs(filePath);      // If you want to save it with another name or in another folder
            wb.Close();
        }

    }
}
