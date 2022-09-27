import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_without_state_management/model/model.dart';
import 'package:state_without_state_management/screens/detail_page.dart';


class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final animeData = Provider.of<Anime>(context, listen: false);

    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(DetailPage.routeName, arguments: animeData.animeId);
      },
      child: Card(
        color: Colors.amber,
        elevation: 4,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4), bottomLeft: Radius.circular(4)),
              child: Container(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  animeData.animeImg,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    animeData.animeTitle,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text(animeData.releasedDate),
                      Spacer(),
                      Consumer<Anime>(
                        builder: (context, animeData, child) => IconButton(
                          onPressed: () {
                            animeData.statusFav();
                          },
                          icon: (animeData.isVavorite)
                              ? Icon(
                                  Icons.favorite,
                                )
                              : Icon(
                                  Icons.favorite_border_outlined,
                                ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
