import { Request, Response, NextFunction } from 'express';
import { check, validationResult } from 'express-validator';


export const validateCreateAdminRoleRequest = [
    check('roleName').notEmpty().withMessage('Role name is required'),
  ];

  export const validateAdminRegisterEmailRequest = [
    check('email')
      .notEmpty()
      .withMessage('Email address is required')
      .isEmail()
      .withMessage('Inavlid email Address')
  ];

  export const validateAdminRegisterPhoneRequest = [
    check('phoneNumber')
      .custom((value, { req }) => {
        if (!value || value.trim() === '') {
          throw new Error('Phone number is required');
        }
        return true;
      })
      .withMessage('Phone number is required')
      .isLength({ min: 10, max: 10 })
      .withMessage('Invalid phone number'),
  ];

  export const validateAdminRegisterUsernameRequest = [
    check('userName')
      .notEmpty()
      .withMessage('Username is required')
  ];

  export const validateAdminRegisterRequest = [
    check('firstName').notEmpty().withMessage('firstName is required'),
    check('lastName').notEmpty().withMessage('lastName is required'),
    check('email')
      .notEmpty()
      .withMessage('Email address is required')
      .isEmail()
      .withMessage('Inavlid email Address'),
    check('userName').notEmpty().withMessage('Username is required'),
    check('password').notEmpty().withMessage('Password is required'),
    check('phoneNumber')
      .custom((value, { req }) => {
        if (!value || value.trim() === '') {
          throw new Error('Phone number is required');
        }
        return true;
      })
      .withMessage('Phone number is required')
      .isLength({ min: 10, max: 10 })
      .withMessage('Invalid phone number'),
  ];

  export const validateAdminLoginRequest = [
    check('userName').notEmpty().withMessage('Username is required'),
    check('password').notEmpty().withMessage('Password is required'),
  ];

  export const isRequestValidated = (
    req: Request,
    res: Response,
    next: NextFunction,
  ) => {
    const errors = validationResult(req);
  
    if (!errors.isEmpty()) {
      return res.status(400).json({ message: errors.array()[0].msg });
    }
    next();
  };