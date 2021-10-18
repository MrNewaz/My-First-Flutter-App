// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_foundation/randomizer_change_notifier.dart';
import 'package:provider/provider.dart';

class RandomizerPage extends StatelessWidget {
  RandomizerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Randomizer"),
      ),
      body: Center(
        child: Consumer<RandomizerChangeNotifier>(
          builder: (context, notifier, child) {
            return Text(
              notifier.generatedNumber?.toString() ?? 'Generate a number',
              style: TextStyle(fontSize: 32),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<RandomizerChangeNotifier>().generateRandomNumber();
        },
        label: Text('Generate'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
