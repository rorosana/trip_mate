import 'package:flutter/material.dart';

class HomeLists extends StatefulWidget {
  const HomeLists({Key? key}) : super(key: key);

  @override
  HomeListsState createState() => HomeListsState();
}

class HomeListsState extends State<HomeLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Lists'),
      ),
      body: const Center(
        child: Column(
          children: [
            ListTile(
              title: Text('List 1'),
              subtitle: Text('List 1 subtitle'),
            ),
            ListTile(
              title: Text('List 2'),
              subtitle: Text('List 2 subtitle'),
            ),
            ListTile(
              title: Text('List 3'),
              subtitle: Text('List 3 subtitle'),
            ),
          ],
        ),
      ),
    );
  }
}
