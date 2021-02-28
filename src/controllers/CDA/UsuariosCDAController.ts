import { Request, Response } from 'express'
import bcrypt from 'bcryptjs'
import { v4 } from 'uuid'
import { Conexao } from '../../configs/ConexaoDB'

class UsuariosCDAController {


  async index(req: Request, res: Response) {

    try {
      
      const data = 
        Conexao
          .table("usuarios_CDA")
            .select()

      return res.send(data)

    } catch (error) {
      
      return res.send(error)

    }

  }

  async RegistroDeUsuariosCDA(req: Request, res: Response) {

    const { nome, senha, posto } = req.body

    const data = {
      id: v4(),
      nome,
      senha,
      posto
    }

    try {

      const response = 
        await Conexao
          .table("usuarios_CDA")
            .insert(data)

      if(!response) throw new Error()

      return res.send({ message: "Usuario Cadastrado com sucesso!" })

    } catch {
      
      return res.send({ message: "Falha no registro do usuario, tente novamente." })

    }

  }

}

export default new UsuariosCDAController()