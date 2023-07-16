import 'package:first_app/home/Homepage.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: Center(
        child: Container(
          height: 500,
          width: 350,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center( child: Text("Log in")
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                decoration: InputDecoration(
                  label: Text("Email"),
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder( borderRadius: BorderRadius.circular(15))
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                    label: Text("Password"),
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder( borderRadius: BorderRadius.circular(15))
                ),
              ),
              InkWell(
                onTap: (){Navigator.of(context).pushNamed('/signup');},
                child: Text("Need an account?"),),
              ElevatedButton(onPressed: (){     Navigator.of(context).pushNamed('/home');},
              child: Text("Login"))
            ]),
        ),
      ),
    );

  }
}
