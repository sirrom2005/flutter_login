import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/Models/Account.dart';
import 'package:login/Services/Services.dart';
import 'package:login/UI/Home/DashBoard.dart';

class Login extends StatefulWidget{
  static const String id = 'login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>
{
  Future<Account> _futureLogin;
  final _formKey = GlobalKey<FormState>();

  String _email = '';
  String _password = ''; 

  submitLogin() async{
    if (_formKey.currentState.validate()) {
      try {
        final _futureLogin = await Services().login(_email.trim(), _password.trim());
        if(_futureLogin != null ){
          Navigator.pushNamed(context, DashBoard.id, arguments: {"hello sue"});
        }else{
          return Text('HHHH\nMMMMM');
        }
      }catch(e){
        print('[Erro] => $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) 
  {
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
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 25),
            child: Column(
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
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            initialValue: 'demo@demo.com',
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'name@domain.com'
                            ),
                            onChanged:(String e){
                              _email = e;
                            },
                            validator: (val){
                              if(val.isEmpty)
                                return 'Email address required...';
                              else
                                return null;
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: 'Password'
                            ),
                            initialValue: 'password',
                            onChanged: (String e){
                              _password = e;
                            },
                            validator: (val){
                              if(val.isEmpty)
                                return 'Password required...';
                              else
                                return null;
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
                              onPressed:(){
                                setState(() {
                                  submitLogin();
                                });
                              } ,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          /*FutureBuilder(
            future: _futureLogin,
            builder: (context, snapshot){
              if(snapshot.hasData){
                return Padding(
                  padding: const EdgeInsets.all(128.0),
                  child: Text(
                    snapshot.data.fname,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }
              return CircularProgressIndicator();
            }
          )*/
        ],
      )
    );
  }
}