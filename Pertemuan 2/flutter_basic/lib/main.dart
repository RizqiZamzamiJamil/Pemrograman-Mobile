import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Praktikum Minggu 2",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.yellow[700],
          ),
          body: Container(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Berita Terbaru",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Bursa Transfer",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image(
                              image: NetworkImage(
                                  'https://asset-2.tstatic.net/jateng/foto/bank/images/Cristiano-Ronaldo-afp-a.jpg')),
                          Positioned(
                            bottom: 10,
                            child: Column(children: [
                              Text(
                                "Cristiano Ronaldo",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text("Berhasil menjadi top skor Liga Arab Saudi",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700)),
                            ]),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        color: Colors.amber,
                        child: Text(
                            "Bursa transfer update: Hari Maguire gagal pindah? "),
                      ),
                      TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Cari Berita"))
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
