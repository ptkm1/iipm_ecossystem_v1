import { Router } from 'express'
import ContatosController from '../../controllers/Contatos/ContatosController'

const ContatosRoutes = Router()

ContatosRoutes.post("/criarcontato", ContatosController.CriarContato)
ContatosRoutes.put("/atualizarcontato", ContatosController.AtualizarContatos)
ContatosRoutes.get("/todoscontatos", ContatosController.ListarTodosContatos)
ContatosRoutes.get("/listarporid/:id", ContatosController.ListarPorId)

export { ContatosRoutes }