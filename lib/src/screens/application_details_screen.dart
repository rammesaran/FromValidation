import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {

final String enteredName;
final String enteredEmail;
final String enteredMobile;
final String enteredPost;

const DetailsPage({Key key, this.enteredName, this.enteredEmail, this.enteredMobile, this.enteredPost}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Given Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           textstyle(' Name is: $enteredName'),
          textstyle('Email ID is: $enteredEmail'),
          textstyle(' Mobile Number is: $enteredMobile'),
          textstyle(' Post  is: $enteredPost'),


           

          ],
        ),
      ),
    );
  }

  Widget textstyle( String text)
  {
    return Text(text,
      style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
      ),
    );
  }
}