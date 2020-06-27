import 'package:flutter/material.dart';
import 'package:mvvm_form/src/mixins/validation_mixin.dart';

class ApplicationFromScreen extends StatefulWidget {
  @override
  _ApplicationFromScreenState createState() => _ApplicationFromScreenState();
}

class _ApplicationFromScreenState extends State<ApplicationFromScreen>
    with ValidationMixin {
  final formKey = GlobalKey<FormState>();
  String email = "";
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      //to get equal marign for all the foursides
      padding: EdgeInsets.all(20.0),
      //form to validate the textformfield
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
                  child: Column(
            children: [
              //adding helper methods
              emailField(),
              nameField(),
              // 25 percent of sapcing so we added empty container for sapcing
              Container(
                margin: EdgeInsets.only(top: 25.0),
              ),
              submitButton(),
              Container(
                margin: EdgeInsets.only(top: 5.0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      onSaved: (value) {
        email = value.trim();
      },
      validator: validationEmail,
      keyboardType: TextInputType.emailAddress,
      decoration: inputdecoration(labletext: 'Email', hinttext: "Enter Email"),
    );
  }

  nameField() {
    return TextFormField(
      onSaved: (value) {
        name = value.trim();
      },
      validator: validationName,
      decoration: inputdecoration(labletext: "Name", hinttext: "Enter Name"),
    );
  }

  submitButton() {
    return RaisedButton(
      color: Colors.blue,
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print('the given email: $email and name $name is saved ');
        }
      },
      child: Text(
        'Submit',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  InputDecoration inputdecoration({String labletext, String hinttext}) {
    return InputDecoration(
      hintText: hinttext,
      labelText: labletext,
    );
  }
}
