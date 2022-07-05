import 'package:flutter/material.dart';

class DigimonCard extends StatelessWidget {
  const DigimonCard({
    Key? key,
    required this.name_digimon,
    required this.image_digimon,
    required this.level_digimon,
  }) : super(key: key);

  final String name_digimon;
  final String image_digimon;
  final String level_digimon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          final snackBar = SnackBar(content: Text(name_digimon));

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Card(
          elevation: 2,
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    child: Image.network(image_digimon),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name_digimon,
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(level_digimon),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
