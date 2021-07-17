import 'package:flutter/material.dart';
import './disciplinas.dart';
import './noticias.dart';
import './login.dart';
import './home.dart';
import './logo.dart';

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
