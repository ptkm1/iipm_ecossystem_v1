import bcrypt from 'bcryptjs'
import { Request, Response } from 'express'
import jwt from 'jsonwebtoken'
import { Conexao } from '../configs/ConexaoDB'

class AutenticacaoController {
	async AutenticarUsuario(req: Request, res: Response): Promise<Response> {

		const { email: emailInputado, senha } = req.body

		try {
			const Usuario: any = await Conexao.table('usuarios').where({ email: emailInputado }).select('*').first()

			const usuario = {
				id: Usuario.id,
				nome: Usuario.nome,
				email: Usuario.email,
				posto: Usuario.posto,
				imagem: `https://i1.wp.com/terracoeconomico.com.br/wp-content/uploads/2019/01/default-user-image.png?ssl=1`
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

			const token = jwt.sign({ id: Usuario.id }, 'secret', { expiresIn: '1d' })

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

export default new AutenticacaoController()
