//+------------------------------------------------------------------+
//|                                                  time_series.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   Comment("hello billionaire");
   string textMA = "";
   string textCMA = "";
   int t[16] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}; 
   double sales[16] = {4.8, 4.1, 6.0, 6.5, 5.8, 5.2, 6.8, 7.4, 6.0, 5.6, 7.5, 7.8, 6.3, 5.9, 8.0, 8.4};
   int quater[4] = {1, 2, 3, 4};
   double MA[13];
   double CMA[12];
   
   for(int i=2; i<15; i++)
   {
      MA[i-2] = MA(sales[i-2], sales[i-1], sales[i-0], sales[i+1]);
      textMA = textMA +" "+ DoubleToStr( MA(sales[i-2], sales[i-1], sales[i-0], sales[i+1]));
   
   }
   
   for(int j=0; j<12; j++)
   {
      CMA[j] = (MA[j] + MA[j+1])/2;
      textCMA = textCMA + DoubleToStr(CMA[j]) + " ";
   }
   
   MessageBox(textMA+"\n \n"+ textCMA);
   
  }
//+------------------------------------------------------------------+

 double MA(double n1, double n2, double n3, double n4)
 {
   double result = (n1+n2+n3+n4)/4;
 
   return result;
 }