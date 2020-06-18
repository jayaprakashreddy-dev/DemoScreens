import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'dart:io';
import 'login.dart';
import 'signUp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Welcome(),
      ),
      routes: <String, WidgetBuilder>{
        '/landingpage': (BuildContext context) => new Welcome(),
        '/signup': (BuildContext context) => new SignUp(),
        '/login': (BuildContext context) => new SignIn()
      },
    );
  }
}

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
   final GlobalKey<ScaffoldState> _scaffoldkey =new GlobalKey<ScaffoldState>();

   void callSnackBar(String me,[err])
  {
    if(err==1)
    { 
      
    final SnackBar =new prefix0.SnackBar(
      content: new Text(me),
      duration: new Duration(seconds: 5),
      action: new SnackBarAction(
        label: "Exit",onPressed: (){
          // Navigator.pushNamed(context,"HomeScreen");
          exit(0);
        },
      ),
      // backgroundColor: Colors.blue,
    );
    _scaffoldkey.currentState.showSnackBar(SnackBar);
  

    }
    final SnackBar =new prefix0.SnackBar(
      content: new Text(me),
      duration: new Duration(seconds: 5),
      // action: new SnackBarAction(
      //   label: "OK",onPressed: (){
      //     // Navigator.pushNamed(context,"HomeScreen");
      //     exit(0);
      //   },
      // ),
      // // backgroundColor: Colors.blue,
    );
    _scaffoldkey.currentState.showSnackBar(SnackBar);
  }

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:_scaffoldkey,

    
    body: WillPopScope(
        
      onWillPop:()
      {
        print("going back from Mainscreen");
        callSnackBar("Click exit to leave from App",1);
        // Navigator.pushNamed(context, "/landingpage");
      },
        child:
        Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height/2,
              // width: MediaQuery.of(context).size.width*0.8,
              child:  Image(
              image: AssetImage('images/welcome.jpg'),
            ),
            ),
           
            Text(
              'Welcome',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize:  MediaQuery.of(context).size.width/12, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Create an account and access thousand \n of cool stuffs',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize:  MediaQuery.of(context).size.width/25, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
            ),
            RaisedButton(
              color: Colors.yellow,
              elevation: 5.0,
              child: Text(
                'Getting Started',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize:  MediaQuery.of(context).size.width/15, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                callSnackBar("Going to signup screen");
                Navigator.of(context).pushNamed('/signup');
              },
            )
          ],
        ),
      ),
    )
    )
    );
  }
}
