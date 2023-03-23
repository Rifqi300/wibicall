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
                      decoration: InputDecoration(
                          hintText: "Email",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: hide,
                      decoration: InputDecoration(
                          hintText: "Password",
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              hide = !hide;
                            });
                          },
                            icon: hide?Icon(Icons.visibility_off):Icon(Icons.visibility),),
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(onPressed: (){}, child: Text("Forget?"),
                      ),
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 100)
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>JoinScreen(selfCallerId: selfCallerId)));
                      }, child: Text("Login"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have any account?"),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
                        }, child: Text("Register?"))
                      ],)
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

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool hide = true;
  TextEditingController password = TextEditingController();
  TextEditingController cpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Stack(
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
                    decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: password,
                    obscureText: hide,
                    decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            hide = !hide;
                          });
                        },
                          icon: hide?Icon(Icons.visibility_off):Icon(Icons.visibility),),
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    controller: cpassword,
                    obscureText: hide,
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            hide = !hide;
                          });
                        },
                          icon: hide?Icon(Icons.visibility_off):Icon(Icons.visibility),),
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(horizontal: 100)
                    ),
                    onPressed: (){
                      if(password.text != cpassword.text){
                        showDialog(context: context, builder: (context){
                          return AlertDialog(
                           title: Text("Message"),
                           content: Text("Your Enter Password Do Not Match Each Other"),
                          );
                        });
                      }else{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      }
                    }, child: Text("Register"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have any account"),
                      TextButton(onPressed: (){}, child: Text("Login?"))
                    ],)
                ],
              ),
            ),
            Positioned(
              
                top: 80, left: 55,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Register", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                    Text("Create  your account", style:
                    TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 17),)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
