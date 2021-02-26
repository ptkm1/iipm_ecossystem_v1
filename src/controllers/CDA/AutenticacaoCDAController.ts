import bcrypt from 'bcryptjs'
import { Request, Response } from 'express'
import jwt from 'jsonwebtoken'
import { Conexao } from '../../configs/ConexaoDB'

class AutenticacaoCDAController {
	async AutenticarUsuario(req: Request, res: Response): Promise<Response> {

		const { nome: nomeInputado, senha } = req.body

		try {
			const Usuario: any = 
        await Conexao
          .table('usuarios_CDA')
            .where({ nome: nomeInputado })
              .select('*')
                .first()

                console.log(Usuario)

			const usuario = {
				id: Usuario.id,
				nome: Usuario.nome,
				posto: Usuario.posto,
			}

			if (Usuario.length === 0) {

        return res
          .status(401)
            .send({ mensagem: 'Não autorizado' })
			}

      const ValidadorDeSenha =
        await bcrypt
          .compare(senha, Usuario.senha)


			if (!ValidadorDeSenha) {

        return res
          .status(401)
            .send({ mensagem: 'Senha errada' })
			}

			const token = 
        jwt
          .sign({ id: Usuario.id }, 'secret', { expiresIn: '1d' })

      return res
        .status(200)
          .send({ mensagem: 'Autenticado', token, usuario })

		} catch {

      return res
        .status(401)
          .send({ mensagem: 'não foi possivel autenticar' })

		}
	}
}

export default new AutenticacaoCDAController()