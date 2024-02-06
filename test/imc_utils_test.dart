import 'package:calculo_imc_dart/enums/classificacao_imc.dart';
import 'package:calculo_imc_dart/models/pessoa.dart';
import 'package:calculo_imc_dart/utils/imc_utils.dart';
import 'package:test/test.dart';

void main() {
  group("Calcula o IMC da pessoa:", () {
    var valuesToTest = {
      Pessoa("Teste 1", 50, 1.70): ClassificacaoImc.magrezaGrave.descricao,
      Pessoa("Teste 2", 55, 1.70): ClassificacaoImc.magrezaModerada.descricao,
      Pessoa("Teste 2", 60, 1.70): ClassificacaoImc.magrezaLeve.descricao,
      Pessoa("Teste 1", 80, 1.70): ClassificacaoImc.saudavel.descricao,
      Pessoa("Teste 2", 90, 1.70): ClassificacaoImc.sobrepeso.descricao,
      Pessoa("Teste 2", 110, 1.70): ClassificacaoImc.obesidadeGrauI.descricao,
      Pessoa("Teste 1", 120, 1.70): ClassificacaoImc.obesidadeGrauII.descricao,
      Pessoa("Teste 2", 150, 1.70): ClassificacaoImc.obesidadeGrauIII.descricao,
    };
    valuesToTest.forEach((values, expected) {
      test('Entrada: $values Esperado:$expected', () {
        expect(IMCUtils.resultadoIMC(values), expected);
      });
    });
  });
}
