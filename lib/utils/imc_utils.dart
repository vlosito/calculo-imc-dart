import '../enums/classificacao_imc.dart';
import '../models/pessoa.dart';

class IMCUtils {
  static String resultadoIMC(Pessoa aluno) {
    switch (aluno.calcularImc()) {
      case (< 16):
        return ClassificacaoImc.magrezaGrave.descricao!;
      case (>= 16 && < 17):
        return ClassificacaoImc.magrezaModerada.descricao!;
      case (>= 17 && < 18.5):
        return ClassificacaoImc.magrezaLeve.descricao!;
      case (>= 18.5 && < 25):
        return ClassificacaoImc.saudavel.descricao!;
      case (>= 25 && < 30):
        return ClassificacaoImc.sobrepeso.descricao!;
      case (>= 30 && < 35):
        return ClassificacaoImc.obesidadeGrauI.descricao!;
      case (>= 35 && < 40):
        return ClassificacaoImc.obesidadeGrauII.descricao!;
      case (>= 40):
        return ClassificacaoImc.obesidadeGrauIII.descricao!;
      default:
        return "";
    }
  }
}
