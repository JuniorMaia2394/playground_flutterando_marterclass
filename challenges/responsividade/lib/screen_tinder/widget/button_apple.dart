import 'package:flutter/material.dart';

class ButtonApple extends StatelessWidget {
  const ButtonApple({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.white,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(
          50,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(
            width: 10,
          ),
          // Image.asset(
          //   'assets/apple_logo.png',
          //   height: 20,
          // ),
          Text(
            'SIGN IN WITH APPLE',
            textAlign: TextAlign.end,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
