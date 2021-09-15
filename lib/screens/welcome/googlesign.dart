import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'googleprovider.dart';

class GoogleSignupButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.all(4),
    child: OutlineButton.icon(
      label: Text(
        'Sign In With Google',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      shape: StadiumBorder(),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      highlightedBorderColor: Colors.black,
      borderSide: BorderSide(color: Colors.black),
      textColor: Colors.black,
      icon: Icon(Icons.login),
      onPressed: () {
        final provider =
        Provider.of<GoogleSignInProvider>(context, listen: false);
        provider.login();
      },
    ),
  );
}