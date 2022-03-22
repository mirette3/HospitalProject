import 'package:dio/dio.dart';

class DioHelper {
static late Dio dio;
static init(){
  dio=Dio(
    BaseOptions(
      baseUrl: "http://api.instant-ss.com/api/v1",
      receiveDataWhenStatusError: true,
    )
  );
}
static Future<Response> getData({required String url,String? token}) async{
  dio.options.headers ={
    "token": token ?? '',
    "Accept" : "application/json",
  };
  return await dio.get(url);

}

//This Function that's Used To Post Data to API based on URL(End Points) and Headers.
static Future<Response> postData({
  required String url,
  required Map<String, dynamic> data,
  String? token,
}) async {
  dio.options.headers = {
    "Accept" : "application/json",
  };

  return await dio.post(url, data: data);
}


}