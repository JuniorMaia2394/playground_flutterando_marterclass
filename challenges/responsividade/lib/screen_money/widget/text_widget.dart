import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({super.key});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Get your Money',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        Text(
          'Under Control',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Manage your expenses.',
          style: TextStyle(
            color: Colors.white38,
            fontSize: 20,
          ),
        ),
        Text('Seamlessly.',
            style: TextStyle(
              color: Colors.white38,
              fontSize: 20,
            ))
      ],
    );
  }
}
