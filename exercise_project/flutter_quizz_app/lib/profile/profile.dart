import 'package:flutter/material.dart';
import 'package:flutter_quizz_app/services/auth.dart';
import 'package:flutter_quizz_app/services/models.dart';
import 'package:flutter_quizz_app/shared/loading.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var report = Provider.of<Report>(context);
    var user = AuthService().user;
    if (user != null) {
      return Scaffold(
          appBar: AppBar(
            title: Text('Profile'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(user.photoURL ??
                          'https://www.gravatar.com/avatar/placeholder'),
                    ),
                  ),
                ),
                Text(
                  user.email ?? '',
                  style: Theme.of(context).textTheme.headline6,
                ),
                const Spacer(),
                Text('${report.total}'),
                Text(
                  'Quizzes Completed',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                const Spacer(),
                ElevatedButton(
                  child: Text('signout'),
                  onPressed: () async {
                    await AuthService().signOut();
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/', (route) => false);
                  },
                ),
                const Spacer(),
              ],
            ),
          ));
    } else {
      return const Loader();
    }
  }
}
