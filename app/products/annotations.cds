using ProductsService as service from '../../srv/products-service';
annotate service.Products with @(
    Capabilities.SearchRestrictions : {
        Searchable : false,
    },
    Common.SemanticKey : [ 'ProductID' ],

    UI.SelectionFields : [ ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued ],

    Capabilities.FilterRestrictions       : {
        RequiresFilter    : true,
        RequiredProperties: [ ProductID ],
    },

    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ProductID',
                Value : ProductID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ProductName',
                Value : ProductName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SupplierID',
                Value : SupplierID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CategoryID',
                Value : CategoryID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'QuantityPerUnit',
                Value : QuantityPerUnit,
            },
            {
                $Type : 'UI.DataField',
                Label : 'UnitPrice',
                Value : UnitPrice,
            },
            {
                $Type : 'UI.DataField',
                Label : 'UnitsInStock',
                Value : UnitsInStock,
            },
            {
                $Type : 'UI.DataField',
                Label : 'UnitsOnOrder',
                Value : UnitsOnOrder,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ReorderLevel',
                Value : ReorderLevel,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Discontinued',
                Value : Discontinued,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ProductID',
            Value : ProductID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'ProductName',
            Value : ProductName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SupplierID',
            Value : SupplierID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CategoryID',
            Value : CategoryID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'QuantityPerUnit',
            Value : QuantityPerUnit,
        },
    ],
);

annotate service.Products with {
    ProductID
    @Common: {
        ValueListWithFixedValues: false, //false -> Dialog, true -> Drop Down
        ValueList               : {
            $Type          : 'Common.ValueListType',
            Label          : 'Title',
            CollectionPath : 'ValueHelpProductID',
            SearchSupported: false,
            Parameters     : [{
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: ProductID,
                ValueListProperty: 'ID',
            }]
        }
    };
}

