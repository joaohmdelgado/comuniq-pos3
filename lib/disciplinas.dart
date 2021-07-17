import 'package:flutter/material.dart';
import './disciplinas.dart';
import './noticias.dart';
import './login.dart';
import './home.dart';
import './logo.dart';

class DisciplinasPage extends StatefulWidget {

  @override
  _DisciplinasPageState createState() => _DisciplinasPageState();
}

class _DisciplinasPageState extends State<DisciplinasPage> {

  @override
  Widget build(BuildContext context)  {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Disciplinas"),
      ),
      backgroundColor: Colors.grey[200],
      body: new ListView.builder(
          itemCount: 3,
          padding: new EdgeInsets.all(8.0),
          itemBuilder: (BuildContext context, int index) {
            return new GestureDetector(
              child: new Card(

              ),
            );
          }
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.amp_stories_outlined),
              title: Text("Notícias")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.assessment_outlined),
              title: Text("Disciplinas")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.ballot_outlined),
              title: Text("Tarefas")
          ),
        ],
      ),
    );
  }

}