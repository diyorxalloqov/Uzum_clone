import 'package:dio/dio.dart';
import 'package:uzum_clone/model/uzumModel.dart';

class UzumService {
  Future<dynamic> getUzum() async {
    try {
      Response response = await Dio().get("http://10.0.2.2:3000/uzum");
      if (response.statusCode == 200) {
        return UzumModel.fromJson(response.data);
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return e.message.toString();
    }
  }
}
