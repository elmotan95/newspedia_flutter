import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }


}

class _LoginState extends State<LoginWidget> {

  final _formKey = GlobalKey<FormState>();
  FocusNode usernameInput = FocusNode();
  FocusNode passwordInput = FocusNode();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16
            ),
            child: TextFormField(
              focusNode: usernameInput,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.person),
                labelText: 'Username',
              ),
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue
              ),
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (String value) {
                FocusScope.of(context).requestFocus(passwordInput);
              },
              validator: (value) {
                return value.isEmpty ? 'Please Enter Your Username' : null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16
            ),
            child: TextFormField(
              focusNode: passwordInput,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue
              ),
              obscureText: true,
              textInputAction: TextInputAction.send,
              decoration: InputDecoration(
                icon: Icon(Icons.security),
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
              validator: (value) {
                return value.isEmpty ? 'Please Enter Your Password' : null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text('Process ')));
                }
              },
              child: Text('Submit'),
            ),
          )
        ],
      ) // We'll build this out in the next steps!
    );
  }
}