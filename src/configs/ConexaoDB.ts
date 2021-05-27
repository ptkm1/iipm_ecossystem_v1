import Knex from 'knex'

export const Conexao = Knex({
  client: 'mysql',
  connection: {
    host : 'sql210.main-hosting.eu',
    port: 3306,
    user : 'u390726969_pedrotypemello',
    password : 'Pedro*Mello10',
    database : 'u390726969_pedrotypemello'
  }
})