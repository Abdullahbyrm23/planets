import 'package:flutter/material.dart';
import 'package:planets/data/gezegenler.dart';
import 'package:planets/screens/gezegen_detay_sayfasi.dart';
import 'package:planets/screens/splash_screen.dart'; // Yeni splash_screen dosyasını dahil ettik
import 'dart:developer' as developer; // print yerine loglama için

void main() {
  runApp(const GezegenlerUygulamasi());
}

class GezegenlerUygulamasi extends StatelessWidget {
  const GezegenlerUygulamasi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gezegenler Uygulaması',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat',
      ),
      home:
          const SplashScreen(), // Uygulamanın ilk açılış ekranını SplashScreen olarak değiştirdik
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Yörünge Şeması (Arka Plan)
          Positioned.fill(
            child: Image.asset('assets/images/yorunge.png', fit: BoxFit.cover),
          ),

          // Sabit Başlık
          Positioned(
            top: 20, // Başlık biraz daha yukarı alındı
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 103, 58, 183).withOpacity(
                    0.5,
                  ), // withOpacity yerine withValues() kullanıldı
                  borderRadius: BorderRadius.circular(
                    20,
                  ), // Köşeleri yuvarlatılmış
                ),
                child: const Text(
                  'Güneş Sistemi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
            ),
          ),

          // Güneş
          _buildGezegen(context, 'Güneş', x: 0.052, y: 0.438, size: 160),

          // Merkür
          _buildGezegen(context, 'Merkür', x: 0.25, y: 0.46, size: 90),

          // Venüs
          _buildGezegen(context, 'Venüs', x: 0.32, y: 0.38, size: 90),

          // Dünya
          _buildGezegen(context, 'Dünya', x: 0.428, y: 0.57, size: 100),

          // Ay (Dünya'ya yakın bir konuma yerleştirildi)
          _buildGezegen(context, 'Ay', x: 0.35, y: 0.61, size: 20),

          // Mars
          _buildGezegen(context, 'Mars', x: 0.55, y: 0.45, size: 90),

          // Jüpiter
          _buildGezegen(context, 'Jüpiter', x: 0.60, y: 0.29, size: 110),

          // Satürn
          _buildGezegen(context, 'Satürn', x: 0.54, y: 0.66, size: 110),

          // Uranüs
          _buildGezegen(context, 'Uranüs', x: 0.80, y: 0.48, size: 90),

          // Neptün
          _buildGezegen(context, 'Neptün', x: 0.82, y: 0.32, size: 80),

          // Plüton
          _buildGezegen(context, 'Plüton', x: 0.85, y: 0.65, size: 70),
        ],
      ),
    );
  }

  // Güvenli bir şekilde gezegen widget'ı oluşturan yardımcı metot
  Widget _buildGezegen(
    BuildContext context,
    String gezegenAdi, {
    required double x,
    required double y,
    double size = 50,
  }) {
    try {
      final gezegen = cisimler.firstWhere((c) => c.ad == gezegenAdi);
      final double screenWidth = MediaQuery.of(context).size.width;
      final double screenHeight = MediaQuery.of(context).size.height;

      return Positioned(
        left: screenWidth * x - size / 2,
        top: screenHeight * y - size / 2,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => GezegenDetaySayfasi(gezegen: gezegen),
              ),
            );
          },
          child: Image.asset(
            'assets/images/${gezegen.gorselAd}',
            width: size,
            fit: BoxFit.contain,
          ),
        ),
      );
    } catch (e) {
      // Konsola hata mesajı yerine logger kullanıldı
      developer.log(
        'Hata: "$gezegenAdi" adında bir gök cismi bulunamadı. Lütfen gezegenler.dart dosyasını kontrol edin.',
        name: 'AnaSayfa',
      );
      return Container(); // Hata durumunda boş bir container döndürür, uygulamanın çökmesini engeller.
    }
  }
}
