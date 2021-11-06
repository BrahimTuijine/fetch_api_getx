
import 'package:http/http.dart'as http;

import 'package:learn_api/app/modules/home/model/album_model.dart';

class AlbumRepo {
 static Future<List<Album>?> fetchAlbum() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/'));
    if (response.statusCode == 200) {
      return albumFromJson(response.body);
    } else {
      return null;
    }
  }
}