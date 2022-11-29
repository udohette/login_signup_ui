import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final GlobalKey<FormState>_formKey = GlobalKey();
  late String email, password;
  late bool isPasswordVisible, isLoading;

  @override
  void initState() {
    isPasswordVisible = false;
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                behavior: HitTestBehavior.opaque,
                child: Padding(
                  padding: const EdgeInsets.only(top: 65.0),
                  child: Center(child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.arrow_back, color: Colors.white,),

                  ),),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 19, bottom: 24,
                  right: MediaQuery.of(context).size.width * .15,
                  left: MediaQuery.of(context).size.width *.15 ),
                child: Text('Welcome Back!', style: GoogleFonts.sourceCodePro(fontSize:MediaQuery.of(context).size.width * .089, fontWeight: FontWeight.w500),),
              ),
              Padding(padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * .15,
                  left: MediaQuery.of(context).size.width *.15 ),
                child: Container(
                  height: MediaQuery.of(context).size.height * .55,
                  width: MediaQuery.of(context).size.width ,
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(padding: EdgeInsets.only(top: 20),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 28),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 18),
                              child: Text('Sign In', style: GoogleFonts.sourceCodePro(color: Colors.white, fontSize: 26, fontWeight: FontWeight.w500),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, right: 6,left: 6),
                              child: TextFormField(
                                cursorColor: Colors.white,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: 'Enter your Email Address',
                                  hintStyle: TextStyle(color: Colors.white, letterSpacing: 1.5, fontWeight: FontWeight.w400),
                                  labelText: 'Email',
                                  labelStyle: TextStyle(color: Colors.white),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    email = value;
                                  });
                                },
                                validator: (value) {
                                  bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
                                  if (value!.isEmpty || value.length < 4 || !emailValid) {
                                    return "Please enter correct email";
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, right: 6,left: 6),
                              child: TextFormField(
                                obscureText: !isPasswordVisible,
                                cursorColor: Colors.white,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  suffixIcon: GestureDetector(onTap: () => setState(() {
                                    isPasswordVisible = !isPasswordVisible;
                                  }),
                                    child: Icon(!isPasswordVisible? Icons.visibility : Icons.visibility_off),
                                  ),
                                  hintText: 'Enter your Password',
                                  hintStyle: TextStyle(color: Colors.white, letterSpacing: 1.5, fontWeight: FontWeight.w400, fontSize: 16),
                                  labelText: 'password',
                                  labelStyle: TextStyle(color: Colors.white),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    password = value;
                                  });
                                },
                                validator: (value) {
                                  if (value!.isEmpty || value.length < 4) {
                                    return "Please enter correct password";
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12, right: 6),
                              child: GestureDetector(
                                onTap: () {

                                },
                                child: Container(child:
                                  Text("Frogot Password?", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14,),
                                  ),
                                  alignment: Alignment.centerRight,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('Checking Credentials');
                                setState(() {
                                  isLoading = true;
                                });
                              },
                              behavior: HitTestBehavior.opaque,
                              child: Padding(padding: EdgeInsets.only(top: 20),
                                child: Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                      boxShadow: [BoxShadow(color: Colors.grey)],
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: isLoading? SpinKitDoubleBounce(color: Colors.blue,) : Icon(Icons.arrow_forward, color: Colors.blue,)
                                ),
                              ),
                            )
                          ],),
                      ),
                    ),
                  ),
                ),
              )],
          ),
        )),),
    );
  }
}
