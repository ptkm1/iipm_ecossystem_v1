import { Request, Response } from "express"
import { Conexao } from "../configs/ConexaoDB"
import bcrypt from 'bcryptjs'
import jwt from 'jsonwebtoken'

class AutenticacaoController {
  
  async AutenticarUsuario( req: Request, res: Response ) {
    const { email: emailInputado, senha } = req.body

    const Usuario = 
      await Conexao
        .table("usuarios")
          .where({ email: emailInputado })
            .select('*')
              .first()

    const data = 
    { id: Usuario.id,
      nome: Usuario.nome,
      email: Usuario.email,
      cidade: Usuario.cidade,
      imagem: `localhost:3333/uploads/${Usuario.imagem}`}

    if (Usuario.length === 0) {
      return res
        .status(401)
          .send({ mensagem: "Não autorizado" })
    }

    const ValidadorDeSenha = await bcrypt.compare( senha, Usuario.senha )

    console.log(ValidadorDeSenha)

    if(!ValidadorDeSenha) {
      return res
        .status(401)
          .send({ mensagem: "Senha errada" })
    }

    const token = jwt
    .sign({ id: Usuario.id },
            'secret',
            { expiresIn: '1d' })
      
    
    return res
      .status(200)
        .send({ mensagem: "Autenticado", token, data })

  }

}

export default new AutenticacaoController()