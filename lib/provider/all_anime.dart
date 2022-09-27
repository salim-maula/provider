import 'package:flutter/cupertino.dart';

import '../model/model.dart';

class Animes with ChangeNotifier{

  List<Anime> listAnime = [
  Anime(
    animeId: "boruto-naruto-next-generations",
    animeTitle: "Boruto: Naruto Next Generations",
    animeImg: "https://gogocdn.net/cover/boruto-naruto-next-generations.png",
    releasedDate: "2017",
  ),
  Anime(
    animeId: "hataraku-maou-sama-2nd-season",
    animeTitle: "Hataraku Maou-sama!!",
    animeImg: "https://gogocdn.net/cover/hataraku-maou-sama-2nd-season.png",
    releasedDate: "2022",
  ),
  Anime(
    animeId: "pokemon-2019",
    animeTitle: "Pokemon (2019)",
    animeImg: "https://gogocdn.net/cover/pokemon-2019.png",
    releasedDate: "2019",
  ),
  Anime(
    animeId: "kakkou-no-iinazuke",
    animeTitle: "Kakkou no Iinazuke",
    animeImg: "https://gogocdn.net/cover/kakkou-no-iinazuke.png",
    releasedDate: "2022",
  ),
  Anime(
    animeId: "overlord-iv",
    animeTitle: "Overlord IV",
    animeImg: "https://gogocdn.net/cover/overlord-iv.png",
    releasedDate: "2022",
  ),
  Anime(
    animeId: "detective-conan",
    animeTitle: "Detective Conan",
    animeImg: "https://gogocdn.net/cover/detective-conan.png",
    releasedDate: "1996",
  ),
];

}