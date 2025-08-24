// lib/data/gezegenler.dart

class GunesSistemiCismi {
  final String ad;
  final String tanim;
  final String gorselAd;

  const GunesSistemiCismi({
    required this.ad,
    required this.tanim,
    required this.gorselAd,
  });
}

const List<GunesSistemiCismi> cisimler = [
  GunesSistemiCismi(
    ad: 'Güneş',
    tanim:
        'Güneş, güneş sisteminin en uzak ve en büyük yıldızıdır. Dünyaya uzaklığı yaklaşık 150 milyon kilometre, çapı ise 1.392.000 kilometredir. Bu çap, Yeryüzünün 109 katı, Jüpiterin de 10 katı kadardır. Gezegenlerin tümü çok güçlü çekimi sayesinde Güneşin uydusu durumundadır.',
    gorselAd: 'gunes.png',
  ),
  GunesSistemiCismi(
    ad: 'Merkür',
    tanim:
        'Merkür, Güneş Sistemimizdeki en küçük ve Güneşe en yakın gezegendir. Dünyanın Ayından sadece biraz daha büyüktür. Merkürün yüzeyinden bakıldığında Güneş, Dünyadan bakıldığındakinin üç katından daha büyük görünür ve güneş ışığı yedi kata kadar daha parlak olur.',
    gorselAd: 'merkur.png',
  ),
  GunesSistemiCismi(
    ad: 'Venüs',
    tanim:
        'Venüs, Günee uzaklığı bakımından ikinci sıradaki gezegenimiz ve en yakın komşu gezegenimizdir. Güneş sistemimizdeki en sıcak gezegendir ve bazen Dünyanın ikizi olarak anılır..',
    gorselAd: 'venus.png',
  ),
  GunesSistemiCismi(
    ad: 'Dünya',
    tanim:
        'Dünya, Güneş Sistemindeki en büyük beşinci gezegen olmasına rağmen, yüzeyinde sıvı su bulunan tek gezegendir. Yakınındaki Venüsten biraz daha büyük olan Dünya, tamamı kaya ve metalden oluşan Güneşe en yakın dört gezegenin en büyüğüdür..',
    gorselAd: 'dunya.png',
  ),
  GunesSistemiCismi(
    ad: 'Ay',
    tanim:
        'Ay, Dünyanın tek doğal uydusu ve Güneş Sistemi içindeki beşinci büyük doğal uydudur. Dünya ile Ay arasında ortalama merkezden merkeze uzaklık 384.403 km, yani Dünyanın çapının yaklaşık otuz katı kadardır. Jeofiziksel açıdan Ay, gezegen kütleli gök cismi veya uydu gezegendir.',
    gorselAd: 'ay.png',
  ),
  GunesSistemiCismi(
    ad: 'Mars',
    tanim:
        'Mars, Güneş Sistemimizdeki en çok keşfedilen gök cisimlerinden biri ve uzaylı coğrafyasını keşfetmek için keşif araçları gönderdiğimiz tek gezegen. NASA misyonları, milyarlarca yıl önce Marsın çok daha nemli ve sıcak, atmosferinin ise daha kalın olduğuna dair birçok kanıt buldu.',
    gorselAd: 'mars.png',
  ),
  GunesSistemiCismi(
    ad: 'Jüpiter',
    tanim:
        'Jüpiter, aşırılıkların dünyasıdır. Güneş sistemimizdeki en büyük gezegendir; içi boş bir kabuk olsaydı, içine 1.000 Dünya sığardı. Aynı zamanda, 4,6 milyar yıl önce Güneşin oluşumundan kalan toz ve gazlardan oluşan en eski gezegendir. Ancak, kendi ekseni etrafında bir tur atması yaklaşık 9,9 saat sürdüğü için Güneş sistemindeki en kısa güne sahiptir.',
    gorselAd: 'jupiter.png',
  ),
  GunesSistemiCismi(
    ad: 'Satürn',
    tanim:
        'Tıpkı diğer gaz devi Jüpiter gibi, Satürn de çoğunlukla hidrojen ve helyumdan oluşan devasa bir küredir. Halkaları olan tek gezegen Satürn değildir , ancak hiçbiri Satürnünki kadar muhteşem veya karmaşık değildir. Satürnün ayrıca düzinelerce uydusu vardır.',
    gorselAd: 'saturn.png',
  ),
  GunesSistemiCismi(
    ad: 'Uranüs',
    tanim:
        'Uranüs, Güneşe uzaklık bakımından yedinci gezegendir ve Güneş Sistemindeki gezegenler arasında en büyük üçüncü çapa sahiptir. Uranüs yan dönüyormuş gibi görünür.',
    gorselAd: 'uranus.png',
  ),
  GunesSistemiCismi(
    ad: 'Neptün',
    tanim:
        'Karanlık, soğuk ve süpersonik rüzgarlarla sarsılan buz devi Neptün, Güneşe Dünyanın 30 katından daha uzaktır. Neptün, güneş sistemimizde çıplak gözle görülemeyen tek gezegendir. Neptün, 1846daki keşfinden bu yana ilk 165 yıllık yörüngesini 2011 yılında tamamladı.',
    gorselAd: 'neptun.png',
  ),
  GunesSistemiCismi(
    ad: 'Plüton',
    tanim:
        '1930 yılında keşfedilen Plüton, uzun süre Güneş Sistemimizin dokuzuncu gezegeni olarak kabul edildi. Ancak Kuiper Kuşağının derinliklerinde benzer dünyaların keşfedilmesinin ardından, 2006 yılında Uluslararası Astronomi Birliği tarafından cüce gezegen olarak yeniden sınıflandırıldı .',
    gorselAd: 'pluton.png',
  ),
];
