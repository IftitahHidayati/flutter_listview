import 'package:flutter/material.dart';

class TopNews extends StatelessWidget {
  const TopNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 12,
      ),
      color: Colors.purpleAccent,
      child: Column(
        children: [
          // Image.asset(
          //   'assets/images/ronaldo.jpeg',
          //   fit: BoxFit.cover,
          // ),
          Container(
              height: 240.0,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(0.0),
              child: Image.asset(
                'assets/images/ronaldo.jpeg',
                fit: BoxFit.fill,
              ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            color: Colors.white,
            child: const Center(
              child: Text(
                'Berita utama Cristiano Ronaldo',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            color: Colors.purple,
            width: MediaQuery.of(context).size.width,
            child: const Text("By Iftitah News"),
          ),
        ],
      ),
    );
  }
}