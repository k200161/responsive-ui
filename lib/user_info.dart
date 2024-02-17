import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 70,
          foregroundImage: AssetImage('assets/me.png'),
          child: Icon(Icons.person, size: 60),
        ),
        SizedBox(height: 20),
        Text('Saad Bin Khalid'),
        Text('20K-0161'),
      ],
    );
  }
}
