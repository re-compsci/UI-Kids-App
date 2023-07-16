import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      /*appBar: AppBar( iconTheme: Icon(IconThemeData()),),*/
      body: Center(
        child: Container(
          height: 600,
          width: 350,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center( child: Text("Sign In")
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  decoration: InputDecoration(
                      label: Text("First Name"),
                      prefixIcon: Icon(Icons.abc),
                      border: OutlineInputBorder( borderRadius: BorderRadius.circular(15))
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  decoration: InputDecoration(
                      label: Text("Last Name"),
                      prefixIcon: Icon(Icons.abc),
                      border: OutlineInputBorder( borderRadius: BorderRadius.circular(15))
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  obscureText: false,
                  decoration: InputDecoration(
                      label: Text("Phone Number"),
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder( borderRadius: BorderRadius.circular(15))
                  ),
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
                  obscureText: false,
                  decoration: InputDecoration(
                      label: Text("Password"),
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder( borderRadius: BorderRadius.circular(15))
                  ),
                ),
                InkWell(
                  onTap: (){Navigator.of(context).pushNamed('/login');},
                  child: Text("Already have an account?"),),
                ElevatedButton(onPressed: (){     Navigator.of(context).pushNamed('/home');},
                    child: Text("Sign up"))
              ]),
        ),
      ),
    );
  }
}
