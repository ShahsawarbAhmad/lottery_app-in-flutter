import 'package:flutter/material.dart';
import 'dart:math';

class LotterAppHome extends StatefulWidget {
  const LotterAppHome({super.key});

  @override
  State<LotterAppHome> createState() => _LotterAppHomeState();
}

class _LotterAppHomeState extends State<LotterAppHome> {
  Random random = Random();
  var x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottery App"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Lottery winning number is 4 ",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
              color: x == 4 ? Colors.teal : Colors.grey.withOpacity(.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: x == 4
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.done,
                          color: Colors.green,
                          size: 35,
                        ),
                        Text(
                          "Congratulation you have won the lottery, your number is $x",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error,
                          color: Colors.red,
                          size: 35,
                        ),
                        Text(
                          "Bett luck next time your number is $x  \ntry again",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x = random.nextInt(10);
          setState(() {});
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
