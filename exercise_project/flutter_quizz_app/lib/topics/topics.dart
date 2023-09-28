import 'package:flutter/material.dart';
import 'package:flutter_quizz_app/services/firestore.dart';
import 'package:flutter_quizz_app/services/models.dart';
import 'package:flutter_quizz_app/shared/bottom_nav.dart';
import 'package:flutter_quizz_app/shared/error.dart';
import 'package:flutter_quizz_app/shared/loading.dart';
import 'package:flutter_quizz_app/topics/drawer.dart';
import 'package:flutter_quizz_app/topics/topic_item.dart';

class TopicsScreen extends StatelessWidget {
  const TopicsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Topic>>(
        future: FirestoreService().getTopics(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingScreen();
          } else if (snapshot.hasError) {
            return Center(
              child: ErrorMessage(message: snapshot.error.toString()),
            );
          } else if (snapshot.hasData) {
            var topics = snapshot.data!;
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.deepPurple,
                title: const Text('Topics'),
              ),
              drawer: TopicDrawer(topics: topics),
              body: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                children: topics.map((e) => TopicItem(topic: e)).toList(),
              ),
              bottomNavigationBar: const BottomNavBar(),
            );
          } else {
            return const Text('No topics found in firestore. Check database');
          }
        });
  }
}
