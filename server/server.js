import express from 'express'
import dotenv from 'dotenv'
import cors from "cors"
dotenv.config()
import course from '../routers/course.routes.js'
import students from '../routers/students.routes.js'
const PORT = process.env.PORT || 3000
const app = express()
app.use(cors());
app.use(express.json());
app.use(course)
app.use(students) 
app.listen(PORT, console.log('Server is running' + PORT))
