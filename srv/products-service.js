const cds = require('@sap/cds');

class ProductsService extends cds.ApplicationService {
    async init() {
        const { Products, ValueHelpProductID } = this.entities
        this.on('READ', [ Products, ValueHelpProductID ], async (req) => {
            const extSrv = await cds.connect.to('NORTHWIND');
            return extSrv.tx(req).run(req.query);
        });
    }
}

module.exports = ProductsService;