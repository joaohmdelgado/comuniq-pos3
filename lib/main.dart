import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: NoticiasPage(),
    );
  }
}

// ----------------LOGIN -----------------------

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(

        child: _buildLoginLayout(),
      ),
    );
  }

  Widget _buildLoginLayout() {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: AppLogo(),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 80.0,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.grey[200],
            ),
            child: Center(
              child: Text('Para entrar, use o seu login do siga ou CPF e a sua senha de serviços integrados '
                '(a senha que você usa para conectar-se à rede wi-fi e acessar o AVA)'
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: _buildLoginFields(),
        )
      ],
    );
  }
}

Widget _buildLoginFields() {
  return Container(
    margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 80.0),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildEmailField(),
          SizedBox(height: 10.0,),
          _buildPasswordField(),
          SizedBox(height: 20.0,),
          _buildSubmitButton(),
        ],
      ),
    ),
  );
}

Widget _buildEmailField() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Login ou CPF'),
  );
}

Widget _buildPasswordField() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Senha'),
  );
}

Widget _buildSubmitButton() {
  return RaisedButton(
    onPressed: () {},
    color: Colors.blueAccent[200],
    child: Text(
      'Login',
      style: TextStyle(color: Colors.white),
    ),
  );
}

// ---------------END - LOGIN ---------------------

// ------------------- HOME -----------------------

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

// --------------- END - HOME ---------------------

// ------------------ LOGO -----------------------

class AppLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      width: 100.0,
      height: 100.0,
      decoration:
      BoxDecoration(shape: BoxShape.circle, color: Color.fromRGBO(27, 45, 79, 1)),
      child: Icon(Icons.home, color: Colors.white, size: 40.0,),
    );
  }
}

// --------------- END - LOGO ---------------------

// --------------- Disciplinas ---------------------

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

// ------------------- NOTÍCIAS -----------------------

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

