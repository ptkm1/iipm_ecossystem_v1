import { Request, Response } from 'express'
import { Conexao } from '../../configs/ConexaoDB'

class ControleCDAController {

  async ListarTabelas(req: Request, res: Response) {

    const { data_prestacao } = req.body

    try {

      const data =
        await Conexao
          .table("produtividade_diaria")
            .where({ data_de_identificacao: data_prestacao })
              .select()

      if (!data) throw new Error()

      return res
        .send({ objeto: data, data_escolhida: data_prestacao })

    } catch {

      return res
        .status(401)
          .send({ mensagem: "Erro, não encontramos nenhum dado no banco!" })

    }

  }

  async AtualizarColuna(req: Request, res: Response) {

    const {
      id,
      status_do_pagamento,
      nosso_numero,
      cnpj_ssp,
      cpf, 
      cpf_ou_cnpj, 
      data_de_pagamento, 
      tipo_dtx, 
      status_insercao 
    } = req.body

    const data = { 
      status_do_pagamento,
      nosso_numero,
      cnpj_ssp,
      cpf, 
      cpf_ou_cnpj, 
      data_de_pagamento, 
      tipo_dtx, 
      status_insercao
    }

    try {

      const response = 
        await Conexao
          .table("produtivedade_diaria")
            .where({ id })
              .update(data)

      if(!response) throw new Error()

    return res
      .status(201)
        .send({ mensagem: "Atualizado com sucesso" })

    } catch (error) {

      return res
        .status(401)
          .send({ mensagem: "Atualizado com sucesso" })
    }

  }

}

export default new ControleCDAController()