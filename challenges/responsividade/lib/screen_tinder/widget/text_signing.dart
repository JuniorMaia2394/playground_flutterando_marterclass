import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TextSigin extends StatelessWidget {
  const TextSigin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Trouble Signing In?',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
