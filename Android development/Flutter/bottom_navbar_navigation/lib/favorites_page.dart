
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<FavoritePage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Favorite Page'),
      ),
      body: ListView.builder(
        itemCount: 500,
        itemBuilder: (context, index){
          return Card(
            color: index % 2 ==0 ? Colors.lightBlueAccent : null,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Title of Blog ${index + 1 }',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: index % 2 ==0 ? Colors.white : null),
                  ),
                  SizedBox(height: 10,),
                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
