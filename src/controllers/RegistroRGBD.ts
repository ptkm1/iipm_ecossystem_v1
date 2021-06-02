import { Request, Response } from "express"
import { v4 } from "uuid"
import { Conexao } from "../configs/ConexaoDB"

class RegistroRGBD {

  async Index ( req: Request, res: Response ) {

      const data =
      await Conexao
        .select('*')
          .table('registrorgbd')

      return res
        .status(200)
          .send(data)
  }

  async ProcurarPorNome( req: Request, res: Response ) {
    const { nome, mae, Posto } = req.body

    try {
      const data =
      await Conexao
        .select('*')
          .where('NomeCompleto', nome)
            .orWhere('NomeMae', mae)
            .andWhere('Posto', Posto)
              .into('registrorgbd')

              if(data.length === 0) throw new Error()

      return res
        .status(200)
          .send( data )

    } catch {
      return res
        .status(404)
          .send({ mensagem: "Nenhum cadastro encontrado" })
    }

  }

  async Registrar( req: Request, res: Response ) {
    const data = req.body

    data.id = v4()

    try {
      await Conexao
        .insert(data)
          .into('registrorgbd')

      return res
        .status(200)
          .send({ mensagem: "Registrado com sucesso!" })

    } catch (error) {
      return res
        .status(401)
          .send({ mensagem: "Houve algum erro!", error })
    }

  }

  async BuscarPorData( req: Request, res: Response ) {
    const { dia, Posto } = req.body

    try {
      
      const Registro =
      await Conexao
        .select('*')
          .where('DataDeCriacao', dia)
            .andWhere('Posto', Posto)
              .into('registrorgbd')

    if(!Registro) throw new Error()

      return res
        .status(200)
          .send(Registro)

    } catch (error) {
      console.log(error)
      return res
        .status(401)
          .send({ mensagem: "Registro não encontrado" })
    }
  }

  async CancelarFicha( req: Request, res: Response ) {
    const {id, Status} = req.body

    try {
      
      const Registro =
      await Conexao
        .table('registrorgbd')
          .where('id', id)
            .update({Status})
      

      if(!Registro) throw new Error()

      

      return res
        .status(200)
          .send({ mensagem: "Ficha Cancelada com sucesso!" })
      
    } catch (error) {
      console.log(error)
      return res
        .status(401)
          .send({ mensagem: "Não foi possivel atualizar a ficha para Cancelado" })
    }

  }


  async buscarPorID( req: Request, res: Response ) {
    const { id } = req.params


    try {

      const Registro =
      await Conexao
        .select('*')
          .where('id', id)
            .into('registrorgbd')

      if(!Registro) throw new Error()

      return res
        .status(200)
          .send(Registro)

    } catch {
      return res
        .status(401)
          .send({ mensagem: "Registro não encontrado" })
    }


  }

  async DeletarFicha( req: Request, res: Response ) {
    const { id } = req.params

    try {

      const Response =
      await Conexao
        .table('registrorgbd')
          .where('id', id)
            .delete()

      if(!Response) throw new Error()

      return res
        .status(200)
          .send({ mensagem: "Ficha deletada com sucesso" })

    } catch {
      return res
        .status(401)
          .send({ mensagem: "Registro não encontrado" })
    }
  }


  async EditarPorID( req: Request, res: Response ) {

    const { id } = req.params
    const data = req.body

    try {

      await Conexao
        .insert(data)
          .into('registrorgbd')



        return res
        .status(200)
          .send({ mensagem: "Segunda via registrado com sucesso" })

    } catch {

      return res
        .status(401)
          .send({ mensagem: "Não foi possivel registrar" })
    }
  }

  async BuscarEstados( req: Request, res: Response ) {

    const data =
      await Conexao
        .select()
          .into('estado')

    return res
      .status(200)
        .send(data)

  }

  async FecharDia ( req: Request, res: Response ) {
    const data = req.body

    try {
      await Conexao
        .insert(data)
          .into('controleDiarioSeap')

      return res
        .status(200)
          .send({ mensagem: "Registrado com sucesso!" })

    } catch (error) {
      return res
        .status(401)
          .send({ mensagem: "Houve algum erro!", error })
    }
  }


}

export default new RegistroRGBD()