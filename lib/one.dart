import 'package:fastingapp1/main.dart';
import 'package:flutter/material.dart';
import 'dart:async';




class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NextPage()),
          );
        },
        child: Container(
          color: Colors.blue,
          child: Center(
            child: Text('Tap here to go to the next page'),
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is the next page'),
      ),
    );
  }
}


class SignIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[400],
        title: Text('تسجيل الدخول', style: TextStyle(decoration: TextDecoration.none, color: Colors.white, fontSize: 18, fontFamily: 'Cairo')),),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/one.jpeg"),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: Center(
                  child: Text('الصيام المتقطع هو تجربة ناجحة لأجدادنا',
                      style: TextStyle(decoration: TextDecoration.none, color: Colors.greenAccent[400], fontSize: 18, fontFamily: 'Cairo')),
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
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset('images/circled.png'),
                            height: 30,
                            width: 30,),
                          SizedBox(width: 30,),
                          Text('تسجيل الدخول بواسطة جوجل',
                              style: TextStyle(decoration: TextDecoration.none, color: Colors.white, fontSize: 16, fontFamily: 'Cairo')),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                    },
                  ),
                ),
              ),
              SizedBox(height: 30,),
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
                      child: Text('تسجيل الدخول بواسطة الهاتف',
                          style: TextStyle(decoration: TextDecoration.none, color: Colors.white, fontSize: 18, fontFamily: 'Cairo')),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GoogleSignInButton()));
                    },
                  ),
                ),
              ),
              SizedBox(height: 30, width: 400,)

            ],
          ),
        ),
      ),
    );
  }
}


class UserProfileScreen extends StatelessWidget {
  void x;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mohammad AbuZubaid'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: NetworkImage('https://twitter.com/AbuZubaid/photo'),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Mohammad AbuZubaid',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Dr. Mohammad AbuZubaid',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 16.0),
                TextButton(onPressed: x = DateTime.now, child: Text("T")),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                9,
                    (index) => Container(
                  margin: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://picsum.photos/id/${index + 10}/200/300',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  void _submit() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[400],
        title: Text('تسجيل', style: TextStyle(decoration: TextDecoration.none, color: Colors.white, fontSize: 18, fontFamily: 'Cairo')),),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/one.jpeg"),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: Center(
                  child: Text('الصيام المتقطع هو تجربة ناجحة لأجدادنا',
                      style: TextStyle(decoration: TextDecoration.none, color: Colors.greenAccent[400], fontSize: 18, fontFamily: 'Cairo')),
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
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                          child: Image.asset('images/circled.png'),
                          height: 40,
                          width: 40,),
                          SizedBox(width: 30,),
                          Text('تسجيل بواسطة جوجل',
                              style: TextStyle(decoration: TextDecoration.none, color: Colors.white, fontSize: 18, fontFamily: 'Cairo')),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                    },
                  ),
                ),
              ),
              SizedBox(height: 30,),
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
                      child: Text('تسجيل بواسطة الهاتف',
                          style: TextStyle(decoration: TextDecoration.none, color: Colors.white, fontSize: 18, fontFamily: 'Cairo')),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Phone()));
                    },
                  ),
                ),
              ),
              SizedBox(height: 30, width: 400,)

            ],
          ),
        ),
      ),
    );
  }
}


class Phone extends StatefulWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[400],
        title: Text('تسجيل', style: TextStyle(decoration: TextDecoration.none, color: Colors.white, fontSize: 18, fontFamily: 'Cairo')),),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("images/one.jpeg"),
            ),
          ),
        ),
            Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'رقم الهاتف'),
                    validator: (input) {
                      if (input==null) {
                        return 'Please enter an email';
                      }
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'الرقم السري'),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Phone()));},
                    child: Text('تسجيل', style: TextStyle(decoration: TextDecoration.none, color: Colors.greenAccent[400], fontSize: 18, fontFamily: 'Cairo')),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Phonein extends StatefulWidget {
  const Phonein({Key? key}) : super(key: key);

  @override
  State<Phonein> createState() => _PhoneinState();
}

