import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CommentsCard extends StatelessWidget {
  CommentsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Card(
        elevation: 10.0,
        child: Container(
          width: (MediaQuery.of(context).size.width * 0.9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                const EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Comments',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600]),
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
                // color: Colors.grey,
                width: (MediaQuery.of(context).size.width *
                    0.85),
                height: 30,
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      hintText: 'Comments',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        shadowColor: Colors.black87,
      );
  }
}
