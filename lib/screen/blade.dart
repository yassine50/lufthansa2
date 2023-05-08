import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../Backend_class/FB_RDB.dart';
import '../Backend_class/selected_blade.dart';
class Blade extends StatefulWidget {
  const Blade({Key? key}) : super(key: key);

  @override
  State<Blade> createState() => _BladeState();
}

class _BladeState extends State<Blade> {
    final port_num = TextEditingController();
  final serial_num = TextEditingController();
  final AXL = TextEditingController();
  final RAD = TextEditingController();
  final TAN = TextEditingController();
  final VRS = TextEditingController();
  final MFR = TextEditingController();
  final TIP = TextEditingController();
  final DMF = TextEditingController();
  final repair = TextEditingController();
  final commentes = TextEditingController();
    FB_RBD fb = FB_RBD();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    port_num.text = selected_blade.selected.port_number ;
    serial_num.text = selected_blade.selected.serial_number ;
    AXL.text = selected_blade.selected.AXL ;
    RAD.text = selected_blade.selected.RAD ;
    TAN.text = selected_blade.selected.TAN ;
    VRS.text = selected_blade.selected.VRS ;
    MFR.text = selected_blade.selected.MFR ;
    TIP.text = selected_blade.selected.TIP ;
    DMF.text = selected_blade.selected.DMF ;
    repair.text = selected_blade.selected.Marking ;
    commentes.text = selected_blade.selected.Comments ;

  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
        backgroundColor: Colors.white,
    resizeToAvoidBottomInset: true,
    body: SingleChildScrollView(child:  Stack(children: [
      Container(
        margin: EdgeInsets.only(top: size.height*0.06, left: size.width*0.05, right: size.width*0.05),
        child:
        Column(
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
                  controller:port_num,
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
                  controller: serial_num,
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
                        controller: AXL,
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
                        controller: RAD,
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
                        controller: TAN,
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
                        controller: VRS,
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
                       controller: MFR,
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
                        controller:TIP,
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
                        controller: DMF,
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
        controller:repair,
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
                    controller: commentes,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Container(
                margin: EdgeInsets.only(bottom: 7),
                child: GestureDetector(
                  onTap: (){
                    fb.Delete_Data('/blades/${selected_blade.selected.id}');
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      "Delete",
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
                    width:size.width*0.3,
                    margin: EdgeInsets.only(bottom: 10, top: 10),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 7),
                child: GestureDetector(
                  onTap: (){
                    fb.Update_Data("/blades/${selected_blade.selected.id}", {
                      "AXL":AXL.text ,
                      "Comments"  : commentes.text ,
                      "DMF" :DMF.text,
                      "MFR" : MFR.text ,
                      "Marking" :repair.text,
                      "RAD" : RAD.text ,
                      "TAN": TAN.text ,
                      "TIP" : TIP.text ,
                      "VRS" :VRS.text ,
                      "port_number" :port_num.text ,
                      "serial_number" : serial_num.text ,
                    });
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
                    width:size.width*0.3,
                    margin: EdgeInsets.only(bottom: 10, top: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFF4A8CFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],)




          ],),
      )
    ],)
      ,)

    );
  }
}
