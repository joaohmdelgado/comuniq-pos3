import 'package:flutter/material.dart';
import './disciplinas.dart';
import './noticias.dart';
import './login.dart';
import './home.dart';
import './logo.dart';

class NoticiasPage extends StatefulWidget {
  @override
  _NoticiasPageState createState() => _NoticiasPageState();
}

class _NoticiasPageState extends State<NoticiasPage> {

  Column buildButtonColumn(IconData icon) {
    Color color = Theme.of(context).primaryColor;
    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        new Icon(icon, color: color),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Noticias PPGIA"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[200],
      body: new ListView.builder(
        itemCount: 3,
        padding: new EdgeInsets.all(8.0),
        itemBuilder: (BuildContext context, int index) {
          return new GestureDetector(
            child: new Card(
              elevation: 1.7,
              child: new Padding(
                padding: new EdgeInsets.all(10.0),
                child: new Column(
                  children: [
                    new Row(
                      children: <Widget>[
                        new Padding(
                          padding: new EdgeInsets.only(left: 4.0),
                          child: new Text(
                            "data de publicação",
                            style: new TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        new Padding(
                          padding: new EdgeInsets.all(5.0),
                          child: new Text(
                            "categoria",
                            style: new TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                    new Row(
                      children: [
                        new Expanded(
                          child: new GestureDetector(
                            child: new Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                new Padding(
                                  padding: new EdgeInsets.only(
                                      left: 4.0,
                                      right: 8.0,
                                      bottom: 8.0,
                                      top: 8.0),
                                  child: new Text(
                                    "Título da notícia",
                                    style: new TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                new Padding(
                                  padding: new EdgeInsets.only(
                                      left: 4.0,
                                      right: 4.0,
                                      bottom: 4.0),
                                  child: new Text(
                                    "Descrição da notícia -- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc at dignissim mauris. Vestibulum sem neque, dignissim vel augue sit amet.",
                                    style: new TextStyle(
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        new Column(
                          children: <Widget>[
                            new Padding(
                              padding: new EdgeInsets.only(top: 8.0),
                              child: new SizedBox(
                                height: 100.0,
                                width: 100.0,
                                child: new Image.network(
                                  'https://foforks.com.br/wp-content/uploads/2019/05/news-696x252.jpeg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            new Row(
                              children: <Widget>[
                                new GestureDetector(
                                  child: new Padding(
                                      padding:
                                      new EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 5.0),
                                      child: buildButtonColumn(
                                          Icons.share)),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.amp_stories_outlined),
              title: Text("Notícias"),
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