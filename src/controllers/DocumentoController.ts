import { Request, Response } from "express"
import { Conexao } from "../configs/ConexaoDB"

class DocumentoController {

  async Index ( req: Request, res: Response ) {

    const { barcode } = req.body

    const {
      certidao_nascimento,
      nome_social,
      relatorio_medico,
      tipagem_sanguinea,
      cidadao_id } =
     await Conexao
      .select()
        .where('cidadao_id', barcode)
          .table("documentos")
            .first()

    const data =
    { certidao_nascimento: `http://192.168.0.103:3333/uploads/${certidao_nascimento}` ,
      nome_social: `http://192.168.0.103:3333/uploads/${nome_social}`,
      relatorio_medico: `http://192.168.0.103:3333/uploads/${relatorio_medico}`,
      tipagem_sanguinea: `http://192.168.0.103:3333/uploads/${tipagem_sanguinea}`,
      cidadao_id }

    return res
      .status(200)
        .send(data)

  }

  async SubmeterCertidão ( req: Request, res: Response ) {

    const { barcode } = req.body

    var certidao_nascimento
    console.log(req.file)

    if (req.file == undefined) {

      const { certidao_nascimento: certidaonascimento } =
        await Conexao
          .table('documentos')
            .select("certidao_nascimento")

      certidao_nascimento = certidaonascimento

    } else {

      certidao_nascimento = req.file.filename

    }

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

  }

  async SubmeterNomeSocial ( req: Request, res: Response ) {

    const { barcode } = req.body


    var nome_social

    if (req.file == undefined) {

      const { nome_social: nomesocial } =
        await Conexao
          .table('documentos')
            .select("nome_social")

      nome_social = nomesocial

    } else {

      nome_social = req.file.filename

    }


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

  }

  async SubmeterRelatorioMedico ( req: Request, res: Response ) {

    const { barcode } = req.body

    var relatorio_medico

    if (req.file == undefined) {

      const { relatorio_medico: relatoriomedico } =
        await Conexao
          .table('documentos')
            .select("relatorio_medico")

      relatorio_medico = relatoriomedico

    } else {

      relatorio_medico = req.file.filename

    }


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

  }

  async SubmeterTipagemSanguinea ( req: Request, res: Response ) {

    const { barcode } = req.body

    var tipagem_sanguinea

    if (req.file == undefined) {

      const { tipagem_sanguinea: tipagemsanguinea } =
        await Conexao
          .table('documentos')
            .select("tipagem_sanguinea")

      tipagem_sanguinea = tipagemsanguinea

    } else {

      tipagem_sanguinea = req.file.filename

    }

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

export default new DocumentoController()