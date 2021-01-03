import express, { urlencoded } from 'express'
import path from 'path'
import cors from 'cors'
import rotas from './routes'

const app = express()
// Configurações do servidor

app.use(urlencoded({ extended: true }))
app.use(express.json())
app.use(rotas)
app.use(cors())

app.use('/uploads', express.static(path.join(__dirname, 'uploads')))

app.listen(3333)