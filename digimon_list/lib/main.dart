import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'services/digimon_service.dart';

void setLocator() {
  GetIt.instance.registerLazySingleton(() => DigimonService());
}

void main() {
  setLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(),
    );
  }
}
