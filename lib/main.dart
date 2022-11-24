import 'package:flutter/material.dart';
import 'Shabodashboard.dart';

void main() {
  runApp(const Shabo());
}

class Shabo extends StatelessWidget {
  const Shabo({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
  class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: SizedBox(
                    width: 200,
                    height: 150,
                    child: Image.asset('assets/images/Shabo.png')),
              ),
            ),
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple)),
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.deepPurple),
                    hintText: 'Input username'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple)),
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.deepPurple),
                    hintText: 'Input password'),
              ),
            ),
             Padding(padding: const EdgeInsets.only( left: 15.0, right: 15.0, top: 15, bottom: 15),
            child:ElevatedButton(
               onPressed: (){
                 //TODO FORGOT PASSWORD SCREEN GOES HERE
               },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
               child: const Text(
                 'Forgot Password?',
                 style: TextStyle(color: Colors.deepPurple, fontSize: 15),
               ),
             ),
            ),

            Container(
              height: 50,
              width: 150,
              color: Colors.deepPurple,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const Shabodashboard()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            const Text('New User? Sign Up')
          ],
        ),
      ),

    );

  }
  }




