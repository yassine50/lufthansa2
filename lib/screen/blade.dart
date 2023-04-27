import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../Backend_class/selected_blade.dart';
class Blade extends StatefulWidget {
  const Blade({Key? key}) : super(key: key);

  @override
  State<Blade> createState() => _BladeState();
}

class _BladeState extends State<Blade> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
        backgroundColor: Colors.white,
    resizeToAvoidBottomInset: true,
    body: SingleChildScrollView(child:  Stack(children: [
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: 200,
      //     ),
      //     Container(
      //       // color: Colors.amber,
      //       alignment: Alignment.bottomRight,
      //       width: MediaQuery.of(context).size.width,
      //       height: size.height*0.25,
      //       child: Image.asset(
      //         'assets/images/zina.png',
      //         width: 250,
      //         height: 250,
      //         fit: BoxFit.contain,
      //       ),
      //     ),
      //   ],),
      Container(
        margin: EdgeInsets.only(top: size.height*0.06, left: size.width*0.05, right: size.width*0.05),
        child: Column(
          children: [
            AutoSizeText(
              selected_blade.selected.title,
              style: TextStyle(
                //fontFamily: 'Poppins',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                  color: Colors.black
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                        color: Color(0x3A000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                    child: Image.network(
                      selected_blade.selected.image,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  right: size.width * 0.05, left: size.width * 0.05, top: 20),
              child: TextFormField(
                //  controller: _model.emailTextController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Port Number',
                  // hintText: 'Your email...',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black26,
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
                ),
                // style: FlutterFlowTheme.of(context).bodyMedium,
                keyboardType: TextInputType.emailAddress,
                // validator: _model.emailTextControllerValidator.asValidator(context),
              ),),
            Container(
              margin: EdgeInsets.only(
                  right: size.width * 0.05, left: size.width * 0.05, top: 20),
              child: TextFormField(
                //  controller: _model.emailTextController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Serial Number',
                  // hintText: 'Your email...',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black26,
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
                ),
                // style: FlutterFlowTheme.of(context).bodyMedium,
                keyboardType: TextInputType.emailAddress,
                // validator: _model.emailTextControllerValidator.asValidator(context),
              ),),
            Container(
              margin: EdgeInsets.only(
                  right: size.width * 0.05, left: size.width * 0.05, top: 10),
              child: AutoSizeText(
                "Moment Weight",
                style: TextStyle(
                  //fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0,
                    color: Colors.black
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  right: size.width * 0.05, left: size.width * 0.05, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width*0.25,
                    child: TextFormField(
                      //  controller: _model.emailTextController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'AXL',
                        // hintText: 'Your email...',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black26,
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
                      ),
                      // style: FlutterFlowTheme.of(context).bodyMedium,
                      keyboardType: TextInputType.emailAddress,
                      // validator: _model.emailTextControllerValidator.asValidator(context),
                    ),
                  ),
                  Container(
                    width: size.width*0.25,
                    child: TextFormField(
                      //  controller: _model.emailTextController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'RAD',
                        // hintText: 'Your email...',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black26,
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
                      ),
                      // style: FlutterFlowTheme.of(context).bodyMedium,
                      keyboardType: TextInputType.emailAddress,
                      // validator: _model.emailTextControllerValidator.asValidator(context),
                    ),
                  ),
                  Container(
                    width: size.width*0.25,
                    child: TextFormField(
                      //  controller: _model.emailTextController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'TAN',
                        // hintText: 'Your email...',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black26,
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
                      ),
                      // style: FlutterFlowTheme.of(context).bodyMedium,
                      keyboardType: TextInputType.emailAddress,
                      // validator: _model.emailTextControllerValidator.asValidator(context),
                    ),
                  ),
                ],),
            ),
            Container(
              margin: EdgeInsets.only(
                  right: size.width * 0.05, left: size.width * 0.05, top: 10),
              child: AutoSizeText(
                "Other Data",
                style: TextStyle(
                  //fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0,
                    color: Colors.black
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  right: size.width * 0.05, left: size.width * 0.05, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width*0.35,
                    child: TextFormField(
                      //  controller: _model.emailTextController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'VRS',
                        // hintText: 'Your email...',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black26,
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
                      ),
                      // style: FlutterFlowTheme.of(context).bodyMedium,
                      keyboardType: TextInputType.emailAddress,
                      // validator: _model.emailTextControllerValidator.asValidator(context),
                    ),
                  ),
                  Container(
                    width: size.width*0.35,
                    child: TextFormField(
                      //  controller: _model.emailTextController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'MFR',
                        // hintText: 'Your email...',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black26,
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
                      ),
                      // style: FlutterFlowTheme.of(context).bodyMedium,
                      keyboardType: TextInputType.emailAddress,
                      // validator: _model.emailTextControllerValidator.asValidator(context),
                    ),
                  ),
                ],),
            ),
            Container(
              margin: EdgeInsets.only(
                  right: size.width * 0.05, left: size.width * 0.05, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width*0.35,
                    child: TextFormField(
                      //  controller: _model.emailTextController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'TIP',
                        // hintText: 'Your email...',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black26,
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
                      ),
                      // style: FlutterFlowTheme.of(context).bodyMedium,
                      keyboardType: TextInputType.emailAddress,
                      // validator: _model.emailTextControllerValidator.asValidator(context),
                    ),
                  ),
                  Container(
                    width: size.width*0.35,
                    child: TextFormField(
                      //  controller: _model.emailTextController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'DMF',
                        // hintText: 'Your email...',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black26,
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
                      ),
                      // style: FlutterFlowTheme.of(context).bodyMedium,
                      keyboardType: TextInputType.emailAddress,
                      // validator: _model.emailTextControllerValidator.asValidator(context),
                    ),
                  ),
                ],),
            ),
           Container(
             margin: EdgeInsets.only(
                 right: size.width * 0.05, left: size.width * 0.05, top: 20),
      child: TextFormField(
    //    controller: _model.shortBioController1,
        obscureText: false,
        decoration: InputDecoration(
          hintText: 'Repair Markings\n\n',
         // hintStyle: FlutterFlowTheme.of(context).bodySmall,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black26,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding: EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
          filled: true,
        ),
      //  style: FlutterFlowTheme.of(context).bodyMedium,
        textAlign: TextAlign.start,
        maxLines: 4,
        keyboardType: TextInputType.multiline,
       // validator: _model.shortBioController1Validator.asValidator(context),
      ),
    ),
            Container(
              margin: EdgeInsets.only(
                  right: size.width * 0.05, left: size.width * 0.05, top: 20),
              child: TextFormField(
                //    controller: _model.shortBioController1,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Comments\n\n',
                  // hintStyle: FlutterFlowTheme.of(context).bodySmall,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black26,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                  filled: true,
                ),
                //  style: FlutterFlowTheme.of(context).bodyMedium,
                textAlign: TextAlign.start,
                maxLines: 4,
                keyboardType: TextInputType.multiline,
                // validator: _model.shortBioController1Validator.asValidator(context),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 7),
              child: GestureDetector(
                onTap: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const Home()),
                  // );
                },
                child: Container(
                  alignment: Alignment.center,
                  child: AutoSizeText(
                    "Update Info",
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
                  width:size.width*0.5,
                  margin: EdgeInsets.only(bottom: 10, top: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFF4A8CFF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),



          ],),
      )
    ],)
      ,)

    );
  }
}
