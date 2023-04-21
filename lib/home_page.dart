import 'package:flutter/material.dart';
import 'package:flutterando/app_controller.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $contador'),
           const CustomSwitch(),
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

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme(value);
        print('Value: $value');
        print('isDartTheme: ${AppController.instance.isDartTheme}');
      },
      // value: isDartTheme,
      // onChanged: (value) {
      //   setState(() {
      //     isDartTheme = value;
      //   });
      // },
    ),
    Text('${AppController.instance.isDartTheme}')
      ] 
    ); 
  }
}
