import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../Backend_class/FB_Auth.dart';
import 'change_name.dart';
import 'change_pass.dart';
import 'login.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      resizeToAvoidBottomInset: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: Image.asset(
                    'assets/images/profile.jpg',
                  ).image,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
          Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color(0x411D2429),
                    offset: Offset(0, 1),
                  ),
                ],),
              child:  InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Change_name()),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 20, 0, 20),
                        child: Text(
                          'Change Name',
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0,
                              color: Colors.black
                          ),
                          //  style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              )
              ,) ,

              Container(
              margin: EdgeInsets.only(left: 10,right: 10, top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color(0x411D2429),
                    offset: Offset(0, 1),
                  ),
                ],),
              child:  InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Change_password()),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 20, 0, 20),
                        child: Text(
                          'Change password',
                          style: TextStyle(
                            // fontFamily: 'Poppins',
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0,
                              color: Colors.black
                          ),
                          //  style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              )
              ,)

          ],),
          GestureDetector(
            onTap: (){
              FB_Auth().logout() ;
              Navigator
                  .of(context)
                  .pushReplacement(new MaterialPageRoute(builder: (BuildContext context) => Loginpage()));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color(0x411D2429),
                    offset: Offset(0, 1),
                  ),
                ],),
              alignment: Alignment.center,
              child: AutoSizeText(
                "Log Out",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0,
                    color: Colors.black
                ),
                textAlign: TextAlign.center,
              ),
              height: size.height*0.06,
              width:size.width*0.38,
              margin: EdgeInsets.only(bottom: size.height*0.1),

            ),
          ),

      ],),
    );
  }
}
