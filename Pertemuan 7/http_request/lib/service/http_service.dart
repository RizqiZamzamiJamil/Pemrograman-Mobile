import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http_request/models/movie.dart';

class HttpService {
  final String apiKey = "a68c57042fb292052a220e1547ad0fd1";
  final String baseURL = "https://api.themoviedb.org/3/movie/popular?api_key=";

  Future<List> getPopularMovies() async {
    final String uri = baseURL + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("Sukses");
      final jsonResponse = jsonDecode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map((i) => Movie.fromJson(i)).toList();
      return movies;
    } else {
      print("Fail");
      List movie = [];
      return movie;
    }
  }
}
