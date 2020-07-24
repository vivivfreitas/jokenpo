import 'package:flutter/material.dart';
import 'package:jokenpo/app/jokenpo/controller/jokenpo_controller.dart';
import 'package:jokenpo/app/jokenpo/view/jokenpo_view.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<JokenPoController>.value(
            value: JokenPoController())
      ],
      child: JokenPoView(),
    );
  }
}
