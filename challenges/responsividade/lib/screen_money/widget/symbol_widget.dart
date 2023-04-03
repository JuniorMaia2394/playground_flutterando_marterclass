import 'package:flutter/material.dart';

class SymbolWidget extends StatelessWidget {
  const SymbolWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      width: 140,
      height: 140,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Container(
                width: 65,
                height: 65,
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(90),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 7,
          ),
          Container(
            width: 65,
            decoration: const BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(
                  100,
                ),
                bottomLeft: Radius.circular(
                  100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
