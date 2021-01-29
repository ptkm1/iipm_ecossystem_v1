import { Request, Response } from 'express';
import { Conexao } from "../../configs/ConexaoDB";

class TabelasController {

  async Index ( req: Request, res: Response ) {
    const data =
    await Conexao
      .select()
        .table("csvs")

    return res
      .status(200)
        .send(data)
  }

}

export default new TabelasController();