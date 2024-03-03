import 'dart:math';

import 'package:flutter/material.dart';
import 'package:our_team_card/ui/widget/id_card.dart';
import 'package:our_team_card/ui/widget/id_desc.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        backgroundColor: Colors.white24,
        title: Text("Ridhwan Fachrul Arief"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/ridhwan.jpg'),
            ),
            const Column(
              children: [
                Text(
                  "Ridhwan Fachrul Arief",
                  style: TextStyle(
                      fontSize: 20, fontFamily: 'Poppins', color: Colors.white),
                ),
                Text(
                  "22091397047",
                  style: TextStyle(
                      fontSize: 14, fontFamily: 'Poppins', color: Colors.white),
                ),
                Text(
                  "PEBISNIS",
                  style: TextStyle(
                      fontSize: 14, fontFamily: 'Poppins', color: Colors.white),
                ),
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black12,
                  maximumSize: Size(300, 200)
                ),
                
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Image.asset("assets/icon/whatsapp.png",
                    scale: 18,
                    ),
                  ],
                ),
                ),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black12,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Kembali ke Halaman Utama",
                    style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
