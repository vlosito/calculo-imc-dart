import 'dart:convert';
import 'dart:io';

import 'package:calculo_imc_dart/enums/tipo_dados.dart';

class ConsoleUtils {
  static dynamic lerConsoleTexto(String texto, TipoDados tipoDados) {
    print(texto);
    return lerConsole(tipoDados);
  }

  static dynamic lerConsole(TipoDados tipoDados) {
    String entradaConsole = stdin.readLineSync(encoding: utf8) ?? "";
    switch (tipoDados) {
      case TipoDados.STRING:
        return entradaConsole;
      case TipoDados.DOUBLE:
        return lerDouble(entradaConsole);
      case TipoDados.INT:
        return lerInt(entradaConsole);
      case TipoDados.BOOL:
        return lerBool(entradaConsole);
      default:
    }
  }

  static double? lerDouble(String entradaConsole) {
    try {
      return double.parse(entradaConsole);
    } catch (e) {
      return null;
    }
  }

  static int? lerInt(String entradaConsole) {
    try {
      return int.parse(entradaConsole);
    } catch (e) {
      return null;
    }
  }

  static bool? lerBool(String entradaConsole) {
    try {
      return bool.parse(entradaConsole);
    } catch (e) {
      return null;
    }
  }
}
