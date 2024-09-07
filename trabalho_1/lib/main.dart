import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{

  final String usuario = 'teste';
  final String Senha = 'teste123';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Bem vindo !",
              style: TextStyle(
                fontSize: 50, 
              ),
            )
          ),
          backgroundColor: Colors.blue[300],
        ),
        body: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 600,
              maxWidth: 500
            ),
            child: Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue[200],
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(2, 2)
                  )
                ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("Login", style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold) 
                  ),
                  SizedBox(height: 40),
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/74/74577.png'),
                    backgroundColor: Colors.lightBlue,
                  ),
                  SizedBox(height: 40),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Usuário",
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      filled: true
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Senha",
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      filled: true
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 30,),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black87,
                      overlayColor: Colors.lightBlue
                    ), 
                    child: Text("Confirmar")
                  ),
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}