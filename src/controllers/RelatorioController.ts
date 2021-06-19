import { Request, Response } from 'express'
import { Conexao } from '../configs/ConexaoDB'

class RelatorioController {
  async Geral(req: Request, res: Response) {
    try {
      const data = await Conexao.select('*').table('registrorgbd')

      return res.status(200).send(data)
    } catch (error) {
      return res.status(404).send({ mensagem: 'Nenhum cadastro encontrado' })
    }
  }

  async PrimeiraVia(req: Request, res: Response) {
    try {
      const Registro = await Conexao.select('*')
        .where('Via', '1º VIA')
        .table('registrorgbd')

      if (!Registro) throw new Error()

      return res.status(200).send(Registro)
    } catch (error) {
      console.log(error)
    }
  }

  async DemaisVias(req: Request, res: Response) {
    try {
      const Registro: any = await Conexao
        .table('registrorgbd')  
        .where('Posto', req.body.Posto)
        .andWhereBetween('DataDeCriacao', [req.body.DataDeCriacaoInicial,req.body.DataDeCriacaoFinal])
        .select('NumeroDaFicha','NomeCompleto','Via','DataNasc','NRG','Result', 'Usuario','Posto')

      if (!Registro) throw new Error()

      return res.status(200).send(Registro)
    } catch (error) {
      console.log(error)
    }
  }

  async Cancelados(req: Request, res: Response) {

    try {
      let Response: any = await Conexao.table('registrorgbd')
        .where('Status', 'cancelado')
        .andWhere('Posto', req.body.Posto)
        .andWhereBetween('DataDeCriacao', [req.body.DataDeCriacaoInicial,req.body.DataDeCriacaoFinal])
        .select('NumeroDaFicha','NomeCompleto','Via','DataNasc','NRG','Result', 'Usuario', 'Posto')

      if (!Response) throw new Error()

      return res.status(200).send(Response)
    } catch {
      return res.status(404).send({ mensagem: 'Registro não encontrado' })
    }
  }
}

export default new RelatorioController()
