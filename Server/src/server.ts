// server.ts
import dotenv from 'dotenv';
import express, { NextFunction, Request, Response } from 'express';
import { PORT, environment } from './secrets';
import { ApiError, InternalError, NotFoundError } from './core/ApiError';
import { rootRouter } from './root.routes';

dotenv.config();

const app = express();

// Middleware to parse JSON
app.use(express.json());

// Admin routes
app.use('/apis/v1', rootRouter);

// Error Handling route
app.use((req: Request, res: Response, next: NextFunction) => {
  console.log('not found error occurred');
  const error = new NotFoundError();
  console.log('🚀 ~ app.use ~ error:', error);
  next(error);
});
// All error  handling should be done in this middleware function
app.use((err: Error, req: Request, res: Response, next: NextFunction) => {
  if (err instanceof ApiError) {
    return ApiError.handle(err, res);
  } else {
    if (environment === 'development') {
      return res.status(500).send(err);
    }
    ApiError.handle(new InternalError(), res);
  }
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
