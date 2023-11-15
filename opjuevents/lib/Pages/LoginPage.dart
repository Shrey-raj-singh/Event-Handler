import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _showPasswordIcon = false;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [ Colors.teal,
                          // Colors.lightGreenAccent,
                          Color.fromARGB(255, 106, 241, 111),
                        ],
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(144, 255, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular(9)),
              ),
              margin: EdgeInsets.symmetric(vertical: 87, horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 38, vertical: 2),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 174,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 25, top: 45),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Text(
                            "Phone no.",
                            style: TextStyle(
                              fontSize: 13,
                              color: const Color.fromARGB(225, 36, 36, 36),
                              // color: Colors.grey,
                            ),
                          ),
                        ),
                        TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.phone,
                          maxLines: 1,
                          // maxLength: 35,
                          minLines: 1,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 32),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .grey), // Set the bottom border color
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .grey), // Set the bottom border color
                            ),
                            hintText: "Phone no.",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontFamily: 'Sans'),
                            prefixIcon: Icon(
                              Icons.person_2_outlined,
                              color: Colors.grey,
                              size: 18,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16, top: 23),
                          child: Text(
                            "Password",
                            style: TextStyle(
                              fontSize: 13,
                              color: const Color.fromARGB(225, 36, 36, 36),
                            ),
                          ),
                        ),
                        TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.emailAddress,
                          smartDashesType: SmartDashesType.enabled,
                          maxLines: 1,
                          // maxLength: 35,
                          minLines: 1,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 12),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .grey), // Set the bottom border color
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .grey), // Set the bottom border color
                            ),
                            hintText: "Type your password...",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.grey,
                              size: 18,
                            ),
                            suffixIcon: _showPasswordIcon
                                ? IconButton(
                                    icon: Icon(
                                      Icons.visibility,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      _obscureText = !_obscureText;
                                      _togglePasswordVisibility();
                                    },
                                  )
                                : IconButton(
                                    icon: Icon(Icons.visibility_off,
                                        color: Colors.grey),
                                    onPressed: () {
                                      _obscureText = !_obscureText;
                                      _togglePasswordVisibility();
                                    },
                                  ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 9, bottom: 6),
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12.1,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 23, bottom: 49),
                    width: MediaQuery.of(context).size.width - 60,
                    height: 39.4,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.teal,
                          // Colors.lightGreenAccent,
                          Color.fromARGB(255, 106, 241, 111),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                25.0), // Optional: Add border radius
                          ),
                        ),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.5,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  Text(
                    "Or Sign In Using",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 252,
                    margin: EdgeInsets.only(top: 25, bottom: 125),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 53, 72, 159),
                            radius: 20,
                            child: FaIcon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.white,
                              size: 19,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundColor: Colors.lightBlue,
                            radius: 20,
                            child: FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.white,
                              size: 19,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 199, 77, 40),
                            radius: 20,
                            child: FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.white,
                              size: 19,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Or Sign Up Using",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Color.fromARGB(255, 99, 99, 99),
                        fontSize: 11.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _togglePasswordVisibility() {
    setState(() {
      _showPasswordIcon = !_showPasswordIcon;
    });
  }
}
