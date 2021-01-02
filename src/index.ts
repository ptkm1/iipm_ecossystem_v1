import express, { urlencoded } from 'express'
import cors from 'cors'
import rotas from './routes'

const app = express()
// Configurações do servidor

app.use(urlencoded({ extended: true }))
app.use(express.json())
app.use(rotas)
app.use(cors())

app.listen(3333)