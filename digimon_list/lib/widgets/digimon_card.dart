import 'package:flutter/material.dart';

class DigimonCard extends StatelessWidget {
  const DigimonCard({
    Key? key,
    required this.nameDigimon,
    required this.imageDigimon,
    required this.levelDigimon,
  }) : super(key: key);

  final String nameDigimon;
  final String imageDigimon;
  final String levelDigimon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          final snackBar = SnackBar(content: Text(nameDigimon));

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
                    child: Image.network(imageDigimon),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        nameDigimon,
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(levelDigimon),
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
