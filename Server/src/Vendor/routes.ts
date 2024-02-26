import express, { Request, Response } from 'express';
import { SuccessMsgResponse } from '../core/ApiResponse';
const vendorRouter = express.Router();



vendorRouter.get("/", (req,res)=>{
    const message = "Vendor routes are working";
    new SuccessMsgResponse(message).send(res);
})






export { vendorRouter };