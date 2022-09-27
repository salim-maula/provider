//https://gogoanime.herokuapp.com/popular

import 'package:flutter/cupertino.dart';

class Anime with ChangeNotifier {
  final String animeId;
  final String animeTitle;
  final String animeImg;
  final String releasedDate;
  bool isVavorite;

  Anime(
      {required this.animeId,
      required this.animeTitle,
      required this.animeImg,
      required this.releasedDate,
      this.isVavorite = false});

      void statusFav(){
        isVavorite = !isVavorite;
        notifyListeners();
      }
}


