import 'dart:math';

import 'resultado_model.dart';

class JokenPoModel {
  static final String playerGanhou = "Voçê ganhou!!!!";
  static final String appGanhou = "App ganhou!!!!";
  static final String empate = "Empate!!!!";
  final String mensagemInicial = "Escolha uma opção abaixo";

  ResultadoModel verificaGanhador(String opcaoPlayer) {
    var opcoes = ["pedra", "papel", "tesoura"];
    var numeroAleatorio = Random().nextInt(opcoes.length);
    String escolhaApp = opcoes[numeroAleatorio];
    return aplicaRegra(opcaoPlayer: opcaoPlayer, escolhaApp: escolhaApp);
  }

  ResultadoModel aplicaRegra({String opcaoPlayer, String escolhaApp}) {
    String resultado;
    if ((opcaoPlayer == "pedra" && escolhaApp == "tesoura") ||
        (opcaoPlayer == "tesoura" && escolhaApp == "papel") ||
        (opcaoPlayer == "papel" && escolhaApp == "pedra")) {
      resultado = playerGanhou;
    } else if ((escolhaApp == "pedra" && opcaoPlayer == "tesoura") ||
        (escolhaApp == "tesoura" && opcaoPlayer == "papel") ||
        (escolhaApp == "papel" && opcaoPlayer == "pedra")) {
      resultado = appGanhou;
    } else {
      resultado = empate;
    }
    return ResultadoModel(escolhaApp: escolhaApp, mensagemResultado: resultado);
  }
}
