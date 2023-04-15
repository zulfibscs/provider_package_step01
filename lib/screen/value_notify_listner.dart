import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class NotifyListenerScreen extends StatelessWidget {
   NotifyListenerScreen({Key? key}) : super(key: key);

  // if you create provider State in Stateless widget
  ValueNotifier<int> _count=ValueNotifier(0);
   ValueNotifier<bool> toggle=ValueNotifier(false);


   @override
  Widget build(BuildContext context) {
     print('build');
    return Scaffold(
      appBar: AppBar(title: Text('Notify Listener'),),
      body: Column(
        children: [
          ValueListenableBuilder(valueListenable: toggle,
              builder: (context, value, child) {
                return TextFormField(
                  obscureText: toggle.value,
                  decoration: InputDecoration(
                      hintText: "Password",
                      suffix: InkWell(
                        onTap: (){
                          toggle.value=!toggle.value;
                        },
                        child: Icon(toggle.value ? Icons.visibility_off : Icons.visibility),
                      )
                  ),
                );
              },),
          Center(
            child: ValueListenableBuilder(
              valueListenable:_count,
              builder: (BuildContext context,value,child) {
                return Text(
                  _count.value.toString(),style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                );
              },
            ),
          ),
        ],
      ),
        floatingActionButton:FloatingActionButton(
        onPressed: (){
        int counter=_count.value++;
      },
      child: Icon(Icons.add),
      ),

    );
  }
}
