import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class VerifyEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    return Center(
      child: Column(children: [
        Text("Please verify your email (${auth.currentUser.email})"),
        RaisedButton(
          onPressed: () => auth.currentUser.sendEmailVerification(),
          padding: EdgeInsets.only(right: 0.0),
          child: Text(
            'Resend Email Verification',
            style: kLabelStyle,
          ),
        )]),
    );
  }
}
