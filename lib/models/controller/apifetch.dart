import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wallpulse/models/photomodels.dart';

class ApiOperations {
  Future<List<Photomodel>> getTrendingWallpapers() async {
    List<Photomodel> trendingWallpapers = [];

    final response = await http.get(
      Uri.parse("https://api.pexels.com/v1/curated"),
      headers: {
        "Authorization":
            "yUPUT8WR8jV9KG0k9wAInxOnj4gUxTsIB9RQygbwyFN3tHp7zzZrbyzW"
      },
    );

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final photos = jsonData['photos'] as List;

      for (final photo in photos) {
        final src = photo['src'] as Map<String, dynamic>;
        trendingWallpapers.add(Photomodel.fromAPI2App(src));
      }
    } else {
      print("Error: ${response.statusCode}");
    }

    return trendingWallpapers;
  }
}
