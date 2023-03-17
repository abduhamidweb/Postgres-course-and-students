import { Router } from "express";
import  courses  from "../controller/course.js";
const course = Router();
 course.get('/course', courses.GET);
course.get('/course/:id', courses.GET);
course.post("/course", courses.POST);
course.delete("/course/:id", courses.DELETE);
export default course;