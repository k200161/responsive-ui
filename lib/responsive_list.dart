import 'package:flutter/material.dart';

import 'number_tile.dart';

class ResponsiveList extends StatelessWidget {
  const ResponsiveList({super.key});

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final isPortrait = orientation == Orientation.portrait;

    return GridView.builder(
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isPortrait ? 1 : 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        mainAxisExtent: 100,
      ),
      itemCount: 20,
      itemBuilder: (_, i) => NumberTile(i + 1),
    );
  }
}
