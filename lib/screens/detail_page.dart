import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_without_state_management/provider/all_anime.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  static const routeName = '/detail-page';

  @override
  Widget build(BuildContext context) {
    final animeId = ModalRoute.of(context)?.settings.arguments as String;

    final animeData = Provider.of<Animes>(context).listAnime.firstWhere(
          (anime_id) => anime_id.animeId == animeId,
        );

    return Scaffold(
      appBar: AppBar(title: Text('Detail')),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Image.network(animeData.animeImg),
            ),
            Text("${animeData.animeTitle}"),
            Text("${animeData.releasedDate}"),
          ],
        ),
      ),
    );
  }
}
