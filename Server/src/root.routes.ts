// routes/admin.routes.ts
import express from 'express';
import { adminRouter } from './Admin/routes';
import { vendorRouter } from './Vendor/routes';
const rootRouter = express.Router();

rootRouter.get('/', (req, res) => {
  return res.status(200).json({ success: true, message: 'Route is working' });
});
rootRouter.use('/admin',adminRouter);
rootRouter.use("/vendor", vendorRouter)


export { rootRouter };
