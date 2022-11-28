import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:xamfam/pages/diary/cards/existing_events_card.dart';
import 'package:xamfam/pages/diary/cards/photo_card.dart';
import 'package:xamfam/pages/diary/site_diary.dart';

import 'cards/card_spacing.dart';
import 'cards/comments_card.dart';
import 'cards/details_card.dart';
import 'location.dart';

class DiaryPage extends StatelessWidget {
  DiaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        leading: const Icon(Icons.close),
        title: const Text(
          'New Diary',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Location(),
            Stack(
              children: [
                SiteDiary(),
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Center(
                    child: Column(
                      children: [
                        PhotoCard(),
                        const CardSpacing(),
                        CommentsCard(),
                        const CardSpacing(),
                        DetailsCard(),
                        const CardSpacing(),
                        ExistingEventsCard(),
                        const CardSpacing(),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 10.0,
                              backgroundColor: Colors.lightGreen,
                              textStyle: const TextStyle(
                                  fontSize: 15, color: Colors.white)),
                          child: SizedBox(
                              width: (MediaQuery.of(context).size.width * 0.75),
                              child: Center(child: Text('Next'))),
                          onPressed: () {},
                        ),
                        const CardSpacing(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
