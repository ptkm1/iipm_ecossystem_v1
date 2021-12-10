import { Request, Response } from "express"
import { Conexao } from "../configs/ConexaoDB"

class EstadosController {
    public async index(req: Request, res: Response) {
        const data = await Conexao.select("*").table("cidadão")

        return res
          .status(200)
            .send(data)
    }
}

export default new EstadosController()