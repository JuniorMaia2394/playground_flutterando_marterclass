import 'package:flutter/material.dart';

class ButtonWidgetMoney extends StatefulWidget {
  const ButtonWidgetMoney({super.key});

  @override
  State<ButtonWidgetMoney> createState() => _ButtonWidgetMoneyState();
}

class _ButtonWidgetMoneyState extends State<ButtonWidgetMoney> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 641,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.deepPurple,
      ),
      child: const Center(
        child: Text(
          'Sign Up with Email ID',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
