import 'package:flutter/material.dart';
import 'package:planets/data/gezegenler.dart';

class GezegenDetaySayfasi extends StatelessWidget {
  final GunesSistemiCismi gezegen;

  const GezegenDetaySayfasi({super.key, required this.gezegen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Gezegen görseli
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/${gezegen.gorselAd}',
              width: 300,
              height: 300,
            ),
          ),

          // Gezegen adı
          Positioned(
            top: 350,
            left: 0,
            right: 0,
            child: Text(
              gezegen.ad,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          // Detay metni (Kaydırılabilir hale getirildi)
          Positioned(
            top: 400,
            left: 20,
            right: 20,
            bottom: 20, // Alt taşkını önlemek için bir alt boşluk bırakıldı
            child: SingleChildScrollView(
              child: Text(
                gezegen.tanim,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
          ),

          // Geri butonu
          Positioned(
            top: 50,
            left: 20,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
