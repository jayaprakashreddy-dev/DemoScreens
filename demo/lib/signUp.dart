import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart'as prefix0;
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
    return 
    Scaffold(
        key: _scaffoldkey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/landingpage');
            },
          ),
        ),
        backgroundColor: Colors.white,
      body:WillPopScope(
        
      onWillPop:()
      {
        print("going back from signup");
        // callSnackBar("Exit");
        Navigator.pushNamed(context, "/landingpage");
      },
        child:Padding(
        padding: new EdgeInsets.only(left:20,right:20),
        child:ListView(
                  children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height/45,
                ),
                Text(
                  'Create New Account',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/45,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Full Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/45,
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
                SizedBox(
                  height: MediaQuery.of(context).size.height/45,
                ),
                 TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/55,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'By signing up you accept the',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.bold),
                    ),
                    FlatButton(
                      child: Text(
                        'Terms of Service and \n Privacy Policy',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width/28,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow),
                      ),
                      onPressed: () {
                        callSnackBar("Clicked for TNC & PP");
                      },
                    ),
                  ],
                ),
                // Row(
                //   children: <Widget>[
                //     Text(
                //       'and',
                //       style: TextStyle(
                //           fontSize: MediaQuery.of(context).size.width/25, fontWeight: FontWeight.bold),
                //     ),
                //     FlatButton(
                //       child: Text(
                //         'Privacy Policy',
                //         style: TextStyle(
                //             fontSize: 18.0,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.yellow),
                //       ),
                //       onPressed: () {},
                //     ),
                //   ],
                // ),
                 RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  color: Colors.yellow,
                  child: Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: MediaQuery.of(context).size.width/15, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    callSnackBar("SignUp page will be updated");
                  },
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
                Text(
                  'SIGN UP WITH',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize:  MediaQuery.of(context).size.width/20, fontWeight: FontWeight.bold),
                ),
                 SizedBox(
                  height: MediaQuery.of(context).size.height/65,
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
                        callSnackBar("Clicked to Sign Up with FB");
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular( 40)),
                    ),
                    FlatButton(
                      child: Image.asset('images/insta.png'),
                      onPressed: () {
                        
                        callSnackBar("Clicked to Sign Up with Insta");
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular( 40)),
                    ),
                    FlatButton(
                      child: Image.asset('images/gplus.png'),
                      onPressed: () {
                        
                        callSnackBar("Clicked to Sign Up with Goolge");
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
                      'Already have an account?',
                      style: TextStyle(
                          fontSize:  MediaQuery.of(context).size.width/25, fontWeight: FontWeight.bold),
                    ),
                    FlatButton(
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            fontSize:  MediaQuery.of(context).size.width/20,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/login');
                      },
                    )
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
