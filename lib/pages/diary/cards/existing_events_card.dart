import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ExistingEventsCard extends StatelessWidget {
  ExistingEventsCard({Key? key}) : super(key: key);

  List<String> listTemp = <String>['One', 'Two', 'Three', 'Four'];

  @override
  Widget build(BuildContext context) {
    var dropDownValue = listTemp.first;
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Link to existing events?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey[600]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 25,
                      width: 25,
                      child: Checkbox(
                        activeColor: Colors.lightGreen,
                        checkColor: Colors.white,
                        value: true,
                        onChanged: (bool? value) {},
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 0.5,
              endIndent: 10,
              indent: 10,
              color: Colors.grey,
            ),
            SizedBox(
              width: (MediaQuery.of(context).size.width * 0.85),
              child: DropdownButton(
                items: listTemp.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                isExpanded: true,
                hint: Text(
                  "Select an event",
                  style: TextStyle(color: Colors.black38),
                ),
                // value: dropDownValue,
                icon: const Icon(Icons.keyboard_arrow_down),
                elevation: 16,
                style: const TextStyle(color: Colors.grey),
                underline: Container(
                  height: 1,
                  color: Colors.grey,
                ),
                onChanged: (String? value) {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      shadowColor: Colors.black87,
    );
  }
}
