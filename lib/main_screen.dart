import 'package:flutter/material.dart';
import 'package:untitled/app_store.dart';
import 'package:untitled/second_screen.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.ac_unit_rounded),
          title: Text("IF Player"),

        ),
        body: ListView.builder(
            itemCount: appList.length,
            itemBuilder: (context, index) {
              final AppStore store = appList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SecondScreen(idx: index);
                  }));
                },
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Image.network(
                              store.imageUrls[0],
                              width: MediaQuery.of(context).size.width / 3,
                            ),
                          ],
                        ),
                      ),
                      Text(store.name),
                    ],
                  ),
                ),
              );
            }));
  }
}