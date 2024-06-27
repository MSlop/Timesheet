sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'Timesheet/TimesheetUser/test/integration/FirstJourney',
		'Timesheet/TimesheetUser/test/integration/pages/TimesheetUserList',
		'Timesheet/TimesheetUser/test/integration/pages/TimesheetUserObjectPage'
    ],
    function(JourneyRunner, opaJourney, TimesheetUserList, TimesheetUserObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('Timesheet/TimesheetUser') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTimesheetUserList: TimesheetUserList,
					onTheTimesheetUserObjectPage: TimesheetUserObjectPage
                }
            },
            opaJourney.run
        );
    }
);