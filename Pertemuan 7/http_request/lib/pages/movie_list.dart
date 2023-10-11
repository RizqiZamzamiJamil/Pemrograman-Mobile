import 'package:flutter/material.dart';
import 'package:http_request/pages/movie_detail.dart';
import 'package:http_request/service/http_service.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  int movieCount = 0;
  List movies = [];
  String result = '';
  HttpService? service;

  Future initialize() async {
    movies = [];
    movies = (await service?.getPopularMovies()) as List;
    setState(() {
      movieCount = movies.length;
      movies = movies;
    });
  }

  @override
  void initState() {
    service = HttpService();
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popular Movies"),
      ),
      body: ListView.builder(
          itemCount: (this.movieCount == null) ? 0 : this.movieCount,
          itemBuilder: (context, int position) {
            return Card(
              color: Colors.white,
              elevation: 2.0,
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(movies[position].posterPath),
                ), // tambahkan baris ini
                title: Text(movies[position].title),
                subtitle: Text('Rating : ' +
                    movies[position].voteAverage.toString() +
                    ', Release Date : ' +
                    movies[position].releaseDate.substring(0, 4)),
                onTap: () {
                  MaterialPageRoute route = MaterialPageRoute(
                      builder: (_) => MovieDetail(movie: movies[position]));
                  Navigator.push(context, route);
                },
              ),
            );
          }),
    );
  }
}
