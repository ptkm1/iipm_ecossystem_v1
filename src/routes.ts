import { Request, Response, Router } from 'express'
import fs from 'fs'
import multer from 'multer'
import path from 'path'
import sharp from 'sharp'
import MulterConfig from './configs/MulterConfig'
import AdminController from './controllers/AdminController'
import AutenticacaoController from './controllers/AutenticacaoController'
import CidadaoController from './controllers/CidadaoController'
import DocumentoController from './controllers/DocumentoController'
import RegistroRGBD from './controllers/RegistroRGBD'
import RelatorioController from './controllers/RelatorioController'
// [Controllers]
import UsuarioController from './controllers/UsuarioController'
const rotas = Router()

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

rotas.post('/autenticar', AutenticacaoController.AutenticarUsuario)

/* [ROTAS DE ADMINISTRADOR] */

rotas.post('/admin', AdminController.Create)
rotas.get('/admin', AdminController.Create)
rotas.post('/admin/autenticar', AutenticacaoController.AutenticarAdmin)

/* [ROTAS DO SEAP] */

rotas.get('/registrorgbd', RegistroRGBD.Index)
rotas.post('/pesquisar', RegistroRGBD.ProcurarPorNome)
rotas.post('/registrorgbd', RegistroRGBD.Registrar)
rotas.get('/registro/:id', RegistroRGBD.buscarPorID)
rotas.post('/registro1via', RegistroRGBD.EditarPorID)
rotas.get('/estados', RegistroRGBD.BuscarEstados)

rotas.post('/fechardia', RegistroRGBD.FecharDia)

rotas.post('/verificacaodiaria', RegistroRGBD.BuscarPorData)
rotas.patch('/verificacaodiaria', RegistroRGBD.CancelarFicha)
rotas.delete('/verificacaodiaria/:id', RegistroRGBD.DeletarFicha)
// Relatorios SEAP
rotas.get('/fichasgerais', RelatorioController.Geral)
rotas.get('/primeiravia', RelatorioController.PrimeiraVia)
rotas.post('/fichascanceladas', RelatorioController.Cancelados)
rotas.post('/demaisvias', RelatorioController.DemaisVias)



//  Rota teste de Redução de tamanho de foto, *funcionando*
rotas.post('/create', upload.single('thumb'), async (req: Request, res: Response) =>{

  const nome = req.body.nome
  const barcode = req.body.barcode

  fs.access(`/uploads/${nome}`, err => {

    if(err){

      fs.mkdirSync(__dirname+`/uploads/${nome}`)

    } else {

      return console.log("O repositório já existe")

    }

  })

  sharp(req.file.path)
    .resize(1000)
    .toFile(path.join(__dirname, 'uploads', nome , barcode + '.jpeg' ))

    return res
      .status(200)
        .send({ mensagem: "upload feito com sucesso" })
} )



export default rotas