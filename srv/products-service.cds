using { NORTHWIND.Products as externalProducts } from './external/NORTHWIND';

service ProductsService {
    entity Products as projection on externalProducts;
    entity ValueHelpProductID as projection on externalProducts {
        key ProductID as ID,
        ProductName
    };
}