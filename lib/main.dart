import 'package:flutter/material.dart';
import './news.dart';
import './radio.dart';

void main() {
  runApp(Mainroute());
}

class Mainroute extends StatelessWidget {
  // const Mainroute({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login",
      routes: {
        "/login": (context) => Login(),
        "/news":(context) => News(),
        "/radio":(context) => Aplikasiradio()
        },
    );
  }
}

class Login extends StatelessWidget {
  // const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children:<Widget> [
              SizedBox(
                width:300,
                height: 60,
                child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        borderSide: BorderSide(
                          color: Colors.black, width: 5)),
                          // helperText: "silahkan masukkan usarname",
                          hintText: "isikan Username....",
                          prefixIcon: Align(
                             widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: Icon(Icons.person),
                          ),
                )
              ),
              ),
              SizedBox(
                width:300,
                height: 60,
                child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        borderSide: BorderSide(
                          color: Colors.black, width: 5)),
                          // helperText: "silahkan masukkan usarname",
                          hintText: "isikan Pasword",
                          prefixIcon: Align(
                             widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: Icon(Icons.person),
                          ),
                )
              ),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, "/news"), 
                child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
