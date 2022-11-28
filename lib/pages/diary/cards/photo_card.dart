import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CardItem {
  final String urlImage;
  final String title;
  final String subtitle;

  const CardItem({
    required this.urlImage,
    required this.title,
    required this.subtitle,
});
}

class PhotoCard extends StatelessWidget {
  PhotoCard({Key? key}) : super(key: key);

  List<CardItem> items = [
    CardItem(
      urlImage: '',
      title: '',
      subtitle: '',
    ),
    CardItem(
      urlImage: '',
      title: '',
      subtitle: '',
    ),
    CardItem(
      urlImage: '',
      title: '',
      subtitle: '',
    ),
    CardItem(
      urlImage: '',
      title: '',
      subtitle: '',
    ),
    CardItem(
      urlImage: '',
      title: '',
      subtitle: '',
    ),
    CardItem(
      urlImage: '',
      title: '',
      subtitle: '',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child: Container(
        width: (MediaQuery.of(context).size.width * 0.9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Add Photos to site diary',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 0.5,
              endIndent: 10,
              indent: 10,
              color: Colors.grey,
            ),
            Container(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                separatorBuilder: (context, _) => SizedBox(width: 5,),
                itemBuilder: (context, index) => photoThumbnail(item: items[index], ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 10.0,
                  backgroundColor: Colors.lightGreen,
                  textStyle:
                      const TextStyle(fontSize: 15, color: Colors.white)),
              child: SizedBox(
                  width: (MediaQuery.of(context).size.width * 0.75),
                  child: Center(child: Text('Add a Photo'))),
              onPressed: () {},
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8),
                  child: Text(
                    'Iclude in photo gallery',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: 25,
                    height: 25,
                    child: Checkbox(
                      activeColor: Colors.lightGreen,
                      checkColor: Colors.white,
                      value: true,
                      onChanged: (bool? value) {},
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
      shadowColor: Colors.black87,
    );
  }
}

Widget photoThumbnail({required CardItem item}) => Container(
  child: AspectRatio(
    aspectRatio: 4/3,
    // child: Image.network(
    //   item.urlImage,
    //   fit: BoxFit.cover,
    // ),
    child: Container(color: Colors.red,),
  ),
);