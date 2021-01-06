import cors from 'cors'
import express, { urlencoded } from 'express'
import path from 'path'
import rotas from './routes'

const app = express()
// Configurações do servidor

app.use(cors())
app.use(urlencoded({ extended: true }))
app.use(express.json())
app.use(rotas)

app.use('/uploads', express.static(path.join(__dirname, 'uploads')))

app.listen(3333)