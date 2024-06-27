using TimesheetService as service from '../../srv/service';
annotate service.TimesheetUser with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>UserName}e',
                Value : userName,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Country}',
                Value : country,
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
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Calculated field',
            ID : 'Calculatedfield',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Fields',
                    ID : 'Field',
                    Target : '@UI.FieldGroup#Field',
                },],
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Users}',
            Value : userName,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Country}',
            Value : country,
        },
    ],
);

annotate service.TimesheetUser with @(
    UI.SelectionFields : [
        country,
    ]
);
annotate service.TimesheetUser with {
    country @Common.Label : '{i18n>Country}'
};
annotate service.TimesheetUser with @(
    UI.FieldGroup #Field : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : population,
                Label : 'Population',
            },{
                $Type : 'UI.DataField',
                Value : size,
                Label : 'Size',
            },],
    }
);

annotate service.TimesheetUser with {
    population @Common.FieldControl : #ReadOnly
};
annotate service.TimesheetUser with {
    size @Common.FieldControl : #ReadOnly
};
annotate service.TimesheetUser with {
    size @Measures.Unit : size_unit
};
annotate service.TimesheetUser with {
    population @Measures.Unit : pop_unit
};
annotate service.TimesheetUser with @(
    UI.Identification : [
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'TimesheetService.EntityContainer/calculateMain',
            Label : 'calculateMain',
        },]
);
