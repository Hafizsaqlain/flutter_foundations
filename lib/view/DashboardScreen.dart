import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  var email;
  var password;
  DashboardScreen({required this.email,required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.logout
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.purple,
        title: Text("Dashboard Screen",style: Theme.of(context).textTheme.headlineLarge,),

      ),
      body: Center(
        child: Text("$email and $password",style: Theme.of(context).textTheme.displayLarge,),
      ),
    );
  }
}
