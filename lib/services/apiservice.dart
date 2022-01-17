import 'package:http/http.dart' as http;
import 'package:ondemandservices/consts/urls.dart';

class ApiManager {
  mobileotp() async {
    try {
      final client = http.get(Uri.parse(url));
    } catch (e) {
      print(e);
    }
  }
}
