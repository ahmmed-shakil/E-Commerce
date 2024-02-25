// routes/admin.routes.ts
import express from 'express';
import { adminRouter } from './Admin/routes';
const rootRouter = express.Router();

rootRouter.get('/', (req, res) => {
  return res.status(200).json({ success: true, message: 'Route is working' });
});

// Define routes related to admin functionality
// rootRouter.route('/admin').get().post();
rootRouter.use('/admin',adminRouter);

// Add more routes as needed

export { rootRouter };
