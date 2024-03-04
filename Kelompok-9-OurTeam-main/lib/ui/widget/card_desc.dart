
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kevin Sanjaya"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Kevin Sanjaya"),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Kembali ke Halaman Utama"),
          )
        ],
      ),
    );
  }
}
