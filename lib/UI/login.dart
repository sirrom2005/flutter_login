import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>{
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    String _email = '';
    String _password = '';

    return new Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage('assets/images/login.jpg'),
                  fit: BoxFit.fill
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
            child: Image.asset("assets/images/logo.png", height: 60),
          ),
          Column(
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(150),
                      bottomRight: Radius.circular(150)
                  ),
                  boxShadow: [BoxShadow(
                    color: Colors.black,
                    blurRadius:10.0,
                  ),]
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 50, 50, 20),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email'
                        ),
                        onChanged:(String e){
                          _email = e;
                        },
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password'
                        ),
                        onChanged: (String e){
                          _password = e;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(35.0),
                        child: MaterialButton(
                          minWidth:200,
                          height:45,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                          ),
                          color: Colors.blueAccent,
                          child:Text(
                            'SIGN IN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0
                            ),
                          ),
                          onPressed: (){
                            print(_email);
                            print(_password);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      )
    );
  }
}