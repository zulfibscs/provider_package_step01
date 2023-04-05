import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/favourit_provider.dart';
import 'myfavourite.dart';
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
        title: const Text('Favourit Screen'),
        actions: [
          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MyFavouritItemScreen(),));
              },
              icon: const Icon(Icons.favorite,)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Consumer<FavouriteItemProvider>(
                  builder: (context, value, child) {
                  return ListTile(
                    onTap: (){
                      if(value.selectedItem.contains(index))
                      {
                        value.removeItem(index);

                    }
                      else{
                        value.addItem(index);
                      }
                    },
                    title: Text("Item${index.toString()}") ,
                    trailing: Icon(
                      value.selectedItem.contains(index) ?Icons.favorite : Icons.favorite_border_outlined,
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
