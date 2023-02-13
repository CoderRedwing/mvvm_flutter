

import 'package:fluttertoast/fluttertoast.dart';

class Utils{

  static toastMessage(String message){
    Fluttertoast.showToast(msg: message);
  }

}