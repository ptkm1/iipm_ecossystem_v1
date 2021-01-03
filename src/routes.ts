import { Router } from 'express'
const rotas = Router()

// [Controllers]
import UsuarioController from './controllers/UsuarioController'
import CidadaoController from './controllers/CidadaoController'
import DocumentoController from './controllers/DocumentoController'
import MulterConfig from './configs/MulterConfig'


import multer from 'multer'

const upload = multer( MulterConfig )


/* [ROTAS DE CIDADÃO] */
rotas.get('/cidadao', CidadaoController.Index)
rotas.get('/cidadao/:barcode', CidadaoController.ProcurarPorBarcode)

rotas.post('/cidadao', CidadaoController.Create)
rotas.delete('/cidadao/:barcode', CidadaoController.DeletarCidadaoPorBarcode)

rotas.put('/cidadao/:barcode', CidadaoController.UpdateCidadaoPorBarcode)

// > [DOCUMENTAÇÃO DO CIDADÃO]

rotas.post('/cidadao/documentos', DocumentoController.Index)
rotas.patch('/cidadao/submetercertidao', upload.single('image'), DocumentoController.SubmeterCertidão)
rotas.patch('/cidadao/submeternomesocial', upload.single('image'), DocumentoController.SubmeterNomeSocial)
rotas.patch('/cidadao/submeterrelatoriomedico', upload.single('image'), DocumentoController.SubmeterRelatorioMedico)
rotas.patch('/cidadao/submetertipagemsanguinea', upload.single('image'), DocumentoController.SubmeterTipagemSanguinea)

/* [ROTAS DE USUARIO] */

rotas.get('/usuarios', UsuarioController.Index)
rotas.get('/usuarios/:barcode', UsuarioController.UsuarioEspecífico)
rotas.post('/usuarios/criar', upload.single('image'), UsuarioController.Create)
rotas.delete('/usuarios/:barcode', UsuarioController.DeletarUsuario)
rotas.put('/usuarios/:barcode', upload.single('image'), UsuarioController.AtualizarUsuario)


export default rotas

// {
// 	"nome": "Antonio Sande",
// 	"email": "sande@gmail.com",
// 	"cidade": "Salvador",
// 	"senha": "perito25",
// 	"imagem": "imagemteste.png"
// }