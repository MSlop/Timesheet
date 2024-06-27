using { Timesheet as my } from '../db/schema';

@path: '/service/TimesheetSvcs'
@requires: 'authenticated-user'
service TimesheetService {
    
    entity TimesheetUser as projection on my.User;

    annotate TimesheetUser with @odata.draft.enabled;

    action calculateMain( User : TimesheetUser );
}
