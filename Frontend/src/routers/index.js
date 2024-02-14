import { BrowserRouter, Route, Routes } from "react-router-dom";
import Home from "../components/Home/components/Home";
import DesktopFooter from "../components/DesktopFooter";
import TaskManager from "../components/TaskManager/TaskManager";
import AllCourses from "../components/AllCourses/AllCourses";
import Login from "../components/Auth/Login/Login";
import CourseDetails from "../components/Courses/CourseDetails";
import Admin from "../Admin";
import ProductDetails from "../components/Products/ProductDetails/ProductDetails";
import Cart from "../components/Cart/Cart";
import Checkout from "../components/Checkout/Checkout";

export const pages = [
  {
    path: "/",
    exact: true,
    component: Home,
    key: "home",
    value: "Home",
    show: true,
  },
  {
    path: "/product-details/:id",
    exact: true,
    component: ProductDetails,
    key: "product-details",
    value: "product Details",
    show: false,
  },
  {
    path: "/task-manager",
    exact: true,
    component: TaskManager,
    key: "task-manager",
    value: "Task Manager",
    show: true,
  },
  {
    path: "/our-courses",
    exact: true,
    component: AllCourses,
    key: "our-courses",
    value: "Our Courses",
    show: true,
  },
  {
    path: "/course-details/:id",
    exact: true,
    component: CourseDetails,
    key: "course-details",
    value: "Course Details",
    show: false,
  },
  {
    path: "/login",
    exact: true,
    component: Login,
    key: "login",
    value: "Login",
    show: false,
  },
  {
    path: "/cart",
    exact: true,
    component: Cart,
    key: "cart",
    value: "Cart",
    show: false,
  },
  {
    path: "/checkout",
    exact: true,
    component: Checkout,
    key: "checkout",
    value: "Checkout",
    show: false,
  },
  // {
  //   path: "/admin-portal",
  //   exact: true,
  //   component: Admin,
  //   key: "admin-portal",
  //   value: "Admin",
  //   show: false,
  // },
];

const MyRoutes = () => {
  return (
    <BrowserRouter basename="/">
      <Routes>
        {pages.map(({ component, path }) => {
          const Component = component;
          return <Route key={path} element={<Component />} path={path} />;
        })}
        {/* <Route element={<Page404 />} /> */}
      </Routes>
      <DesktopFooter />
    </BrowserRouter>
  );
};

export default MyRoutes;
