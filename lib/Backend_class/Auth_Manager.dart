import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import '../Backend_class/FB_Auth.dart';
import '../Backend_class/FB_RDB.dart';
import '../Accessibilities/Tools.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../Data_class/Account.dart';
import 'FB_Auth.dart';
import 'FB_RDB.dart';
import 'FB_Storage.dart';

class Auth_Manager {
  FB_Auth auth = FB_Auth();
  FB_RBD rbd = FB_RBD();

  Future<bool> Sign_Up() async {
    bool verif = await auth.signUp(Account().email, Account().password);
    if (verif == true) {
      bool verif = await rbd.Set_Data(
          "/Accounts/",
          {
            "email": Tools.Cast_email(Account().email),
            "full_name": Account().fullName,
          },
          Tools.Cast_email(Account().email));
    } else {
      print("problem with user sgin up ");
      verif = false;
    }
    return verif;
  }
  Future<int> Sign_In_Email() async {
    int verif = await auth.signIn(Account().email, Account().password);
    if (verif == 1) {
      String castedEmail = Tools.Cast_email(Account().email);
      Map fb_account = await rbd.Get_Data("/Accounts/$castedEmail") as Map;
     // Account().status=fb_account['status'];
        Account().fullName = fb_account['full_name'];
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString("pass", Account().password);
        await prefs.setString("email", Account().email);
    }
    // Account().fullName = FB_account;
    //  Account().country =
    //  Account().phoneNumber=
    return verif;
  }
}
