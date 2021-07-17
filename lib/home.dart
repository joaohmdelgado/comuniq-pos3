import 'package:flutter/material.dart';
import './disciplinas.dart';
import './noticias.dart';
import './login.dart';
import './home.dart';
import './logo.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("HOME"),
        centerTitle: true,
      ),
      body: new ListView.builder(
          itemCount: 3,
          padding: new EdgeInsets.all(8.0),
          itemBuilder: (BuildContext context, int index) {
            return new GestureDetector(
              child: new Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.close),
                      title: Text('Prorogada a inscrição do SIMPOS 2021'),
                      subtitle: Text('Enviada pela PRPG às 14:30 21/03/2021'),
                    ),

                  ],
                ),
              ),
            );
          }
      ),
      bottomNavigationBar: BottomNavigationBar(

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