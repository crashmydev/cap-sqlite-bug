/* checksum : eb8ae9e478eaba1a8c0c9b93ddb374bf */
@cds.external : true
@cds.persistence.skip : true
entity NorthwindModel.Category_Sales_for_1997 {
  key CategoryName : LargeString not null;
  CategorySales : Decimal;
};

@cds.external : true
@cds.persistence.skip : true
entity NorthwindModel.Product_Sales_for_1997 {
  key CategoryName : LargeString not null;
  key ProductName : LargeString not null;
  ProductSales : Decimal;
};

@cds.external : true
service NORTHWIND {};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Categories {
  key CategoryID : Integer not null;
  CategoryName : LargeString;
  Description : LargeString;
  Picture : LargeBinary;
  value : String(30);
  Products : Association to many NORTHWIND.Products {  };
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.CustomerDemographics {
  key CustomerTypeID : LargeString not null;
  CustomerDesc : LargeString;
  Customers : Association to many NORTHWIND.Customers {  };
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Customers {
  key CustomerID : LargeString not null;
  CompanyName : LargeString;
  ContactName : LargeString;
  ContactTitle : LargeString;
  Address : LargeString;
  City : LargeString;
  Region : LargeString;
  PostalCode : LargeString;
  Country : LargeString;
  Phone : LargeString;
  Fax : LargeString;
  Orders : Association to many NORTHWIND.Orders {  };
  CustomerDemographics : Association to many NORTHWIND.CustomerDemographics {  };
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Employees {
  key EmployeeID : Integer not null;
  LastName : LargeString;
  FirstName : LargeString;
  Title : LargeString;
  TitleOfCourtesy : LargeString;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  BirthDate : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  HireDate : DateTime;
  Address : LargeString;
  City : LargeString;
  Region : LargeString;
  PostalCode : LargeString;
  Country : LargeString;
  HomePhone : LargeString;
  Extension : LargeString;
  Photo : LargeBinary;
  Notes : LargeString;
  ReportsTo : Integer;
  PhotoPath : LargeString;
  Employees1 : Association to many NORTHWIND.Employees {  };
  Employee1 : Association to one NORTHWIND.Employees {  };
  Orders : Association to many NORTHWIND.Orders {  };
  Territories : Association to many NORTHWIND.Territories {  };
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Order_Details {
  key OrderID : Integer not null;
  key ProductID : Integer not null;
  UnitPrice : Decimal not null;
  Quantity : Integer not null;
  @odata.Type : 'Edm.Single'
  Discount : Double not null;
  Order : Association to one NORTHWIND.Orders {  };
  Product : Association to one NORTHWIND.Products {  };
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Orders {
  key OrderID : Integer not null;
  CustomerID : LargeString;
  EmployeeID : Integer;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  OrderDate : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  RequiredDate : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  ShippedDate : DateTime;
  ShipVia : Integer;
  Freight : Decimal;
  ShipName : LargeString;
  ShipAddress : LargeString;
  ShipCity : LargeString;
  ShipRegion : LargeString;
  ShipPostalCode : LargeString;
  ShipCountry : LargeString;
  Customer : Association to one NORTHWIND.Customers {  };
  Employee : Association to one NORTHWIND.Employees {  };
  Order_Details : Association to many NORTHWIND.Order_Details {  };
  Shipper : Association to one NORTHWIND.Shippers {  };
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Products {
  key ProductID : Integer not null;
  ProductName : LargeString;
  SupplierID : Integer;
  CategoryID : Integer;
  QuantityPerUnit : LargeString;
  UnitPrice : Decimal;
  UnitsInStock : Integer;
  UnitsOnOrder : Integer;
  ReorderLevel : Integer;
  Discontinued : Boolean not null;
  Category : Association to one NORTHWIND.Categories {  };
  Order_Details : Association to many NORTHWIND.Order_Details {  };
  Supplier : Association to one NORTHWIND.Suppliers {  };
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Regions {
  key RegionID : Integer not null;
  RegionDescription : LargeString;
  Territories : Association to many NORTHWIND.Territories {  };
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Shippers {
  key ShipperID : Integer not null;
  CompanyName : LargeString;
  Phone : LargeString;
  Orders : Association to many NORTHWIND.Orders {  };
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Suppliers {
  key SupplierID : Integer not null;
  CompanyName : LargeString;
  ContactName : LargeString;
  ContactTitle : LargeString;
  Address : LargeString;
  City : LargeString;
  Region : LargeString;
  PostalCode : LargeString;
  Country : LargeString;
  Phone : LargeString;
  Fax : LargeString;
  HomePage : LargeString;
  Products : Association to many NORTHWIND.Products {  };
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Territories {
  key TerritoryID : LargeString not null;
  TerritoryDescription : LargeString;
  RegionID : Integer not null;
  Region : Association to one NORTHWIND.Regions {  };
  Employees : Association to many NORTHWIND.Employees {  };
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Alphabetical_list_of_products {
  key ProductID : Integer not null;
  key ProductName : LargeString not null;
  SupplierID : Integer;
  CategoryID : Integer;
  QuantityPerUnit : LargeString;
  UnitPrice : Decimal;
  UnitsInStock : Integer;
  UnitsOnOrder : Integer;
  ReorderLevel : Integer;
  key Discontinued : Boolean not null;
  key CategoryName : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Category_Sales_for_1997 {
  key CategoryName : LargeString not null;
  CategorySales : Decimal;
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Current_Product_Lists {
  key ProductID : Integer not null;
  key ProductName : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Customer_and_Suppliers_by_Cities {
  City : LargeString;
  key CompanyName : LargeString not null;
  ContactName : LargeString;
  key Relationship : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Invoices {
  ShipName : LargeString;
  ShipAddress : LargeString;
  ShipCity : LargeString;
  ShipRegion : LargeString;
  ShipPostalCode : LargeString;
  ShipCountry : LargeString;
  CustomerID : LargeString;
  key CustomerName : LargeString not null;
  Address : LargeString;
  City : LargeString;
  Region : LargeString;
  PostalCode : LargeString;
  Country : LargeString;
  key Salesperson : LargeString not null;
  key OrderID : Integer not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  OrderDate : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  RequiredDate : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  ShippedDate : DateTime;
  key ShipperName : LargeString not null;
  key ProductID : Integer not null;
  key ProductName : LargeString not null;
  key UnitPrice : Decimal not null;
  key Quantity : Integer not null;
  @odata.Type : 'Edm.Single'
  key Discount : Double not null;
  ExtendedPrice : Decimal;
  Freight : Decimal;
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Order_Details_Extendeds {
  key OrderID : Integer not null;
  key ProductID : Integer not null;
  key ProductName : LargeString not null;
  key UnitPrice : Decimal not null;
  key Quantity : Integer not null;
  @odata.Type : 'Edm.Single'
  key Discount : Double not null;
  ExtendedPrice : Decimal;
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Order_Subtotals {
  key OrderID : Integer not null;
  Subtotal : Decimal;
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Orders_Qries {
  key OrderID : Integer not null;
  CustomerID : LargeString;
  EmployeeID : Integer;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  OrderDate : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  RequiredDate : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  ShippedDate : DateTime;
  ShipVia : Integer;
  Freight : Decimal;
  ShipName : LargeString;
  ShipAddress : LargeString;
  ShipCity : LargeString;
  ShipRegion : LargeString;
  ShipPostalCode : LargeString;
  ShipCountry : LargeString;
  key CompanyName : LargeString not null;
  Address : LargeString;
  City : LargeString;
  Region : LargeString;
  PostalCode : LargeString;
  Country : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Product_Sales_for_1997 {
  key CategoryName : LargeString not null;
  key ProductName : LargeString not null;
  ProductSales : Decimal;
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Products_Above_Average_Prices {
  key ProductName : LargeString not null;
  UnitPrice : Decimal;
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Products_by_Categories {
  key CategoryName : LargeString not null;
  key ProductName : LargeString not null;
  QuantityPerUnit : LargeString;
  UnitsInStock : Integer;
  key Discontinued : Boolean not null;
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Sales_by_Categories {
  key CategoryID : Integer not null;
  key CategoryName : LargeString not null;
  key ProductName : LargeString not null;
  ProductSales : Decimal;
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Sales_Totals_by_Amounts {
  SaleAmount : Decimal;
  key OrderID : Integer not null;
  key CompanyName : LargeString not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  ShippedDate : DateTime;
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Summary_of_Sales_by_Quarters {
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  ShippedDate : DateTime;
  key OrderID : Integer not null;
  Subtotal : Decimal;
};

@cds.external : true
@cds.persistence.skip : true
entity NORTHWIND.Summary_of_Sales_by_Years {
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  ShippedDate : DateTime;
  key OrderID : Integer not null;
  Subtotal : Decimal;
};

