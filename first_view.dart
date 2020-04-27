import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'custom_dialog.dart';

class FirstView extends StatelessWidget{
  final primaryColor = const Color(0xFFFF1744);
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
          width: _width,
          height: _height,
          color: primaryColor,
          child: SafeArea(
            child: Padding(
        padding: const EdgeInsets.all(17.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 80,),
                AutoSizeText("SMART PROMO", style: TextStyle(fontSize: 44, color: Colors.white)),
                SizedBox(height: 80,),
                AutoSizeText("One stop destination for all your supermarket deals",
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 40, color: Colors.white)),
                SizedBox(height: 80,),
                RaisedButton(color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
                  child:  Text("Get Started", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  ),
                  onPressed: () {
                  showDialog(context: context,
                  builder: (BuildContext context) => CustomDialog(
                    title: "Create a free account",
                    description: "Your data will be saved securely, and allow you to sign in anytime",
                    primaryButtonText: "Create account",
                    primaryButtonRoute: "/signUp",
                  ));
                  },
                ),
                SizedBox(height: 20,),
                RaisedButton(color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
                    child:  Text("Sign In", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  ),
                  onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/signIn');
                  },
                ),
              ],
            ),
          ),
        )
    )
    );
  }
}