import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Location extends StatelessWidget {
  Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.location_on),
          Text(
            'helloworld',
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
