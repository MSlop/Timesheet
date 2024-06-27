const cds = require('@sap/cds')

module.exports = class TimesheetService extends cds.ApplicationService { 
    init() {

        const { TimesheetUser } = this.entities;

        this.on( "calculateMain", (req) => {

            let { User } = req.data

            if ( User.contry == "Russia" ){
                User.population = 147;
            }

        } )

        return super.init()
    }
}
