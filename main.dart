import 'package:flutter/material.dart';
import 'package:flutterappmyfyp/first_view.dart';
import 'package:flutterappmyfyp/home.dart';
import 'package:flutterappmyfyp/sign_up_view.dart';
import 'auth_service.dart';
import 'provider_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      auth: AuthService(),
    child: MaterialApp(
      title: "SMART PROMO",
      theme: ThemeData(
        accentColor: Colors.redAccent,
      ),
      home: HomeController(),
      routes: <String, WidgetBuilder>{
        '/signUp': (BuildContext context) => SignUpView(authFormType: AuthFormType.signUp),
        '/signIn': (BuildContext context) => SignUpView(authFormType: AuthFormType.signIn),
        '/home': (BuildContext context) =>HomeController(),
      },
    )
    );
  }
}

class HomeController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthService auth = Provider.of(context).auth;
    return StreamBuilder<String>(
      stream: auth.onAuthStateChanged,
      builder: (context, AsyncSnapshot<String> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final bool signedIn = snapshot.hasData;
          return signedIn ? HomeScreen() : FirstView();
        }
        return CircularProgressIndicator();
      },
    );
  }
}






