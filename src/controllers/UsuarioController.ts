import { Request, Response } from "express"
import { Conexao } from "../configs/ConexaoDB"
import EmailService from "../services/EmailService"

import { v4 } from 'uuid'


export default {

  async Index( req: Request, res: Response ) {
    const data = await Conexao.select('*').table('cidadão') //Trocar para tabela usuarios dps de criar

    return res.send(data)
  },

  async Create( req: Request, res: Response ) {
    // Criar Conexão com banco de dados, e inserir lá dentro
  

  },

  async Mail( req: Request, res: Response ) {

    // Serviço para envio de e-mail fake (apenas para estudo de interfaces e classes)

    const emailService = new EmailService()

    emailService.sendMail({
      para: { nome: "Diego", email: "diego@gmail.com" },
      mensagem: { subject: "Bem-vindo ao sistema", body: "seja bem-vindo" },
    })

    return res.send("Sucesso")
  }

}
