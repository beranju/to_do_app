import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../common_widget/task_item.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const <Widget>[
                HeaderHome(),
                SizedBox(height: 10.0,),
                HomeContent()
              ],
            ),
          )
        ),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TaskItem(),
      ],
    );
  }
}

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                "Today's Task",
              style: TextStyle(
                fontSize: 18
              ),
            ),
            const SizedBox(height: 4.0,),
            Text(DateFormat('EEEE, d MMM').format(DateTime.now()))
          ],
        ),

        ElevatedButton.icon(
            onPressed: (){},
            icon: const Icon(Icons.add),
            label: const Text("New Task"),
        )
      ],
    );
  }
}
