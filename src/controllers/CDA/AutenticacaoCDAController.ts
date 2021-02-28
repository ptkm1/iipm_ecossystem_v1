import { Request, Response } from 'express'
import jwt from 'jsonwebtoken'
import { Conexao } from '../../configs/ConexaoDB'

class AutenticacaoCDAController {

	async AutenticarUsuario(req: Request, res: Response) {

		const { nome, senha } = req.body

    try {
      
      const data: any = 
        await Conexao
          .table("usuarios_CDA")
            .where('nome', nome)
              .select()
                .first()

      // Tratamento de dados

      if(senha === data.senha) {

        const token = jwt.sign({ id: data.id }, 'secret', { expiresIn: '1d' })
        const usuario = {
          id: data.id,
          nome: data.nome,
          posto: data.posto
        }
        
        return res
          .status(201)
            .send({ token, usuario })

      } else {

        throw new Error("Senha errada!")

      }
      
    } catch (error) {
      
      return res.send("Não foi possivel autenticar, tente novamente.")

    }
		
	}
}

export default new AutenticacaoCDAController()