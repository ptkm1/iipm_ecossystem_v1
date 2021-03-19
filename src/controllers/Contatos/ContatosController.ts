import { Request, Response, response } from 'express'
import { Conexao } from '../../configs/ConexaoDB'
import { v4 } from 'uuid'

class ContatosController {

  async ListarTodosContatos(Req: Request, Res: Response) {
    try {
      
      const data = await Conexao.table("contatosSACS").select()

      return Res.status(200).send(data)

    } catch (error) {

      return Res.status(400).send({ mensagem: "Não foi possível listar os contatos!"})
      
    }
  }

  async CriarContato(Req: Request, Res: Response) {
    const {  id, postos, coordenador, tel1 ,tel2, cel1, cel2  } = Req.body

    try {

      const data = {  id: v4(), postos, coordenador, tel1 ,tel2, cel1, cel2  }
      
      await Conexao.table("contatosSACS").insert(data)

      return Res.status(200).send({ mensagem: "Contato Criado com sucesso!" })
      
    } catch (error) {
      
      return Res.status(401).send({ mensagem: "Não foi possível criar este contato, tente novamente." })
    
    }

  }
  
  async AtualizarContatos(Req: Request, Res: Response) {
    // {	id,	postos,	coordenador,	tel1,	tel2,	cel1,	cel2}
    const data = Req.body

    try {
      await Conexao.table("contatosSACS").where("id", data.id).update(data)
      
      return Res.status(200).send({ mensagem: "Contato atualizado com sucesso!" })

    } catch (error) {

      return Res.status(401).send({ mensagem: "Não foi possível atualizar" })

    }
  }
}

export default new ContatosController()