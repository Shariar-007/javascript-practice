import 'package:flutter/material.dart';
import 'package:validators/validators.dart' as validator;
import 'model.dart';
import 'result.dart';


void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Demo'),
      ),
      body: TestForm(),
    );
  }
}

class TestForm extends StatefulWidget {
  @override
  _TestFormState createState() => _TestFormState();
}

class _TestFormState extends State<TestForm> {
  final _formKey = GlobalKey<FormState>();
  Model model = Model();

  @override
  Widget build(BuildContext context) {
    final halfMediaWidth = MediaQuery.of(context).size.width / 2.0;

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Container(
                alignment: Alignment.topCenter,
                width: halfMediaWidth,
                child: MyTextFormField(
                  hintText: 'First Name',
                  onSaved: (String value){
                    model.firstName = value;
                  },
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                width: halfMediaWidth,
                child: MyTextFormField(
                  hintText: 'Last Name',
                  onSaved: (String value){
                    model.lastName = value;
                  },
                ),
              ),
            ],
          ),
          MyTextFormField(
            hintText: 'Email',
            isEmail: true,
            onSaved: (String value){
              model.email = value;
            },
          ),
          MyTextFormField(
            hintText: 'Password',
            isPassword: true,
            onSaved: (String value){
              model.password = value;
            },
          ),
          // MyTextFormField(
          //   hintText: 'Confirm Email',
          //   isPassword: true,
          //   onSaved: (String value){
          //     model. = value;
          //   },
          // ),
          RaisedButton(
            color: Colors.blueAccent,
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              // print(_formKey.currentState);
              _formKey.currentState.save();
              
              Navigator.push(context, MaterialPageRoute(builder: (context) => Result(model: this.model)));
            },
          )
        ],
      ),

    );
  }
}

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Function validaotor;
  final Function onSaved;
  final bool isPassword;
  final bool isEmail;

  MyTextFormField({
    this.hintText,
    this.validaotor,
    this.onSaved,
    this.isEmail = false,
    this.isPassword = false,
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.all(15.0),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200],
        ),
        obscureText: isPassword ? true: false,
        validator: validaotor,
        onSaved: onSaved,
        keyboardType: isEmail ? TextInputType.emailAddress: TextInputType.text,
      ),
    );
  }
}
