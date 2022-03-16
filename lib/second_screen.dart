import 'package:flutter/material.dart';
import 'package:untitled/app_store.dart';



class SecondScreen extends StatefulWidget {
  final int idx;
  const SecondScreen({Key? key, required this.idx}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    final AppStore = appList[widget.idx];
    var store;
    return Scaffold(
      appBar: AppBar(
        title: Text(store.name),
        actions: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 7.5),
            child: IconButton(
              icon: Icon(Icons.image),
              onPressed: () async {
                if (!await launch(store.imageUrls[0])) throw 'Could not launch ${store.imageUrls[0]}';
              },
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Padding(padding: EdgeInsets.all(15),
              child: Image.network(store.imageUrls[0],
                width: MediaQuery.of(context).size.width/2,),
              
            ),
          )
        ],
      ),
    );
  }

  launch(imageUrl) {}
}