class ResultadoModel {
  String _escolhaApp = "padrao";
  String _mensagemResultado = "Escolha uma opção abaixo";

  ResultadoModel({escolhaApp, mensagemResultado}) {
    if (escolhaApp != null) {
      this._escolhaApp = escolhaApp;
    }
    if (mensagemResultado != null) {
      this._mensagemResultado = mensagemResultado;
    }
  }

  String get escolhaApp => _escolhaApp;

  set escolhaApp(String value) => _escolhaApp = value;

  String get mensagemResultado => _mensagemResultado;

  set mensagemResultado(String value) => _mensagemResultado = value;
}
