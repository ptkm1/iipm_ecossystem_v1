import Knex from 'knex'

export const Conexao = Knex({
  client: 'mysql',
  connection: {
    host : 'localhost',
    port: 3306,
    user : 'ptkm1',
    password : '87127186',
    database : 'pedromello'
  }
})