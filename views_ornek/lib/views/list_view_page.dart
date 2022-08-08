import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView")),
      body: Scrollbar(
        controller: _controller,
        isAlwaysShown: true,
        thickness: 10,
        radius: Radius.circular(20),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView.builder(
              controller: _controller,
              itemCount: 50,
              itemBuilder: ((context, index) {
                return ListTile(
                  title: Text("$index. Item"),
                );
              })),
        ),
      ),
    );
  }
}
