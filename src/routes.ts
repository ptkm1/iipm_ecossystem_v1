import { Router } from 'express'

const rotas = Router()

// [Controllers]
import UsuarioController from './controllers/UsuarioController'
import CidadaoController from './controllers/CidadaoController'
import DocumentoController from './controllers/DocumentoController'



/* [ROTAS DE CIDADÃO] */
rotas.get('/cidadao', CidadaoController.Index)
rotas.get('/cidadao/:barcode', CidadaoController.ProcurarPorBarcode)

rotas.post('/cidadao', CidadaoController.Create)
rotas.delete('/cidadao/:barcode', CidadaoController.DeletarCidadaoPorBarcode)

rotas.put('/cidadao/:barcode', CidadaoController.UpdateCidadaoPorBarcode)

// > [DOCUMENTAÇÃO DO CIDADÃO]


rotas.post('/cidadao/documentos', DocumentoController.Index)
rotas.patch('/cidadao/submetercertidao', DocumentoController.SubmeterCertidão)
rotas.patch('/cidadao/submeternomesocial', DocumentoController.SubmeterNomeSocial)
rotas.patch('/cidadao/submeterrelatoriomedico', DocumentoController.SubmeterRelatorioMedico)
rotas.patch('/cidadao/submetertipagemsanguinea', DocumentoController.SubmeterTipagemSanguinea)



/* [ROTAS DE USUARIO] */

rotas.get('/usuarios', UsuarioController.Index)
rotas.post('/usuarios/criar', UsuarioController.Create)


export default rotas