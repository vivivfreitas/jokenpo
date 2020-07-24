// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:jokenpo/app/jokenpo/model/jokenpo_model.dart';

void main() {
  group("Teste Model JokenPoModel", () {
    group("EMPATE TESTE", () {
      test('Teste PEDRA vs PEDRA', () {
        expect(
            ((JokenPoModel()
                    .aplicaRegra(opcaoPlayer: "pedra", escolhaApp: "pedra"))
                .mensagemResultado),
            JokenPoModel.empate);
      });
      test('Teste TESOURA vs TESOURA', () {
        expect(
            ((JokenPoModel()
                    .aplicaRegra(opcaoPlayer: "tesoura", escolhaApp: "tesoura"))
                .mensagemResultado),
            JokenPoModel.empate);
      });

      test('Teste PAPEL vs PAPEL', () {
        expect(
            ((JokenPoModel()
                    .aplicaRegra(opcaoPlayer: "papel", escolhaApp: "papel"))
                .mensagemResultado),
            JokenPoModel.empate);
      });
    });

    group("PLAYER1 GANHA TESTE", () {
      test('Teste PLAYER1 jogou TESOURA vs PEDRA', () {
        expect(
            ((JokenPoModel()
                    .aplicaRegra(opcaoPlayer: "tesoura", escolhaApp: "papel"))
                .mensagemResultado),
            JokenPoModel.playerGanhou);
      });
      test('Teste PLAYER1 jogou PEDRA vs TESOURA', () {
        expect(
            ((JokenPoModel()
                    .aplicaRegra(opcaoPlayer: "pedra", escolhaApp: "tesoura"))
                .mensagemResultado),
            JokenPoModel.playerGanhou);
      });

      test('Teste PLAYER1 jogou PAPEL vs PEDRA', () {
        expect(
            ((JokenPoModel()
                    .aplicaRegra(opcaoPlayer: "papel", escolhaApp: "pedra"))
                .mensagemResultado),
            JokenPoModel.playerGanhou);
      });
    });

    group("APP GANHA TESTE", () {
      test('Teste APP jogou TESOURA vs PEDRA', () {
        expect(
            ((JokenPoModel()
                    .aplicaRegra(escolhaApp: "tesoura", opcaoPlayer: "papel"))
                .mensagemResultado),
            JokenPoModel.appGanhou);
      });
      test('Teste APP jogou PEDRA vs TESOURA', () {
        expect(
            ((JokenPoModel()
                    .aplicaRegra(escolhaApp: "pedra", opcaoPlayer: "tesoura"))
                .mensagemResultado),
            JokenPoModel.appGanhou);
      });

      test('Teste APP jogou PAPEL vs PEDRA', () {
        expect(
            ((JokenPoModel()
                    .aplicaRegra(escolhaApp: "papel", opcaoPlayer: "pedra"))
                .mensagemResultado),
            JokenPoModel.appGanhou);
      });
    });
  });
}
