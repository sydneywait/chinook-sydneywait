--What are the respective total sales for each of those years?

--Total 2009
SELECT sum(i.Total) FROM Invoice i WHERE cast(i.InvoiceDate as datetime) between '2009-01-01 00:00:00.000' and '2009-12-31 23:59:00.999' 

--Total 2011
SELECT sum(i.Total) FROM Invoice i WHERE cast(i.InvoiceDate as datetime) between '2011-01-01 00:00:00.000' and '2011-12-31 23:59:00.999'  

--Total both years
SELECT sum(i.Total) FROM Invoice i WHERE cast(i.InvoiceDate as datetime) between '2009-01-01 00:00:00.000' and '2009-12-31 23:59:00.999' OR cast(i.InvoiceDate as datetime) between '2011-01-01 00:00:00.000' and '2011-12-31 23:59:00.999'  
