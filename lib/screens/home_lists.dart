import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeLists extends StatefulWidget {
  const HomeLists({super.key});

  @override
  HomeListsState createState() => HomeListsState();
}

class HomeListsState extends State<HomeLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Home Lists'),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                context.go('/login');
              })),
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
