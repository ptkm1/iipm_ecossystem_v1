import { v4 } from "uuid";
import { Conexao } from "../configs/ConexaoDB";
import { Request, Response} from 'express'
import bcrypt from 'bcryptjs'

class AdminController {

  async Create(Req: Request, Res: Response) {

    const { nome, email, posto, senha } = Req.body
    try {

      const data = {
        id: v4(), 
        nome,
        email,
        senha: bcrypt.hashSync(senha, 8),
        posto
      }
      
      await Conexao.table("administradores").insert(data)

      return Res.status(201).send({ message: "Admin Criado com Sucesso!" })
    } catch (error) {
      return Res.status(401).send({ message: "Não foi possível criar um adm novo!" })
    }
  }

}

export default new AdminController()