import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final String icon;
  void Function()? onTap;

  ButtonWidget({
    required this.text,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(
                icon,
                height: 20,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    text,
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
