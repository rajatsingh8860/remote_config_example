import 'package:flutter/material.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends AnimatedWidget {
  const HomePage({ required this.remoteConfig }) : super(listenable: remoteConfig);

  final FirebaseRemoteConfig remoteConfig ;

  @override
  Widget build(BuildContext context) {
  //  Fluttertoast.showToast(msg : remoteConfig.getString("text"));
   Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("homepage"),
            Text(remoteConfig.getString("textef")),
          ]
        )
      ),
    );
  }
}