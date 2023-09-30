import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post_model.dart';

class PostPresenter {
  Future<Post> fetchPost(String urlString) async {
    final response = await http.get(Uri.parse(urlString));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return Post.fromJson(data);
    } else {
      throw Exception('Failed to load post');
    }
  }
}