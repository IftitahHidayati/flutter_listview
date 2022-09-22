import 'package:flutter/material.dart';
import 'komponen news/top_news.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final contents = [
    "Chelsea Kembali Incar Cristiano Ronaldo",
    "Tuchel Dipecat, Chelsea Kejar Cristiano Ronaldo Lagi?",
    "Gacor di Timnas Portugal, Cristiano Ronaldo Dapat Penghargaan",
    "Liga Internasional 13 jam lalu Portugal Main di Piala Dunia 2022, Ronaldo Masih Ingin Tampil di Euro",
  ];
  final images = [
    "card1.jpg",
    "card2.jpg",
    "card3.jpg",
    "card4.jpg",
  ];
  final dates = [
    "Barcelona Jul 18, 22",
    "London Des 20, 2022",
    "Madrid Jan 17, 2022",
    "Paris Feb 19, 2022",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soccer News',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            // title: const Text('MyApp'),
            bottom: const 
            TabBar(
              padding: EdgeInsets.all(1.0),
              tabs: [
                Tab(text: "BERITA TERBARU"),
                Tab(text: "PERTANDINGAN HARI INI",)
              ],
            ),
            title: const Text('MyApp'),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  const TopNews(),
                  Expanded(
                    child: ListView.builder(
                      itemCount: contents.length,
                      itemBuilder: (context, index) {
                        return News(index);
                      },
                    ),
                  ),
                ],
              ),
              const Center(
                child: Text("Halaman pertandingan"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container News(int index) {
    return Container(
      width: 50,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(1),
      color: Colors.blue,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/' + images[index].toString(),
                fit: BoxFit.contain,
                height: 110,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 10),
                  margin: const EdgeInsets.all(1),
                  color: Colors.white,
                  height: 110,
                  width: 210,
                  alignment: Alignment.centerLeft,
                  child: Text(contents[index]),
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            color: Colors.white,
            child: Text(
              dates[index],
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}