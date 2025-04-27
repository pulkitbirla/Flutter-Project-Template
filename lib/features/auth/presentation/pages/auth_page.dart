
import 'package:flutter/material.dart';

// import '../../domain/entities/user.dart';
// import 'home_page.dart';
// import 'login_or_registerPage.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Auth'),),
      // body: StreamBuilder<User?>(
      //   stream: FirebaseAuth.instance.authStateChanges(),
      //   builder: (context, snapshot) {
      //     // user logged in
      //     if(snapshot.hasData){
      //       return HomePage();
      //     }
      //     //user not logged in
      //     else{
      //       return LoginOrRegisterPage();
      //     }
      //   },
      // ),
    );
  }
}
