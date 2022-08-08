import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  GridViewPage({Key? key}) : super(key: key);

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("GridView")),
        body: Scrollbar(
          controller: _controller,
          //scrollbarın ekranda görünmesi için
          isAlwaysShown: true,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.builder(
                controller: _controller,
                //container sayısı:
                itemCount: 50,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    //yan yana döndüreceği container sayısı
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.blue,
                    child: Center(
                        child: Text("B$index",
                            style: TextStyle(color: Colors.white))),
                  );
                }),
          ),
        ));
  }
}
