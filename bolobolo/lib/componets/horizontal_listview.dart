import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/chats.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white,
      height: 110,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new InkWell(
            onLongPress: () => Navigator.of(context)
                .push(new MaterialPageRoute(builder: (context) => Crops())),
            child: Categories(
              image_location: 'images/recomended.jpg',
              image_caption: 'Recomended',
            ),
          ),
          new InkWell(
              onTap: () {},
              child: Categories(
                image_location: 'images/popular.jpg',
                image_caption: 'Popular',
              )),
          new InkWell(
              onTap: () {},
              child: Categories(
                image_location: 'images/allproduct.jpg',
                image_caption: 'All Products',
              )),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Categories({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: new InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 80,
              height: 60,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            ),
          ),
        ),
      ),
    );
  }
}
