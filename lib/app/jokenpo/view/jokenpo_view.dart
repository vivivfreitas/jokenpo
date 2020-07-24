import 'package:flutter/material.dart';
import 'package:jokenpo/app/jokenpo/controller/jokenpo_controller.dart';
import 'package:provider/provider.dart';

class JokenPoView extends StatefulWidget {
  @override
  _JokenPoViewState createState() => _JokenPoViewState();
}

class _JokenPoViewState extends State<JokenPoView> {
  @override
  Widget build(BuildContext context) {
    print("Só deve aparecer uma unica vez ");
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Consumer<JokenPoController>(
              builder: (context, jokenPoController, child) {
            return Column(
              children: <Widget>[
                Image(
                    image: AssetImage(
                        'images/${jokenPoController.resultado.escolhaApp}.png')),
                Padding(
                  padding: EdgeInsets.only(top: 32, bottom: 16),
                  child: Text(
                    jokenPoController.resultado.mensagemResultado,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => jokenPoController.jogar("pedra"),
                      child: Image.asset(
                        "images/pedra.png",
                        width: 100,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => jokenPoController.jogar("papel"),
                      child: Image.asset(
                        "images/papel.png",
                        width: 100,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => jokenPoController.jogar("tesoura"),
                      child: Image.asset(
                        "images/tesoura.png",
                        width: 100,
                      ),
                    ),
                  ],
                )
              ],
            );
          }),
        ],
      ),
    );
  }
}
