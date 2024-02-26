import dotenv from 'dotenv';
dotenv.config({ path: '.env' });

export const timezone = process.env.TZ;
export const PORT = process.env.PORT;
export const environment = process.env.NODE_ENV;
export const JWT_SECRET_KEY: string = process.env.JWT_SECRET_KEY || 'secret';
