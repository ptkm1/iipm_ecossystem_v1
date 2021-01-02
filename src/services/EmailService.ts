interface IMailPara {
  nome: string;
  email: string;
}

interface IMailMensagem {
  subject: string;
  body: string;
  attachment?: string[];
}

interface MensagemDTO {
  // DTO = Data Transfer Object / Objeto de transferência de dados
  para: IMailPara
  mensagem: IMailMensagem
}

  // Interface para tipar classes
interface IMailServiço {
  sendMail(request: MensagemDTO): void
}

// O Implements vai tipar a classe para obrigar a passar um metodo sendmail na classe

class EmailService implements IMailServiço { 
  sendMail({ para, mensagem }: MensagemDTO) { // Se remover o metodo sendmail, ele dará erro
    console.log(`Email enviado para ${para.email}: ${mensagem.subject}`)
  }
}

export default EmailService