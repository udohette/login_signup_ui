import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup_ui/signup_page.dart';
import 'package:login_signup_ui/slider_left_route.dart';
import 'package:login_signup_ui/slider_right_route.dart';

import 'login_page.dart';

class LoginSignUpPage extends StatefulWidget {
  const LoginSignUpPage({Key? key}) : super(key: key);

  @override
  State<LoginSignUpPage> createState() => _LoginSignUpPageState();
}

class _LoginSignUpPageState extends State<LoginSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 120, bottom: 22),
              child: Center(child: Text("Hello!", style:GoogleFonts.sourceCodePro(fontSize: 50))),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.push(context, SliderRightRoute(SignUpPage()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * .65,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20),
                      )
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(right: 22, top: 28),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(padding: EdgeInsets.only(bottom: 8),
                            child: Text('Sign Up', style: GoogleFonts.sourceCodePro(fontSize: 26, color: Colors.white, fontWeight: FontWeight.w500),)
                            ,),
                          Padding(
                            padding: const EdgeInsets.only(top: 8,bottom: 8.0),
                            child: Text('New Here?', style: GoogleFonts.sourceCodePro(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400),),
                          ),
                          Text("Don't worry just sign up  tp  gain access to  the amazing App", style: GoogleFonts.sourceCodePro(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
                            textAlign: TextAlign.right,)
                        ],
                      ),
                    ),
                  ),
                ),
                //Spacer(),
                SizedBox(width: MediaQuery.of(context).size.width / 10,),
                GestureDetector(behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.push(context, SliderLeftRoute(page:LoginPage()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * .55,
                    width: MediaQuery.of(context).size.width *0.45,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))
                    ),
                    child: Padding(padding: EdgeInsets.only(left: 22, right: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(bottom: 8),
                            child: Text("sign In",style: GoogleFonts.sourceCodePro(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 26),),
                          ),
                          Padding(padding: EdgeInsets.only(top: 8, bottom: 8.0),
                            child: Text("Returning?",style: GoogleFonts.sourceCodePro(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18),),
                          ),
                          Padding(padding: EdgeInsets.only(top: 8, right: 10.0),
                            child: Text("Just Sign in to resume what you were doing?",style: GoogleFonts.sourceCodePro(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18,),
                              textAlign: TextAlign.left,),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(right: 6),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        boxShadow: [BoxShadow(color: Colors.grey)],
                        shape: BoxShape.circle
                      ),
                      child: Center(child: FaIcon(FontAwesomeIcons.google, color: Colors.white,),),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 6),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          color: Colors.blue[700],
                          boxShadow: [BoxShadow(color: Colors.grey)],
                          shape: BoxShape.circle
                      ),
                      child: Center(child: FaIcon(FontAwesomeIcons.facebook, color: Colors.white,),),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 6),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          boxShadow: [BoxShadow(color: Colors.grey)],
                          shape: BoxShape.circle
                      ),
                      child: Center(child: FaIcon(FontAwesomeIcons.twitter, color: Colors.white,),),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),),
    );
  }
}

