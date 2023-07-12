import 'package:flutter/material.dart';
import 'one.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.greenAccent[400],
      home: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: 380,
                height: 380,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/Appimage.jpeg"),
                  ),
                ),
              ),
              SizedBox(height: 60,),
              Container(
                child: Text('أسلوب حياة .. وليس حمية',
                    style: TextStyle(decoration: TextDecoration.none, color: Colors.greenAccent[400], fontSize: 18, fontFamily: 'Cairo')),
              ),
              SizedBox(height: 60,),
              Container(
                width: 270,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.greenAccent[400],
                    borderRadius: BorderRadius.circular(50)
                ),
                child: Builder(
                  builder: (context) => GestureDetector(
                    child: Center(
                      child: Text('تسجيل',
                          style: TextStyle(decoration: TextDecoration.none, color: Colors.white, fontSize: 18, fontFamily: 'Cairo')),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                    },
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 270,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.greenAccent[400],
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Builder(
                  builder: (context) => GestureDetector(
                    child: Center(
                      child: Text('لديك حساب بالفعل؟ سجل الدخول',
                          style: TextStyle(decoration: TextDecoration.none, color: Colors.white, fontSize: 18, fontFamily: 'Cairo')),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                    },
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class GoogleSignInButton extends StatefulWidget {
  @override
  _GoogleSignInButtonState createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends State<GoogleSignInButton> {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      if (account != null) {
        // User signed in
        // You can access the user's details via `account` object
        // For example: account.displayName, account.email, etc.
        print('User signed in: ${account.displayName}');
      }
    }, onError: (error) {
      print('Error signing in: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        _handleSignIn();
      },
      child: Text('Sign in with Google'),
    );
  }

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print('Error signing in: $error');
    }
  }
}
