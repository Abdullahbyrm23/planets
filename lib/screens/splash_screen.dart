import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:planets/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _navigateToHomePage() {
    if (mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const AnaSayfa()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Arka plan rengi siyah
      body: GestureDetector(
        onTap:
            _navigateToHomePage, // Ekrana tıklandığında ana sayfaya geçiş yap
        child: Stack(
          children: [
            // Lottie Animasyonu Arka Planı
            Positioned.fill(
              child: Lottie.asset(
                'assets/animations/uzay.json',
                fit: BoxFit.cover,
              ),
            ),

            // Başlık
            Positioned(
              top: 40, // Başlık konumunu belirle
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
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

            // Yaş Metni
            const Positioned(
              top: 120, // Yaş metninin konumunu belirle
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  '4,568 milyar yıl',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            // İlginç Bilgi Metni
            Positioned(
              bottom: 450, // İlginç bilgi metninin konumunu belirle
              left: 20,
              right: 20,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    'Güneş Sistemi\'nde ağırlık farkı göz ardı edilerek karşılaştırıldığında en çok ısı üreten cisim Güneş değildir. Jüpiter\'in dev bir pizzayı andıran uydusu İo’dur.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
