import { Request, Response } from "express"
import { Conexao } from "../configs/ConexaoDB"

export default {
  
  async Index ( req: Request, res: Response ) {

    const { barcode } = req.body

    const data = 
     await Conexao
      .select()
      .where('cidadao_id', barcode)
        .table("documentos")

    return res
      .status(200)
        .send(data)

  },

  async SubmeterCertidão ( req: Request, res: Response ) {

    const { barcode, certidao_nascimento } = req.body

    try {

      const VerificaSeExiste = 
      await Conexao
        .select()
          .where("cidadao_id", barcode)
            .into("documentos")
      
      if( VerificaSeExiste.length === 0 )
        throw new Error("Não foi possível achar o cidadão no banco")
      

      await Conexao
        .update({ certidao_nascimento })
          .where("cidadao_id", barcode)
            .table("documentos")

          

      return res
        .status(200)
          .send({ mensagem: "Submetido com sucesso" })

    } catch {

      return res
        .status(401)
          .send({ mensagem: "Não foi possivel submeter" })

    }

  },

  async SubmeterNomeSocial ( req: Request, res: Response ) {

    const { barcode, nome_social } = req.body

    try {

      const VerificaSeExiste = 
      await Conexao
        .select()
          .where("cidadao_id", barcode)
            .into("documentos")
      
      if(VerificaSeExiste.length === 0)
        throw new Error()
      

      await Conexao
        .update({ nome_social })
          .where("cidadao_id", barcode)
            .table("documentos")

      return res
        .status(200)
          .send({ mensagem: "Submetido com sucesso" })

    } catch {

      return res
        .status(401)
          .send({ mensagem: "Não foi possivel submeter" })

    }

  },

  async SubmeterRelatorioMedico ( req: Request, res: Response ) {

    const { barcode, relatorio_medico } = req.body

    try {

      const VerificaSeExiste = 
      await Conexao
        .select()
          .where("cidadao_id", barcode)
            .into("documentos")
      
      if( VerificaSeExiste.length === 0 )
        throw new Error("Não foi possível achar o cidadão no banco")
      

      await Conexao
        .update({ relatorio_medico })
          .where("cidadao_id", barcode)
            .table("documentos")

          

      return res
        .status(200)
          .send({ mensagem: "Submetido com sucesso" })

    } catch {

      return res
        .status(401)
          .send({ mensagem: "Não foi possivel submeter" })

    }

  },

  async SubmeterTipagemSanguinea ( req: Request, res: Response ) {

    const { barcode, tipagem_sanguinea } = req.body
    
    try {

      const VerificaSeExiste = 
      await Conexao
        .select()
          .where("cidadao_id", barcode)
            .into("documentos")
      
      if( VerificaSeExiste.length === 0 )
        throw new Error("Não foi possível achar o cidadão no banco")
      

      await Conexao
        .update({ tipagem_sanguinea })
          .where("cidadao_id", barcode)
            .table("documentos")

          

      return res
        .status(200)
          .send({ mensagem: "Submetido com sucesso" })

    } catch {

      return res
        .status(401)
          .send({ mensagem: "Não foi possivel submeter" })

    }

  }

}