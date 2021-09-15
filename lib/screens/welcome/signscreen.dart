import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:i_orbit/components/button.dart';
import 'package:i_orbit/screens/home.dart';
import 'package:i_orbit/screens/welcome/register.dart';
import 'package:provider/provider.dart';

import 'googleprovider.dart';
import 'loggedin.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          final provider = Provider.of<GoogleSignInProvider>(context);

          if (provider.isSigningIn) {
            return buildLoading();
          } else if (snapshot.hasData) {
            return Home();
          } else {
            return SignUpWidget();
          }
        },
      ),
    ),
  );

  Widget buildLoading() => Stack(
    fit: StackFit.expand,
    children: [
      CustomPaint(painter: BackgroundPainter()),
      Center(child: CircularProgressIndicator()),
    ],
  );
}