import 'dart:convert';

import 'package:get/get.dart';
import 'package:learn_api/app/modules/home/model/album_model.dart';
import 'package:learn_api/app/modules/home/service/service.dart';

class HomeController extends GetxController {
  var albumlist = <Album>[].obs;

  fetchAlbum() async {
    var result = await AlbumRepo.fetchAlbum();
    if (result != null) {
      albumlist.value = result;
    }
  }

  @override
  void onInit() async {
    await fetchAlbum();
    super.onInit();
  }
}
