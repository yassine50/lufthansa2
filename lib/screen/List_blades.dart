import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Backend_class/FB_RDB.dart';
import '../Backend_class/selected_blade.dart';
import '../Data_class/blades.dart';
import 'Home.dart';
import 'blade.dart';

class List_blade extends StatefulWidget {
  const List_blade({Key? key}) : super(key: key);
  @override
  State<List_blade> createState() => _List_bladeState();
}
class _List_bladeState extends State<List_blade> {
  List <blades> blade  = []  ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    blade = [] ;
  }
  FB_RBD fb = FB_RBD();
  Future<bool> get() async {
    blade = [] ;
    Map available_data = await fb.Get_Data("/blades/") as Map;
   // print(available_data) ;
    for (var k in available_data.keys) {
      blades blad = blades() ;
      blad.id = int.parse(k) ;
      blad.title = available_data[k]["title"];
      blad.AXL = available_data[k]["AXL"];
      blad.Comments = available_data[k]["Comments"];
      blad.DMF = available_data[k]["DMF"];
      blad.image = available_data[k]["image"];
      blad.Marking = available_data[k]["Marking"];
      blad.MFR = available_data[k]["MFR"];
      blad.port_number = available_data[k]["port_number"];
      blad.RAD = available_data[k]["RAD"];
      blad.serial_number = available_data[k]["serial_number"];
      blad.TAN = available_data[k]["TAN"];
      blad.TIP = available_data[k]["TIP"];
      blad.VRS = available_data[k]["VRS"];
      blad.sub_title = available_data[k]["sub_title"];
      blade.add(blad) ;
    }
    print(blade) ;
    return true;
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      resizeToAvoidBottomInset: true,
      body: Column(
        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: Image.asset(
                  'assets/images/view_blade.jpg',
                ).image,
              ),
            ),
          ),
          Expanded(
              child: FutureBuilder(
            future: get(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        for (int i = 0; i < blade.length; i++) ...{
                          GestureDetector(
                            onTap: () {
                              selected_blade.selected = blade[i] ;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Blade()),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  bottom: 7, left: 10, right: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x411D2429),
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                              // ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    //crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          // alignment: Alignment.bottomRight,
                                          margin: EdgeInsets.all(10),
                                          //  color:Colors.green ,
                                          width: 100,
                                          height: 100,
                                          child: Image.network(
                                           blade[i].image,
                                            width: 80,
                                            height: 80,
                                            fit: BoxFit.cover,
                                          )),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          AutoSizeText(
                        blade[i].title ,
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0,
                                                color: Colors.black),
                                            textAlign: TextAlign.center,
                                          ),
                                          AutoSizeText(
                        blade[i].sub_title ,
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0,
                                                color: Colors.grey),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    child: Icon(
                                      FontAwesomeIcons.angleRight,
                                      size: 20, //Icon Size
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        }
                      ],
                    ));
              } else if (snapshot.hasError) {
                print(snapshot.error);
                return Container();
              }
              return Container();
            },
          ))
        ],
      ),
    );
  }
}
