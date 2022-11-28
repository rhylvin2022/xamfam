import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DetailsCard extends StatelessWidget {
  DetailsCard({Key? key}) : super(key: key);

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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Details',
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
                  "Choose an item",
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
                  "Select Area",
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
                  "Task Category",
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
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: SizedBox(
                // color: Colors.grey,
                width: (MediaQuery.of(context).size.width * 0.85),
                height: 30,
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      hintText: 'Tags',
                      hintStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 15,
                      )),
                ),
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
