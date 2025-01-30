-- Fact Table: Sales
SELECT
    soh.salesorderid,
    date(soh.orderdate) as OrderDate,
    date(soh.duedate) as DueDate,
    date(soh.shipdate) as ShipDate,
    soh.customerid,
	soh.territoryid,
	soh.totaldue,
    sod.productid,
    sod.orderqty,
    sod.unitprice,
	st.name,
	st.countryregioncode,
	st.group
FROM sales.salesorderheader soh
INNER JOIN sales.salesorderdetail sod
    ON soh.salesorderid = sod.salesorderid
INNER JOIN sales.salesterritory st
	ON st.territoryid = soh.territoryid;

-- Dimension: Product
SELECT
    p.productid,
    p.name AS ProductName,
    p.standardcost,
    p.listprice,
    coalesce(pc.name, 'N/A') AS CategoryName,
    coalesce(ps.name, 'N/A') AS SubcategoryName
FROM
    production.product p
    LEFT JOIN production.productsubcategory ps
    ON p.productsubcategoryid = ps.productsubcategoryid
    LEFT JOIN production.productcategory pc
    ON ps.productcategoryid = pc.productcategoryid;
