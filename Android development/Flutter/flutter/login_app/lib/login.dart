import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:login_app/home_page.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  bool _isloading = false;
  // String access_token = '';

  //we need the function from the server API
  signIn(String username, String pass) async{
    String url =  'https://cmed-core-staging.cmedhealth.com/oauth/token?grant_type=password&client_id=client_id'
        + '&client_secret=client_secret' + '&username=' + username + '&password=' + pass;

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // Map body = {"name": username, "password": pass};
    var jsonResponse;
    var res = await http.post(url,body: null);
    if(res.statusCode == 200){
      jsonResponse = json.decode(res.body);
      // print("response Status: ${res.statusCode}");
      // print("Response Status: ${res.body}");

      if(jsonResponse != null){
        setState(() {
          _isloading = false;
        });

        sharedPreferences.setString("token", jsonResponse['access_token']);
        // access_token = sharedPreferences.getString('token') ?? '';
        // print(access_token);

        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => HomePage()),
                (Route<dynamic> route) => false);
      }
    } else {
      setState(() {
        _isloading = false;
      });
      print("Response status: ${res.body}");
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 48),
                  ),
                  SizedBox(height: 20,),
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                    child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextField(
                              controller: _emailController,
                              decoration: InputDecoration(hintText: "Email"),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextField(
                              controller: _passController,
                              obscureText: true,
                              decoration: InputDecoration(hintText: "Password"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      color: Colors.lightBlueAccent,
                      child: Text('Sign In'),
                      onPressed:
                      _emailController.text == "" || _passController.text == ""
                        ? null : () {
                        setState(() {
                          _isloading = true;
                        });
                        signIn(_emailController.text, _passController.text);
                  },
                    ),
                  ),
                  SizedBox(height: 20,),
                  FlatButton(
                    child: Text('Forget password'),
                    onPressed: () {},
                  )
                ],
              ),
        ),
      ),
        );
  }
}
