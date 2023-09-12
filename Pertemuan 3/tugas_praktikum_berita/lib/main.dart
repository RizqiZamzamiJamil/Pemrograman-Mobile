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
              "Football Sport",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.amber,
          ),
          body: SingleChildScrollView(
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
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 0, 0, 0),
                                  onPrimary: Colors.amber,
                                ),
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
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 0, 0, 0),
                                  onPrimary: Colors.amber,
                                ),
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
                                  'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1fXl6b.img?w=1920&h=1080&q=60&m=2&f=jpg')),
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
                              Text("Berhasil hattrick untuk yang ke-63 kalinya",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700)),
                            ]),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.symmetric(
                          horizontal: 30.0,
                          vertical: 10.0,
                        ),
                        color: Colors.amber,
                        child: Text(
                            "Bursa transfer update: Hari Maguire gagal pindah? "),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Cari Berita",
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.clear),
                              onPressed: () {},
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 16.0),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 12.0,
                        ),
                        child: Row(
                          children: [
                            Image(
                              image: NetworkImage(
                                'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1gx4kS.img?w=750&h=500&m=6&x=120&y=120&s=280&d=280',
                              ),
                              width: 150,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 16.0),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shin Tae-yong Pasrah, Jepang Terlalu Kuat',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    'Jepang yang merupakan calon lawan Timnas Indonesia di Piala Asia 2023 baru-baru ini kembali menggemparkan jagad sepak bola dunia.',
                                    style: TextStyle(fontSize: 14.0),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    'Senin, 11 Sep 2023',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 5.0,
                                horizontal: 12.0,
                              ),
                              child: Row(
                                children: [
                                  Image(
                                    image: NetworkImage(
                                      'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1gxByy.img?w=700&h=393&m=6&x=637&y=124&s=44&d=44',
                                    ),
                                    width: 150,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 16.0),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Inter Miami Menang Tanpa Messi,Berjuang Playoff',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 8.0),
                                        Text(
                                          'Klub Lionel Messi, Inter Miami masih terbenam di dasar klasemen Liga MLS. Kompetisi telah memasuki pekan-pekan krusial regular season.',
                                          style: TextStyle(fontSize: 14.0),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                        ),
                                        SizedBox(height: 8.0),
                                        Text(
                                          'Senin, 11 Sep 2023',
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 5.0,
                                horizontal: 12.0,
                              ),
                              child: Row(
                                children: [
                                  Image(
                                    image: NetworkImage(
                                      'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1fRjgX.img?w=750&h=500&m=6&x=120&y=120&s=280&d=280',
                                    ),
                                    width: 150,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 16.0),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Harry Kane Sebut Tottenham Klub Medioker',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 8.0),
                                        Text(
                                          'Penyerang anyar Bayern Muenchen, Harry Kane, secara tidak langsung menyebut Tottenham Hotspur hanyalah klub kecil karena di sana tak ada tuntutan besar untuk menang seperti di FC Hollywood.',
                                          style: TextStyle(fontSize: 14.0),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                        ),
                                        SizedBox(height: 8.0),
                                        Text(
                                          'Senin, 11 Sep 2023',
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
