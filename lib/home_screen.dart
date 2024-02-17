import 'package:flutter/material.dart';

import 'responsive_list.dart';
import 'user_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final isPortrait = orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Design'),
      ),
      drawer: isPortrait
          ? const Drawer(
              child: ResponsiveList(),
            )
          : null,
      body: Row(
        children: [
          if (!isPortrait)
            const Expanded(
              flex: 2,
              child: ResponsiveList(),
            ),
          const Expanded(
            child: Center(
              child: UserInfo(),
            ),
          ),
        ],
      ),
    );
  }
}
