import Knex from 'knex'

export const Conexao = Knex({
  client: 'mysql',
  connection: {
    host : 'localhost',
    port: 3306,
    user : 'root',
    password : '',
    database : 'pedromello'
  }
})