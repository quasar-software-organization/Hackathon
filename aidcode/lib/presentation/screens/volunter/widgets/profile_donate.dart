import 'package:flutter/material.dart';

class ProfileDonate extends StatelessWidget {
  const ProfileDonate({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Divider(
            thickness: 4,
            color: Colors.blue.shade800,
          ),
          SizedBox(
            height: 100,
            child: Center(
              child: SizedBox(
                height: 50,
                width: 200,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  onPressed: () {},
                  color: Colors.orange,
                  child: const Text(
                    "Donate",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
