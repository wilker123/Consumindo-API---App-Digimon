import 'package:digimon_list/services/digimon_service.dart';
import 'package:digimon_list/widgets/digimon_card.dart';
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
    return Container(
      color: Colors.white10,
      child: FutureBuilder<List<Digimon>?>(
        future: futureDigimon,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Digimon> data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return DigimonCard(
                  name_digimon: data[index].name as String,
                  image_digimon: data[index].img as String,
                  level_digimon: data[index].level as String,
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
