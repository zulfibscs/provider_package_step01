import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/favourit_provider.dart';
class MyFavouritItemScreen extends StatefulWidget {
  const MyFavouritItemScreen({Key? key}) : super(key: key);

  @override
  State<MyFavouritItemScreen> createState() => _MyFavouritItemScreenState();
}

class _MyFavouritItemScreenState extends State<MyFavouritItemScreen> {
  @override
  Widget build(BuildContext context) {
    final favioriteProvider = Provider.of<FavouriteItemProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourit Selected Screen'),

      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: favioriteProvider.selectedItem.length,
              itemBuilder: (context, index) {
                return Consumer<FavouriteItemProvider>(
                  builder: (context, value, child) {
                    return ListTile(
                      onTap: () {
                        if (value.selectedItem.contains(index)) {
                          value.removeItem(index);
                        }
                        else {
                          value.addItem(index);
                        }
                      },
                      title: Text('Item${index.toString()}'),
                      trailing: Icon(
                        value.selectedItem.contains(index)
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                      ),
                    );
                  },);

              },),
          )
        ],
      ),
    );
  }
}

