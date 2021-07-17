import 'package:flutter/material.dart';
import './disciplinas.dart';
import './noticias.dart';
import './login.dart';
import './home.dart';
import './logo.dart';

main() {
  runApp(ComuniqPos());
}

class ComuniqPos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: DisciplinasPage(),
    );
  }
}
