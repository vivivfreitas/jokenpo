import 'package:flutter/cupertino.dart';
import 'package:jokenpo/app/jokenpo/model/jokenpo_model.dart';
import 'package:jokenpo/app/jokenpo/model/resultado_model.dart';

class JokenPoController extends ChangeNotifier {
  final JokenPoModel jokenPoModel = JokenPoModel();
  ResultadoModel _resultadoModel = ResultadoModel();

  get mensagemInicial => jokenPoModel.mensagemInicial;
  ResultadoModel get resultado => _resultadoModel;

  jogar(String opcaoPlayer) {
    _resultadoModel = jokenPoModel.verificaGanhador(opcaoPlayer);
    notifyListeners();
  }
}
