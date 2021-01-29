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

// export const Conexao = Knex({
//   client: 'mysql',
//   connection: {
//     host : 'sql399.main-hosting.eu',
//     port: 3306,
//     user : 'u386326144_pedromello_dpt',
//     password : 'Pedro*10',
//     database : 'u386326144_pedromello'
//   }
// })