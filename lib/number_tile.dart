import 'package:flutter/material.dart';

class NumberTile extends StatelessWidget {
  const NumberTile(this.no, {super.key});

  final int no;

  @override
  Widget build(BuildContext context) {
    const colors = Colors.primaries;
    final color = colors[no % colors.length];

    return Card(
      margin: EdgeInsets.zero,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text(
            'Number $no',
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
