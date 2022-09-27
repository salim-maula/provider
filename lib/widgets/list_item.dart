import 'package:flutter/material.dart';
import 'package:state_without_state_management/screens/detail_page.dart';

class ListItem extends StatefulWidget {
  final String animeId;
  final String animeTitle;
  final String animeImg;
  final String releasedDate;

  const ListItem({
    Key? key,
    required this.animeId,
    required this.animeTitle,
    required this.animeImg,
    required this.releasedDate,

  }) : super(key: key);

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(DetailPage.routeName, arguments: widget.animeId);
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
                  widget.animeImg,
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
                    widget.animeTitle,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text(widget.releasedDate),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.favorite_border,),)
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
