import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:remote_config_example/firebase_options.dart';
import 'package:remote_config_example/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
      title: 'Remote Config Example',
      home: FutureBuilder<FirebaseRemoteConfig>(
        future: setupRemoteConfig(),
        builder: (BuildContext context,
            AsyncSnapshot<FirebaseRemoteConfig> snapshot) {
          return snapshot.hasData
              ? HomePage(remoteConfig: snapshot.requireData)
              : Container();
        },
      )));
}

Future<FirebaseRemoteConfig> setupRemoteConfig() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.android);
  final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.fetchAndActivate();
  await remoteConfig.ensureInitialized().then((value) async {});
  return remoteConfig;
}
