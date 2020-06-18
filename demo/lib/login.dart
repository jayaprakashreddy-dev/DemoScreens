import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final GlobalKey<ScaffoldState> _scaffoldkey =new GlobalKey<ScaffoldState>();

   void callSnackBar(String me) { 
    final SnackBar =new prefix0.SnackBar(
      content: new Text(me),
      duration: new Duration(seconds:2),
    );
    _scaffoldkey.currentState.showSnackBar(SnackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:_scaffoldkey,
       backgroundColor: Colors.white,
      body:WillPopScope(
        
      onWillPop:()
      {
        print("going back from login screen");
        // callSnackBar("Exit");
        Navigator.pushNamed(context, "/landingpage");
      },
        child:
        Padding(
        padding: new EdgeInsets.only(left:25,right:25),
        child:ListView(
                  children: <Widget>[
                    SizedBox(
                  height: MediaQuery.of(context).size.height/45,
                ),
                SizedBox(
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width*1,
            child:
            Image(
              image: AssetImage('images/img.jpg'),
            ),
                ),
        SizedBox(
                  height: MediaQuery.of(context).size.height/65,
                ),
                 TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/45,
                ),
                 TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
               
                // SizedBox(
                //   height: MediaQuery.of(context).size.height/55,
                // ),
                 FlatButton(
              child: Text(
                'Forgot Password?',
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow),
              ),
              onPressed: () {
                callSnackBar("cliked for Forgot password");
              },
            ),
                 RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  color: Colors.yellow,
                  child: Text(
                    'Sign In',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: MediaQuery.of(context).size.width/15, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    callSnackBar("Authentication coming soon!!");
                  },
                ),SizedBox(
                  height: MediaQuery.of(context).size.height/65,
                ),
                
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    // Divider(
                    //   height: 2.0,
                    //   color: Colors.blue,
                    // ),
                   Center(
                     
                   child: Text(
                      '-------OR-------',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.bold),
                    ),
                   ),
                   
                     
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/55,
                ),
                Text(
                  'SIGN IN WITH',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize:  MediaQuery.of(context).size.width/20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/55,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/17,
                  child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      child: Image.asset('images/fb.png'),
                      onPressed: () {
                        callSnackBar("Clicked to login with FB");
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular( 40)),
                    ),
                    FlatButton(
                      child: Image.asset('images/insta.png'),
                      onPressed: () {
                        
                        callSnackBar("Clicked to login with Insta");
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular( 40)),
                    ),
                    FlatButton(
                      child: Image.asset('images/gplus.png'),
                      onPressed: () {
                        
                        callSnackBar("Clicked to login with Google");
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular( 40)),
                    )
                  ],
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Don\'t  have an account?',
                      style: TextStyle(
                          fontSize:  MediaQuery.of(context).size.width/25, fontWeight: FontWeight.bold),
                    ),
                    FlatButton(
                      child: Text(
                        'Sign  Up',
                        style: TextStyle(
                            fontSize:  MediaQuery.of(context).size.width/20,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/signup');
                      },
                    ),
                     
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/25,
                ),
                  ],
                ),
               

    )
    
    
    )
    );
  }
}
