import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lufthansa/nav_bar.dart';
import 'package:lufthansa/screen/sginup.dart';

import '../Backend_class/Auth_Manager.dart';
import '../Data_class/Account.dart';
import 'Home.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool vue = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor:Colors.white,
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: Image.asset(
                      'assets/images/login.png',
                    ).image,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.07),
              Container(
                margin: EdgeInsets.only(
                    right: size.width * 0.05, left: size.width * 0.05),
                child: TextFormField(
                    controller: emailController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    hintText: 'Your email...',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        //  color: FlutterFlowTheme.of(context).secondary,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    // fillColor: FlutterFlowTheme.of(context).secondary,
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      //  color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                  // style: FlutterFlowTheme.of(context).bodyMedium,
                  keyboardType: TextInputType.emailAddress,
                  // validator: _model.emailTextControllerValidator.asValidator(context),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                margin: EdgeInsets.only(
                    right: size.width * 0.05, left: size.width * 0.05),
                child: TextFormField(
                   controller: passwordController,
                  obscureText: vue,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Your Password...',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          //  color: FlutterFlowTheme.of(context).secondary,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      // fillColor: FlutterFlowTheme.of(context).secondary,
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        //  color: FlutterFlowTheme.of(context).primary,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            vue = !vue;
                          });
                        },
                        child: Icon(
                          vue
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: Colors.black,
                          size: 22,
                        ),
                      )),
                  // style: FlutterFlowTheme.of(context).bodyMedium,
                  keyboardType: TextInputType.emailAddress,

                  // validator: _model.emailTextControllerValidator.asValidator(context),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              GestureDetector(
                onTap: () async {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const Nav_bar()),
                  // );
      if ((emailController.text == '') &
      (passwordController.text == '')) {

      }else {
        Account().email = emailController.text;
        Account().password = passwordController.text;
        await Auth_Manager()
            .Sign_In_Email()
            .then((value) async {
          if (value == 1) {
            Navigator
                .of(context)
                .pushReplacement(new MaterialPageRoute(builder: (BuildContext context) => Nav_bar()));
          }
          });
      }
                },
                child: Container(
                  alignment: Alignment.center,
                  child: AutoSizeText(
                    "Login",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0,
                        color: Colors.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                  height: size.height*0.06,
                  width:size.width*0.38,
                  margin: EdgeInsets.only(bottom: 10, top: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFF4A8CFF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    "Don't have an account yet?",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0,
                        color: Colors.black
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Register()),
                        );
                      },
                      child: AutoSizeText(
                        "Register",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0,
                            color: Color(0xFF357EBF)
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],),
            ],),
           SizedBox(height: size.height * 0.02),
            Container(
              alignment: Alignment.bottomRight,
              width: MediaQuery.of(context).size.width,
              height: size.height*0.25,
              child: Image.asset(
                'assets/images/zina.png',
                width: 250,
                height: 250,
                fit: BoxFit.contain,
              ),
            ),
          ],
        )
          ,)

    );
  }
}
