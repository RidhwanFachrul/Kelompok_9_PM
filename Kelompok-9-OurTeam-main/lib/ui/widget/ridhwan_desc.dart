
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Page3 extends StatelessWidget {
  final Uri _urlwa = Uri.parse("https://wa.me/+6281348358729");
  final Uri _urlemail = Uri(scheme: 'mailto',path: "ridhwan.22047@mhs.unesa.ac.id");
  final Uri _urlgithub = Uri.parse("https://github.com/RidhwanFachrul");
  Page3({super.key});

  Future<void> _launchUrl(url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        backgroundColor: Colors.white24,
        title: const Text("Ridhwan Fachrul Arief"),
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
            SizedBox(
              height: 260,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black12,
                        maximumSize: const Size(300, 200),
                        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                      ),
                      
                      onPressed: () {
                        _launchUrl(_urlwa);
                      },
                      child: const Row(
                        
                        children: [
                          Icon(FontAwesomeIcons.whatsapp,
                          color: Colors.white,
                          size: 30,
                          ),
                          SizedBox(width: 20,),
                          Text("Whatsapp", style: TextStyle(fontSize: 20,color: Colors.white))
                          
                        ],
                      ),
                      ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black12,
                        maximumSize: const Size(300, 200),
                        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                      ),
                      
                      onPressed: () {
                        _launchUrl(_urlemail);
                      },
                      child: const Row(
                        
                        children: [
                          Icon(FontAwesomeIcons.envelope,
                          color: Colors.white,
                          size: 30,
                          ),
                          SizedBox(width: 20,),
                          Text("Email", style: TextStyle(fontSize: 20,color: Colors.white))
                          
                        ],
                      ),
                      ),
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black12,
                        maximumSize: const Size(300, 200),
                        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                      ),
                      
                      onPressed: () {
                        _launchUrl(_urlgithub);
                      },
                      child: const Row(
                        
                        children: [
                          Icon(FontAwesomeIcons.idBadge,
                          color: Colors.white,
                          size: 30,
                          ),
                          SizedBox(width: 20,),
                          Text("Portofolio", style: TextStyle(fontSize: 20,color: Colors.white))
                          
                        ],
                      ),
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
                child: const Text("Kembali ke Halaman Utama",
                    style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
