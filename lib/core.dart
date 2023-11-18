// ignore_for_file: prefer_interpolation_to_compose_strings
import 'package:dio/dio.dart';

Future<String> getimageurl() async {
  Dio a = Dio();
  try {
    Response data = await a.get(
        "https://cn.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1&mkt=zh-CN");
    return "https://cn.bing.com/" + data.data["images"][0]["url"];
  } catch (a) {
    return "https://cn.bing.com/th?id=OHR.MallarDucks_ZH-CN7422818269_1920x1080.jpg&rf=LaDigue_1920x1080.jpg&pid=hp";
  }
}

Future<Map> IntoHome(token) async {
  String url = 'http://49.235.106.67:5000/api/userdata/';
  Map<String, dynamic> data = {"Authorization": token};
  //print(username);
  // 发送注册请求的代码...
  try {
    Response response = await Dio().post(url, data: data);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return data;
    }
  } catch (e) {
    return data;
  }
}
