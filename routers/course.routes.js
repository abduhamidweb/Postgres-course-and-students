import { Router } from "express";
import  courses  from "../controller/course.js";
const course = Router();
 course.get('/course', courses.GET);
course.get('/course/:id', courses.GET);
export default course;