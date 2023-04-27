import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lufthansa/screen/List_blades.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void pickUploadProfilePic() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
      //print(image?.path);
      // bool verif = await storage.Upload_File(
      //     image!.path, Account().accountID + "/profilepic.jpg");
      // if (verif) {
      //   fb.Update_Data('/Accounts/' + Tools.Cast_email(Account().accountID),
      //       {'profile_pic': true});
      //   Account().profile_pic =
      //   await storage.Get_file(Account().accountID + "/profilepic.jpg");
      //   Get.back();
      //   Popups_Manger().aut_profile(context);
      //   setState(() {
      //     Account().profile_pic = Account().profile_pic;
      //   });
      // } else {
      //   Get.back();
      //   Popups_Manger().warningPopup(
      //       context, AppLocalizations.of(context)!.image_not_upload);
      // }

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
