import 'package:flutter/material.dart';
import 'package:http_request/models/movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;
  final String imgPath = 'https://image.tmdb.org/t/p/w500/';

  MovieDetail({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    String path;
    if (movie.posterPath != null) {
      path = imgPath + movie.posterPath!;
    } else {
      path =
          'https://drive.google.com/file/d/1X8jbLV4OlCTXfhZ5x6PXsDaDuK196BL2/view?usp=drive_link';
    }

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title!),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              height: height / 1.5,
              child: Image.network(path!),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      movie.title!,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Divider(color: Colors.black),
                    Text(
                      'Release Date ' + movie.releaseDate!.substring(0, 4),
                      style: TextStyle(fontSize: 20),
                    ),
                    Divider(color: Colors.black),
                    Text(
                      movie.overview!,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
