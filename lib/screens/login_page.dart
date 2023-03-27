import 'package:flutter/material.dart';
import 'package:flutter_webrtc_app/screens/join_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hide = true;

  get selfCallerId => selfCallerId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 400,
                ),
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                margin: EdgeInsets.only(top: 200, left: 50, right: 50),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 0.1,
                        blurRadius: 5,
                      )
                    ]
                ),
                child: Column(
                  children: [
                    TextField(
                      showCursor: true,
                      cursorColor: Colors.blue,
                      style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                      decoration: InputDecoration(
                        icon: Icon(Icons.email, size: 30, color: Colors.blue,),
                        border: OutlineInputBorder(

                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),


                  ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        hintText: "Masukkan Username",
                        hintStyle: TextStyle(color: Colors.blue, fontSize: 20),
                          labelText: "Username",
                          labelStyle: TextStyle(
                            color: Colors.blue, fontSize: 20
                          ),

                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      showCursor: true,
                      cursorColor: Colors.blue,
                      style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock, size: 30, color: Colors.blue,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        hintText: "Masukkan Password",
                        hintStyle: TextStyle(color: Colors.blue, fontSize: 20),
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Colors.blue, fontSize: 20
                          ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      ),
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 100)
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>JoinScreen(selfCallerId: selfCallerId)));
                      }, child: Text("Login", style: TextStyle(color : Colors.white),)
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 80, left: 55,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                      Text("Login access to your account", style:
                      TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 17),)
                    ],
                  ))
            ],
          ),
      ),
    );
  }
}


