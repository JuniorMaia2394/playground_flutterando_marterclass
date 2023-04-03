import 'package:flutter/material.dart';

class TextTerms extends StatelessWidget {
  const TextTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        text: 'By tapping Create Account or Sign In, you agree to our\n',
        style: TextStyle(
          color: Colors.white,
        ),
        children: [
          TextSpan(
            text: 'Terms.',
            style: TextStyle(
                color: Colors.white, decoration: TextDecoration.underline),
          ),
          TextSpan(text: ' Learn how we process your data in our '),
          TextSpan(
            text: 'Privacy',
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: '\nPolicy',
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: ' and ',
          ),
          TextSpan(
            text: 'Cookies Policy.',
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
