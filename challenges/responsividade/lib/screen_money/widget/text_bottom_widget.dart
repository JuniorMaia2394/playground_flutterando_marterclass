import 'package:flutter/material.dart';

class TextBottomWidget extends StatelessWidget {
  const TextBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: 'Already have an account? ',
        children: [
          TextSpan(
            text: 'Sign In',
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
