import cors from 'cors'
import express, { urlencoded } from 'express'
import path from 'path'
import rotas from './routes'
import CDA from './routes/CDA'
import { ContatosRoutes } from './routes/Contatos'

const app = express()
// Configurações do servidor

app.use(cors())
app.use(urlencoded({ extended: true }))
app.use(express.json())
app.use(rotas)
app.use(CDA)
app.use(ContatosRoutes)

app.use('/', express.static(path.join(__dirname, 'public')))
app.use('/uploads', express.static(path.join(__dirname, 'uploads')))

app.listen(3333)