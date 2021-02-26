import { Router } from 'express'
import ControleCDAController from '../../controllers/CDA/ControleCDAController'
import UsuariosCDAController from '../../controllers/CDA/UsuariosCDAController'

const CDA = Router()

/**
 * Rotas de Usuarios do CDA
 */

CDA.get("/cda/listarusuarios", UsuariosCDAController.index)
CDA.post("/cda/registrousuario", UsuariosCDAController.RegistroDeUsuariosCDA)

/**
 * Rotas de controle de arrecadação
 */

CDA.post("/cda/listarcolunas", ControleCDAController.ListarTabelas)


export default CDA