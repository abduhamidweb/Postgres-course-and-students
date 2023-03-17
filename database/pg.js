import pg from 'pg'
const { Pool } = pg
let pool = new Pool({
  user: 'postgres',
  port: 5432,
  database: 'lesson10',
  host: 'localhost',
  password: 'admin',
})
// let pool = new Pool({
//   user: process.env.PG_USER,
//   port: process.env.PG_PORT,
//   database: process.env.PG_DATABASE,
//   host: process.env.PG_HOST,
//   password: process.env.PG_PASSWORD,
// })
export async function AllFetchDatas(queryString) {
  let client = await pool.connect()
  try {
    let { rows } = await client.query(queryString)
    return rows
  } catch (error) {
    console.log('error :', error)
  }
}

// AllFetchDatas()
export async function fetch(queryString, ...params) {
  let client = await pool.connect()
  try {
    let {
      rows: [data],
    } = await client.query(queryString, params.length ? params : null)
    return data
  } catch (error) {
    console.log('error :', error)
  }
}
// fetch(
//   'Select * from students where id = $1','deb0ced9-87a9-493a-aaba-cc0aa7c44b55'
// )
