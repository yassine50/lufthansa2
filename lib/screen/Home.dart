import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:lufthansa/screen/List_blades.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  File? selected_image ; 
  void pickUploadProfilePic() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
   selected_image = File(image!.path);
   // replace the "uri" with your adress
   String uri = '' ;
 final request =   http.MultipartRequest("POST",Uri.parse(uri));
 final headers = { "Content-type": "multipart/form-data"};
 // replace field with your api key
    String field  ="" ;
 request.files.add(
   http.MultipartFile(field, selected_image!.readAsBytes().asStream(), selected_image!.lengthSync(), filename: selected_image!.path.split("/").last),
 );
    request.headers.addAll(headers);
    final response = await request.send();
    // if you want you can get the response from the server but i don't think it's the case for us
    // cuz we are going to save the data in the firebase from the server so we don't need response
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor:Colors.white,
        resizeToAvoidBottomInset: true,
        body:Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: Image.asset(
                      'assets/images/menu.png',
                    ).image,
                  ),
                ),
              ),
                Container(
                 // color: Colors.amber,
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
            ],),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: (){
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const Home()),
                      // );
                      pickUploadProfilePic();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: AutoSizeText(
                        "Take Picture",
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
                ),
                Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const List_blade()),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: AutoSizeText(
                        "View Blades",
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
                ),
            ],)
          ],
        )
    );
  }
}
