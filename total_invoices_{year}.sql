--How many Invoices were there in 2009 and 2011?

--2009
SELECT COUNT(i.InvoiceId) FROM Invoice i WHERE cast(i.InvoiceDate as datetime) between '2009-01-01 00:00:00.000' and '2009-12-31 23:59:00.999' 

--2011
SELECT COUNT(i.InvoiceId) FROM Invoice i WHERE cast(i.InvoiceDate as datetime) between '2011-01-01 00:00:00.000' and '2011-12-31 23:59:00.999'  

--Both
SELECT COUNT(i.InvoiceId) FROM Invoice i WHERE cast(i.InvoiceDate as datetime) between '2009-01-01 00:00:00.000' and '2009-12-31 23:59:00.999' OR cast(i.InvoiceDate as datetime) between '2011-01-01 00:00:00.000' and '2011-12-31 23:59:00.999'  

--Show all
SELECT i.InvoiceId, i.InvoiceDate, i.Total FROM Invoice i WHERE cast(i.InvoiceDate as datetime) between '2009-01-01 00:00:00.000' and '2009-12-31 23:59:00.999' OR cast(i.InvoiceDate as datetime) between '2011-01-01 00:00:00.000' and '2011-12-31 23:59:00.999'  




