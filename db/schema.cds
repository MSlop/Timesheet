namespace Timesheet;

using {
    managed,
    cuid,
} from '@sap/cds/common';

entity User : cuid, managed {
    userName : String @mandatory;
    country : String default 'Empty';

    population : Integer;
    pop_unit : String;
    size : Double;
    size_unit : String;
}
