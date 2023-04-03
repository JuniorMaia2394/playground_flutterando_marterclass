import 'package:flutter/material.dart';

class ButtonFacebook extends StatelessWidget {
  const ButtonFacebook({super.key});

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
          Text(
            'SIGN IN WITH FACEBOOK',
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
