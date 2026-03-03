import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey = '42ec9422ffc22e7913c9febed78ac8fb';

  Future<List<Map<String, dynamic>>> getAllMovies() async {
    final response = await http.get(
      Uri.parse("$baseUrl/movie/now_playing?api_key=$apiKey"),
    );
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['results']);
  }

  // getTrendingMovies
  Future<List<Map<String, dynamic>>> getTrendingMovies() async {
    final response = await http.get(
      Uri.parse("$baseUrl//trending/movie/week=$apiKey"),
    );
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['results']);
  }
  
  // getPopularMovies
   Future<List<Map<String, dynamic>>> getMoviespopular() async {
    final response = await http.get(
      Uri.parse("$baseUrl/movie/popular$apiKey"),
    );
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['results']);
  }
}
