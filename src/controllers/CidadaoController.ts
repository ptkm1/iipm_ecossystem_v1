import { Request, Response } from "express"
import { Conexao } from "../configs/ConexaoDB"


class CidadãoController {

  async Index ( req: Request, res: Response ) {

    const data =
    await Conexao
      .select("*")
        .table("cidadão")

    return res
      .status(200)
        .send(data)

  }

  async Create ( req: Request, res: Response ) {

    const { id, nome, email, telefone } = req.body

    try {

      const data =
      { id,
        nome,
        email,
        telefone,
        documentos: id }

      const DocumentosDefault =
      { id_documentos: id,
        certidao_nascimento: "",
        nome_social: "",
        relatorio_medico: "",
        tipagem_sanguinea: "",
        cidadao_id: id }

      await Conexao
        .insert(data)
          .into("cidadão")

      await Conexao
        .insert(DocumentosDefault)
          .into("documentos")

      return res
        .status(200)
          .send({ mensagem: "Cidadão cadastrado" })

    } catch (error) {

      return res
        .status(401)
          .send({ mensagem: "não foi possível cadastrar", error })

    }
  }

  async ProcurarPorBarcode ( req: Request, res: Response ) {

    const { barcode } = req.params

    const RetornoDoBanco =
    await Conexao
    .select()
      .where("id",barcode) // Trocar o campo id por barcode depois...
        .table('cidadão')

    if( RetornoDoBanco.length === 0 ){
      return res
        .status(404)
          .send({ mensagem: "Cidadão não encontrado" })
    }

    return res
      .status(200)
        .send({ mensagem: "Cidadão Encontrado" ,
                Cidadão: RetornoDoBanco })

  }

  async DeletarCidadaoPorBarcode ( req: Request, res: Response ) {

    const { barcode } = req.params

   try {

   const VerificaUsuario =
    await Conexao
      .select()
        .where({ id: barcode})
          .table("cidadão")

        if( VerificaUsuario.length === 0 ){
          return res
            .status(404)
              .send({ mensagem: "Cidadão não encontrado" })
        }

     await Conexao
      .table('cidadão')
        .where({ id: barcode}) // Trocar o campo id por barcode depois...
          .delete()

     return res
      .status(200)
        .send({ mensagem: "Cidadão deletado com sucesso" })

   } catch {

      return res
        .status(404)
          .send({ mensagem: "Não foi possivel deletar" })
   }

  }

  async UpdateCidadaoPorBarcode ( req: Request, res: Response ) {

    const { barcode } = req.params

    const { nome, email, telefone } = req.params

    const data =
    { nome,
      email,
      telefone }

    try {

      await Conexao
       .table('cidadão')
         .where({ id: barcode }) // Trocar o campo id por barcode depois...
           .update(data)

        return res
          .status(200)
            .send({ mensagem: "Cidadão Atualizado com sucesso" })

    } catch {

       return res
         .status(404)
           .send({ mensagem: "Não foi possivel atualizar o Cidadão" })
    }

  }
}

export default new CidadãoController()