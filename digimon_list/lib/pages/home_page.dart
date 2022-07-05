import 'package:digimon_list/services/digimon_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../models/digimon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Digimon>?> futureDigimon;
  DigimonService get service => GetIt.I<DigimonService>();

  @override
  void initState() {
    super.initState();
    futureDigimon = service.getDigimons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
