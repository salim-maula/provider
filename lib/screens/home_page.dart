import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_without_state_management/model/model.dart';
import 'package:state_without_state_management/provider/all_anime.dart';

import '../widgets/list_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

  final animeData = Provider.of<Animes>(context).listAnime;

    return Scaffold(
      appBar: AppBar(
        title: Text("Anime List"),
      ),
      body: GridView.builder(
        itemCount: animeData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 350),
        itemBuilder: (context, index) {
          return ListItem(
            animeId: animeData[index].animeId,
            animeImg: animeData[index].animeImg,
            animeTitle: animeData[index].animeTitle,
            releasedDate: animeData[index].releasedDate,
          );
        },
      ),
    );
  }
}
