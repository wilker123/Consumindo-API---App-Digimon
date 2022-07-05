import 'package:digimon_list/pages/home_page.dart';
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
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Home Page"),
          ),
          body: HomePage(),
        ),
      ),
    );
  }
}
