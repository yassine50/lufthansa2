import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class Tools {
  Tools._internal();

  int timeStampGMT = 0; // int 0000
  int timestampRelative = 0;

  static final Tools _singleton = Tools._internal();

  factory Tools() {
    return _singleton;
  }

  static String Path_Combinator(List<String> pathList) {
    String path = "";

    for (int i = 0; i < pathList.length; i++) {
      path += pathList[i] + "/";
    }
    return path;
  }

  static String Cast_email(String word) {
    String result = word.toLowerCase();
    result = result.replaceAll(RegExp('[^A-Za-z0-9-@]'), '');
    print(result);
    return result;
  }


  static String percentage_calculating(int valueA, int valueB) {
    if (valueA + valueB == 0) return "0 %";
    return ((double.parse(valueA.toString()) /
                    (double.parse((valueA + valueB).toString()))) *
                100)
            .roundToDouble()
            .toStringAsFixed(0) +
        " %";
  }

  static int percentage_calculating_from_total(int valueA, int total) {
    if (total == 0 || valueA == 0) return 0;

    return (((valueA) / total) * 100).truncate();
  }

  static DateTime convert_date(int timestamp) {
    DateTime tsdate = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    //String datetime = tsdate.year.toString() + "/" + tsdate.month.toString() + "/" + tsdate.day.toString();

    return tsdate;
  }

  static int string_to_color(String word) {
    String result= ""  ;
    for(int i = 0 ; i<=3 ;  i ++ ) {
     result = result +word.codeUnitAt(i).toString()  ;
    }
    result = result+word.codeUnitAt(word.length-1).toString();
    return int.parse(result);
  }
  static String first_three_word ( String word) {
    return word.substring(0, 3);
  }
  static String first_tow_word ( String word) {
    return word.substring(0, 2);
  }
}
