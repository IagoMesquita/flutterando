import 'package:flutter/material.dart';
import 'app_controller.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return Switch(
          value: AppController.instance.isDartTheme,
          onChanged: (value) {
            AppController.instance.changeTheme();
          },
          // value: isDartTheme,
          // onChanged: (value) {
          //   setState(() {
          //     isDartTheme = value;
          //   });
          // },
        );
      },
    );
  }
}
