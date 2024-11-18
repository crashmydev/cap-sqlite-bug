using { sap.capire.bookshop as my } from '../db/schema';
using { NORTHWIND as nw } from './external/NORTHWIND';
service TestService {
    entity TestValueEntity as projection on nw.Categories {
        key CategoryID as ID,
        value as entityValue
    };
}