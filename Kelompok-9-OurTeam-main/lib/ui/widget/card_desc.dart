import 'dart:math';

import 'package:flutter/material.dart';
import 'package:our_team_card/ui/widget/id_card.dart';
import 'package:our_team_card/ui/widget/id_desc.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kevin Sanjaya"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Kevin Sanjaya"),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Kembali ke Halaman Utama"),
          )
        ],
      ),
    );
  }
}
