import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
class Change_name extends StatefulWidget {
  const Change_name({Key? key}) : super(key: key);

  @override
  State<Change_name> createState() => _Change_nameState();
}

class _Change_nameState extends State<Change_name> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
        backgroundColor:Colors.white,
        resizeToAvoidBottomInset: true,
        body:SingleChildScrollView(child:  Column(
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
                        'assets/images/change_name.jpg',
                      ).image,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.15),
                Container(
                  margin: EdgeInsets.only(
                      right: size.width * 0.05, left: size.width * 0.05),
                  child: TextFormField(
                    //  controller: _model.emailTextController,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      hintText: 'Your Name...',
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
                        Icons.person,
                        //  color: FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                    // style: FlutterFlowTheme.of(context).bodyMedium,
                    keyboardType: TextInputType.emailAddress,
                    // validator: _model.emailTextControllerValidator.asValidator(context),
                  ),
                ),
                SizedBox(height: size.height * 0.07),
                GestureDetector(
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const Nav_bar()),
                    // );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      "Save change",
                      style: TextStyle(
                         // fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0,
                          color: Colors.white
                      ),
                      textAlign: TextAlign.center,
                    ),
                    height: size.height*0.06,
                    width:size.width*0.5,
                    margin: EdgeInsets.only(bottom: 10, top: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFF4A8CFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],),
             SizedBox(height: size.height * 0.1),

          ],
        )
          ,)
    );
  }
}
