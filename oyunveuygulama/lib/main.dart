import 'dart:math';

import 'package:flutter/material.dart';
import 'package:oyunveuygulama/login.dart';
import 'package:oyunveuygulama/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginPage(showRegisterPage: () {}),
    );
  }

  void showRegisterPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  RegisterPage()),
    );
  }
}

class NavDrawerDemo extends StatelessWidget {
  const NavDrawerDemo({Key? key});

  String _randomDate() {
    final random = Random();
    final now = DateTime.now();
    final randomDay = now.add(Duration(days: random.nextInt(30)));
    return "${randomDay.day}/${randomDay.month}/${randomDay.year}";
  }

  @override
  Widget build(BuildContext context) {
    // Kartların isimlerini ve fotoğraf yolunu içeren bir liste oluşturun
    List<Map<String, dynamic>> yaklasan_etkinlikler = [
      {
        'name': 'Bilim Fuarı',
        'photo': 'assets/bilim_fuarı.jpg',
        'description': 'Bilim Fuarı, öğrencilerin ve bilim meraklılarının projelerini sergilediği, çeşitli deney ve gösterilerin yapıldığı bir etkinliktir. Farklı bilim dallarından çalışmalarla dolu bu fuar, bilim dünyasını yakından tanımak için harika bir fırsat sunar.',
        'date': _randomDate(),
      },
      {
        'name': 'Spor Turnuvası',
        'photo': 'assets/spor_turnuvası.jpg',
        'description': 'Spor Turnuvası, çeşitli spor dallarında düzenlenen ve herkesin katılımına açık olan bir yarışmadır. Katılımcılar hem eğlenir hem de rekabet ederken, sağlıklı yaşamın önemini vurgulayan aktiviteler de yer alır.','date': _randomDate(),
      },
      {
        'name': 'Sanat Sergisi',
        'photo': 'assets/sanat_sergisi.jpg',
        'description': 'Sanat Sergisi, yerel sanatçıların eserlerini sergilediği, çeşitli sanat dallarından örneklerin bulunduğu bir etkinliktir. Resim, heykel, fotoğraf ve daha fazlasını içeren bu sergi, sanatseverler için ilham verici bir deneyim sunar.','date': _randomDate(),
      },
      {
        'name': 'Müzik Festivali',
        'photo': 'assets/muzik_festivali.jpg',
        'description': 'Müzik Festivali, farklı müzik türlerinden performansların sergilendiği, yerel ve ulusal müzisyenlerin sahne aldığı bir etkinliktir. Canlı müzik eşliğinde eğlenceli anlar yaşamak isteyen herkes için harika bir etkinliktir.','date': _randomDate(),
      },
    ];

    List<Map<String, dynamic>> duyurular = [
      {
        'name': 'Dijital Güvenlik Eğitimi',
        'photo': 'assets/dijital_guvenlik.jpg',
        'description': 'Dijital Güvenlik Eğitimi, internet kullanıcılarının güvenliğini artırmak için düzenlenen bir eğitim programıdır. Bu eğitimde, kişisel bilgilerin korunması, güvenli şifre oluşturma ve internet üzerinde karşılaşılabilecek tehditlere karşı alınabilecek önlemler hakkında bilgi verilecektir.','date': _randomDate(),
      },
      {
        'name': 'İnternet’te Güvenli Navigasyon',
        'photo': 'assets/internette_guvenli_navigasyon.jpg',
        'description': 'İnternet’te Güvenli Navigasyon, internet kullanıcılarının güvenli bir şekilde gezinmelerini sağlamak amacıyla düzenlenen bir seminerdir. Bu etkinlikte, güvenli web siteleri nasıl tanınır, kimlik avı saldırılarından nasıl korunulur gibi konular ele alınacaktır.','date': _randomDate(),
      },
      {
        'name': 'Liseliler İçin Dijital Güvenlik Atölyesi',
        'photo': 'assets/etkinlik_3.jpg',
        'description': 'Liseliler İçin Dijital Güvenlik Atölyesi, lise öğrencilerine yönelik olarak düzenlenen bir etkinliktir. Bu atölyede, gençlerin dijital dünyada güvenli bir şekilde nasıl hareket edebileceği, sosyal medyada dikkat etmeleri gereken noktalar ve dijital ayak izi konuları işlenecektir.','date': _randomDate(),
      },
      {
        'name': 'İnternet Güvenliği Eğitimi',
        'photo': 'assets/etkinlik_4.jpg',
        'description': 'İnternet Güvenliği Eğitimi, internet kullanıcılarının çevrimiçi güvenliklerini artırmak için hazırlanan bir eğitim programıdır. Bu eğitimde, antivirüs yazılımlarının kullanımı, güvenli alışveriş ve veri gizliliği konularında bilgiler verilecektir.','date': _randomDate(),
      },
    ];

    List<Map<String, dynamic>> sosyal = [
      {
        'name': 'Yeşil İstanbul',
        'photo': 'assets/yesil_istanbul.jpg',
        'description': 'Yeşil İstanbul etkinliği, doğayla iç içe bir gün geçirmek isteyenler için mükemmel bir fırsat sunar. Bu etkinlikte, doğal yaşamın tadını çıkarabilir, yeşil alanlarda yürüyüş yapabilir ve çevreye duyarlı aktivitelere katılabilirsiniz.','date': _randomDate(),
      },
      {
        'name': 'Yalnız Değilsin',
        'photo': 'assets/yalnız.jpg',
        'description': 'Yalnız Değilsin etkinliği, topluluğa duygusal ve sosyal destek sağlamayı amaçlar. Bu etkinlikte, katılımcılar bir araya gelir, deneyimlerini paylaşır ve birbirlerine destek olurlar.','date': _randomDate(),
      },
      {
        'name': 'Sosyalleş',
        'photo': 'assets/sosyalles.jpg',
        'description': 'Sosyalleş etkinliği, yeni insanlarla tanışmak ve sosyal becerileri geliştirmek için harika bir fırsattır. Bu etkinlikte, çeşitli etkinlikler ve aktiviteler aracılığıyla sosyal etkileşimi artırabilirsiniz.','date': _randomDate(),
      },
      {
        'name': 'İletişimde Kal',
        'photo': 'assets/iletişimde_kal.jpg',
        'description': 'İletişimde Kal etkinliği, etkili iletişim becerilerini öğrenmek ve geliştirmek isteyenlere yöneliktir. Bu etkinlikte, iletişim tekniklerini uygulamalı olarak öğrenebilir ve günlük yaşamınızda daha etkili iletişim kurabilirsiniz.','date': _randomDate(),
      },
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff1AC1DD),
        appBar: AppBar(
          title: const Text('Uygulama Adı'),
          backgroundColor: const Color(0xff964BEB),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Arama işlevini başlat
                showSearch(context: context, delegate: CustomSearchDelegate(duyurular + yaklasan_etkinlikler + sosyal));
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 6),
          child: ListView(
            children: [
              const SizedBox(height: 10),
              const Text('Duyurular', style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w500)),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: duyurular.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CardWidget(name: duyurular[index]['name'], photo: duyurular[index]['photo']);
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text('Yaklaşan Etkinlikler', style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w500)),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: yaklasan_etkinlikler.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CardWidget(name: yaklasan_etkinlikler[index]['name'], photo: yaklasan_etkinlikler[index]['photo']);
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text('Sosyal', style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w500)),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sosyal.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CardWidget(name: sosyal[index]['name'], photo: sosyal[index]['photo']);
                  },
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
        drawer: Drawer(
          backgroundColor: const Color(0xff1AC1DD),
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text('Team 71'),
                accountEmail: Text('team71@example.com'),
                currentAccountPicture: CircleAvatar(
                  child: FlutterLogo(size: 42.0),
                ),
              ),
              ListTile(
                title: const Text('Page One'),
                leading: const Icon(Icons.favorite),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Page Two'),
                leading: const Icon(Icons.comment),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String name;
  final String photo;

  const CardWidget({required this.name, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 150, // Kartın genişliğini sınırla
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                photo,
                fit: BoxFit.cover, // Fotoğrafı kartın boyutuna sığdır
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate<String> {
  final List<Map<String, dynamic>> data;

  CustomSearchDelegate(this.data);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, 'Bulunamadı');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final searchResults = data.where((item) => item['name'].toLowerCase().contains(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        final result = searchResults[index];
        return ListTile(
          title: Text(result['name']),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SelectedCardPage(
                  name: result['name'],
                  photo: result['photo'],
                  description:  result['description'],
                  date:  result['date'],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? []
        : data.where((item) => item['name'].toLowerCase().contains(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        final suggestion = suggestionList[index];
        return ListTile(
          title: Text(suggestion['name']),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SelectedCardPage(
                  name: suggestion['name'],
                  photo: suggestion['photo'],
                  description: suggestion['description'],
                  date: suggestion['date'],
                ),
              ),
            );
          },
        );
      },
    );
  }

}

class SelectedCardPage extends StatelessWidget {
  final String name;
  final String photo;
  final String description;
  final String date;

  SelectedCardPage({required this.name, required this.photo, required this.description, required this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Image.asset(
              photo,
              fit: BoxFit.contain, // Görüntünün sığabileceği en büyük boyuta kadar büyütür
            ),
            SizedBox(height: 20),
            Text(
              name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                description,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.calendar_today),
                SizedBox(width: 10),
                Text(date,style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
