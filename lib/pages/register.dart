import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool passwordVisible = true;
  bool passwordConfirmVisible = true;

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    super.dispose();
  }

  void toggleVisibility() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  void toggleConfirmPasswordVisibility() {
    setState(() {
      passwordConfirmVisible = !passwordConfirmVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF9F8FE),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Color(0xFFF9F8FE),
              title: Text(
                "Create Account",
                style: TextStyle(color: Colors.black),
              ),
              floating: true,
              pinned: true,
              snap: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ];
        },
        body:  SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      userNameWidget(),
                      emailWidget(),
                      passwordWidget(),
                      confirmPasswordWidget(),
                      SizedBox(
                        height: 24,
                      ),
                    registerButtonWidget(),
                      SizedBox(
                        height: 32,
                      ),
                      Text(
                        "Sign up with",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Container(
                              width: 120,
                              height: 40,
                              padding: EdgeInsets.only(left: 16),
                              decoration: BoxDecoration(
                                color: Color(0xFFFEF2F2),
                                border: Border.all(
                                  color: Color(0xFFFEF2F2),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Image(
                                    width: 30,
                                    height: 30,
                                    image: AssetImage(
                                        'assets/images/google_icon.png'),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Google",
                                    style: TextStyle(color: Color(0xFFF3A19A)),
                                  )
                                ],
                              ),
                            ),
                            flex: 1,
                          ),
                          SizedBox(
                            width: 32.0,
                          ),
                          Flexible(
                            child: Container(
                              width: 120,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFD4D5F1),
                                border: Border.all(
                                  color: Color(0xFFD4D5F1),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              padding: EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  Image(
                                    width: 30,
                                    height: 30,
                                    image: AssetImage(
                                        'assets/images/facebook_icon.png'),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Facebook",
                                    style: TextStyle(color: Color(0xFF7D83C5)),
                                  )
                                ],
                              ),
                            ),
                            flex: 1,
                          ),
                        ],
                      )

                    ],

                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 64),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      InkWell(
                        onTap: () => {
                          Navigator.of(context).pop(),
                        },
                        child: Text(
                          "SIGNIN",
                          style: TextStyle(
                            color: Color(0xFF4F37B3),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),

      ),
    );
  }

  Widget userNameWidget() {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200].withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          border: InputBorder.none,
          hintText: 'Username',
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
  Widget emailWidget() {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200].withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          border: InputBorder.none,
          hintText: 'Email',
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }

  Widget passwordWidget() {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200].withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        obscureText: passwordVisible,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          border: InputBorder.none,
          hintText: 'Password',
          hintStyle: TextStyle(color: Colors.grey),
          suffixIcon: IconButton(
            onPressed: toggleVisibility,
            icon: passwordVisible
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
          ),
        ),
      ),
    );
  }

  Widget confirmPasswordWidget() {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200].withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        obscureText: passwordConfirmVisible,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          border: InputBorder.none,
          hintText: 'Confirm Password',
          hintStyle: TextStyle(color: Colors.grey),
          suffixIcon: IconButton(
            onPressed: toggleConfirmPasswordVisibility,
            icon: passwordConfirmVisible
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
          ),
        ),
      ),
    );
  }

  Widget registerButtonWidget() {
    return Container(
      height: 48,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFEDEBF9),
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),

      ),
      child: Material(
        color: Color(0xFFEDEBF9),
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
        child: InkWell(
          onTap: () => {},
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          child: Center(
            child: Text(
              "Register",
              style: TextStyle(
                  color: Color(0xFF4F37B3),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
