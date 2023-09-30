import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text("John Clark", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          Text("johnclack@gmail.com", style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
