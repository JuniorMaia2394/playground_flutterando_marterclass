import 'package:flutter/material.dart';

class ButtonGoogle extends StatelessWidget {
  const ButtonGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 641,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/google.png',
            height: 20,
          ),
          const SizedBox(
            width: 5,
          ),
          const Text(
            'Sign Up with Google',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
