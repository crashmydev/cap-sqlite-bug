using BooksService as service from '../../srv/books-service';

annotate service.Books with @(
    Common.SemanticKey : [ 'ID' ],

    UI.SelectionFields : [ ID, title, descr, author.name ],

    Capabilities.FilterRestrictions       : {
        RequiresFilter    : true,
        RequiredProperties: [title]
    },

    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'author name',
                Value : author.name,
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
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value: descr
        },
        {
                $Type: 'UI.DataFieldWithIntentBasedNavigation',
                Label: 'Author',
                Value: author.name,
                SemanticObject: 'authors',
                Action        : 'display',
                Mapping       : [{
                    $Type                 : 'Common.SemanticObjectMappingType',
                    LocalProperty         : authorID,
                    SemanticObjectProperty: 'authorID',
                }]
        }
    ],
);

annotate service.Books with {
    title
    @Common: {
        ValueListWithFixedValues: false, //false -> Dialog, true -> Drop Down
        ValueList               : {
            $Type          : 'Common.ValueListType',
            Label          : 'Title',
            CollectionPath : 'ValueHelpTitles',
            SearchSupported: true,
            Parameters     : [{
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: title,
                ValueListProperty: 'title',
            }]
        }
    };
}