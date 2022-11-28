import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SiteDiary extends StatelessWidget {
  SiteDiary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Container(
            child: Text(
              'Add to site diary',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        MaterialButton(
          height: 20,
          minWidth: 20,
          onPressed: () {},
          elevation: 1.0,
          color: Colors.black,
          child: Icon(
            Icons.question_mark_sharp,
            color: Colors.white,
            size: 15,
          ),
          shape: CircleBorder(),
        )
      ],
    );
  }
}
