import 'package:calculo_imc_dart/enums/tipo_dados.dart';
import 'package:calculo_imc_dart/exception/valor_invalido_exception.dart';
import 'package:calculo_imc_dart/models/pessoa.dart';
import 'package:calculo_imc_dart/utils/console_utils.dart';
import 'package:calculo_imc_dart/utils/imc_utils.dart';

void execute() {
  var executar = true;
  do {
    imprimirMenu();
    String comando = ConsoleUtils.lerConsole(TipoDados.STRING);
    try {
      if (comando.toUpperCase() == "C") {
        String nome =
            ConsoleUtils.lerConsoleTexto("Informe o nome", TipoDados.STRING);
        if (nome.trim().isEmpty) {
          throw ValorInvalidoException();
        }
        double peso =
            ConsoleUtils.lerConsoleTexto("Informe o peso", TipoDados.DOUBLE);
        if (peso <= 0) {
          throw ValorInvalidoException();
        }
        double altura =
            ConsoleUtils.lerConsoleTexto("Informe a altura", TipoDados.DOUBLE);
        if (altura <= 0) {
          throw ValorInvalidoException();
        }
        if (nome.trim().isEmpty) {
          throw ValorInvalidoException();
        }
        Pessoa pessoa = Pessoa(nome, peso, altura);
        String resultadoIMC = IMCUtils.resultadoIMC(pessoa);
        print(
            "${pessoa.nome} com base na sua altura de: ${pessoa.altura} e o seu peso de: ${pessoa.peso} seu indice de IMC é $resultadoIMC");
      } else {
        executar = false;
      }
    } catch (e) {
      print("Os valores informados são inválidos! Tente novamente");
    }
  } while (executar);
}

void imprimirMenu() {
  print('''
---------------------------------------------------------
|                                                       |
| 1 - Pressione "C" para calcular o IMC                 |
|                                                       |
| 2 - Pressione "S" para sair                           |
|                                                       |
---------------------------------------------------------
  ''');
}
