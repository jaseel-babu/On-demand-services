import 'package:http/http.dart' as http;
import 'package:ondemandservices/consts/urls.dart';
import 'package:ondemandservices/controller/apicontroller.dart';
import 'package:ondemandservices/model/apimodel/mobileAuthmodel.dart';
import 'package:get/get.dart';

class ApiManager {
  final controller = Get.find<apiController>();
  Future mobileotp({String? mobileNumber}) async {
    try {
      print("try");
      final client = http.Client();
      final datamodel = null;
      final response = await client.get(
        Uri.parse(url + otpSend + mobileNumber!),
      );
      print(url + otpSend + mobileNumber);
      if (response.statusCode == 200) {
        return true;
      }
      false;
    } catch (e) {
      print(e);
    }
  }
}
