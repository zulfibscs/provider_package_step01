import 'package:flutter/material.dart';
class FavouritScreen extends StatefulWidget {
  const FavouritScreen({Key? key}) : super(key: key);

  @override
  State<FavouritScreen> createState() => _FavouritScreenState();
}

class _FavouritScreenState extends State<FavouritScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourit Screen'),
      ),
      body: Column(
        children: [
          Text('helo'),
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Item"+index.toString()) ,
                );
            },),
          )
        ],
      ),
    );
  }
}
