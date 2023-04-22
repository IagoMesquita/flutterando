import 'package:flutter/material.dart';
import 'custom_switch.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;
  // bool isDartTheme = false;

  void countNumber() {
    setState(() {
      contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutterando'),
        actions: const [
          CustomSwitch(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          scrollDirection: Axis.vertical,

          children: [
            Text('Contador: $contador'),
            Container(
              height: 10,
            ),
            const CustomSwitch(),
            Container(
              height: 20,
            ),
   
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
      // body: Center(
      //   child: GestureDetector(
      //       onTap: () {
      //       countNumber();
      //     },
      //     child: Text(
      //       'Contador: $contador',
      //       style: const TextStyle(
      //         fontSize: 30,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //   ),
      // ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countNumber();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
