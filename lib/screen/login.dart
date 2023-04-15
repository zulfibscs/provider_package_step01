import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/auth_provider.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
 TextEditingController emailControler=TextEditingController();
 TextEditingController passControler=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailControler,
              decoration: InputDecoration(
                hintText: "Email"
              ),
            ),
          SizedBox(height: 20,),
          TextFormField(
              controller: passControler,
              decoration: InputDecoration(
                hintText: "Password"
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                provider.login(emailControler.text.toString(), passControler.text.toString());
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child:provider.loading ? CircularProgressIndicator(): Text('Login')),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
