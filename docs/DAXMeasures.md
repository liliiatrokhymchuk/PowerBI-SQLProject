DAX Measures:

1. Avg Product Price = AVERAGE(DimProduct[List price])

2. Avg Sales per Day \=  
   DIVIDE(  
       [Total Sales],  
       DISTINCTCOUNT('Date'[Date]),  
       0) 

3. Total Sales \= SUM(FactSales[Total Due])

4. Sales Growth % \=  
   VAR CurrentSales \= [Total Sales]  
   VAR PreviousSales \= CALCULATE([Total Sales], DATEADD('Date'[Date], -1, YEAR)  
   )  
   RETURN  
   DIVIDE(CurrentSales - PreviousSales, PreviousSales, BLANK())  

5. Product Rank by Sales \=  
   RANKX(  
       ALL(DimProduct[Product Name]),  
       [Total Sales],  
       ,  
       DESC)  

6. Product Category Contribution % \=  
   DIVIDE(  
      SUM(FactSales[Total Due]),  
       CALCULATE(SUM(FactSales[Total Due]), ALL(DimProduct[Category Name])),  
       0)