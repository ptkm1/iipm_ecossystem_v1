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
    const { nome, mae } = req.body

    try {
      const data =
      await Conexao
        .select('*')
          .where('NomeCompleto', nome)
            .orWhere('NomeMae', mae)
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


}

export default new RegistroRGBD()