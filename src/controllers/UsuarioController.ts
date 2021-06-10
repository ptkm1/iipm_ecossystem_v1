import bcrypt from 'bcryptjs'
import { Request, Response } from "express"
// import EmailService from "../services/EmailService"
import { v4 } from 'uuid'
import { Conexao } from "../configs/ConexaoDB"


class UsuarioController {

  async Index( req: Request, res: Response ) {
    const data =
      await Conexao
        .select('*')
          .table('usuarios') //Trocar para tabela usuarios dps de criar

    return res.send(data)
  }

  async UsuarioEspecífico( req: Request, res: Response ) {

    const { barcode } = req.params

    try {

    const
    { id,
      nome,
      email,
      posto,
      imagem } =
    await Conexao
      .select('*')
        .where({ id: barcode })
          .table('usuarios')
            .first()

    // Tratando um objeto para enviar para o front-end com a url da foto
    const data =
    { id,
      nome,
      email,
      posto,
      imagem: `http://192.168.0.100:3333/uploads/${imagem}` }

    return res
      .status(200)
        .send(data)

    } catch {

    return res
      .status(404)
        .send({ mensagem: "Não foi possível criar um usuário" })

    }

  }

  async Create( req: Request, res: Response ) {
    const { nome, email, posto, senha } = req.body

    const image = req.file

    const data =
    { id: v4(),
      nome,
      email,
      senha: bcrypt.hashSync(senha, 8),
      posto,
      imagem: image && image.filename 
    }

      try {

      await Conexao
        .insert(data)
          .into("usuarios")

      return res
        .status(200)
          .send({ mensagem: "Usuário criado com sucesso" })

      } catch (error) {

        console.log(error)

      return res
        .status(404)
          .send({ mensagem: "Não foi possível criar um usuário" })

      }

  }


  async AtualizarUsuario( req: Request, res: Response ) {

    const { barcode } = req.params

    const { nome, email, posto, senha } = req.body

    var image

    if (req.file == undefined) {

      const { imagem } =
        await Conexao
          .table('usuarios')
            .select("imagem")

      image = imagem

    } else {

        image = req.file.filename
    }

    const data =
    { nome,
      email,
      posto,
      senha,
      imagem: image }

    try {

      await Conexao
        .table("usuarios")
          .where({ id: barcode })
            .update(data)

        return res
          .status(200)
            .send({ mensagem: "Usuário atualizado com sucesso" })

    } catch {
        return res
          .status(401)
            .send({ mensagem: "Não foi possível atualizar o usuário" })
    }

  }

  async DeletarUsuario( req: Request, res: Response ) {

    const { barcode } = req.params

    try {

      await Conexao
        .table("usuarios")
          .where({ id: barcode })
            .delete()

      return res
        .status(200)
          .send({ mensagem: "Usuário deletado com sucesso" })

    } catch {

      return res
        .status(401)
          .send({ mensagem: "Não foi possível deletar usuário" })

    }

  }

}

export default new UsuarioController()