class _PhoneinState extends State<Phonein> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[400],
        title: Text('تسجيل الدخول', style: TextStyle(decoration: TextDecoration.none, color: Colors.white, fontSize: 18, fontFamily: 'Cairo')),),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/one.jpeg"),
                ),
              ),
            ),
            Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'رقم الهاتف'),
                    validator: (input) {
                      if (input==null) {
                        return 'Please enter an email';
                      }
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'الرقم السري'),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));},
                    child: Text('تسجيل الدخول', style: TextStyle(decoration: TextDecoration.none, color: Colors.greenAccent[400], fontSize: 18, fontFamily: 'Cairo')),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedHours = '8';
  String remainingTime = '';
  int totalTime = 0;
  bool isFasting = false;
  bool isCancelConfirmed = false;
  Timer? timer;

  void startTimer() {
    setState(() {
      isFasting = true;
    });

    totalTime = int.parse(selectedHours) * 60 * 60; // Convert hours to seconds
    remainingTime = formatTime(totalTime);

    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        if (totalTime <= 0) {
          t.cancel();
          isFasting = false;
        } else {
          totalTime--;
          remainingTime = formatTime(totalTime);
        }
      });
    });
  }

  void stopTimer() {
    if (totalTime > 0 && !isCancelConfirmed) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Cancel Fasting'),
            content: Text(
                'Are you sure you want to cancel the current fasting period?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
                    isCancelConfirmed = true;
                  });
                  resetTimer();
                },
                child: Text(
                  'نعم',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'لا',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          );
        },
      );
    }
  }

  void resetTimer() {
    setState(() {
      timer?.cancel();
      isFasting = false;
      isCancelConfirmed = false;
      remainingTime = '';
    });
  }

  String formatTime(int time) {
    int hours = time ~/ 3600;
    int minutes = (time % 3600) ~/ 60;
    int seconds = time % 60;
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[400],
        automaticallyImplyLeading: false, // Disable back navigation
        title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isFasting)
              Column(
                children: [
                  Text(
                    'أنت الآن صائم',
                    style: TextStyle(fontSize: 40),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'فترة الصوم سوف تنتهي بعد',
                    style: TextStyle(fontSize: 25, fontFamily: 'Cairo'),
                  ),
                  SizedBox(
                    width: 250, // Adjust the width to make the circle wider
                    height: 250, // Adjust the height to make the circle taller
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Transform.scale(
                          scale:
                          6, // Adjust the scale factor to make the circle larger
                          child: CircularProgressIndicator(
                            value: totalTime /
                                (int.parse(selectedHours) * 60 * 60),
                            strokeWidth: 2, // Adjust the strokeWidth if needed
                            backgroundColor: Colors.grey[300],
                            valueColor:
                            AlwaysStoppedAnimation<Color>(Colors.teal),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              remainingTime,
                              style: TextStyle(fontSize: 35),
                            ),
                            Text(
                              'ساعة',
                              style: TextStyle(fontSize: 30, fontFamily: 'Cairo'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: stopTimer,
                    child: Text(
                      'إلغاء',
                      style: TextStyle(fontSize: 30, fontFamily: 'Cairo'),
                    ),
                  ),
                ],
              ),
            if (!isFasting)
              Column(
                children: [
                  Text(
                    'قم باختيار عدد الساعات التي ترغب بصومها',
                    style: TextStyle(fontSize: 18, fontFamily: 'Cairo'),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'images/fasting.jpeg', // Replace with your image asset path
                    width: 200,
                    height: 200,
                  ),
                  DropdownButton<String>(
                    value: selectedHours,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedHours = newValue!;
                      });
                    },
                    items:
                    ['8', '12', '14', '16'].map<DropdownMenuItem<String>>(
                          (String value) {
                        return DropdownMenuItem<String>(
                            value: value,
                            child: Row(
                              children: [
                                Text(
                                  ' ساعة ',
                                  style: TextStyle(fontSize: 30, fontFamily: 'Cairo'),
                                ),
                                Text(
                                  '$value',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ],
                            ));
                      },
                    ).toList(),
                  ),
                  ElevatedButton(
                    onPressed: startTimer,
                    child: Text(
                      'ابدأ',
                      style: TextStyle(fontSize: 30, fontFamily: 'Cairo'),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (int index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
      ),
    );
  }
}