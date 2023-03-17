export default {
  SELECTID: 'Select * from course where id = $1',
  SELECTALL: 'SELECT * from course',
  ADDPOST: 'INSERT into course (name, month, price) VALUES ($1, $2, $3)',
  DELETE: 'DELETE FROM course WHERE id = $1',
}