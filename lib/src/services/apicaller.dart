import 'package:dio/dio.dart';
import 'package:ovispaapp/src/models/login_response.dart';


class ApiCaller {
  final Dio dio = Dio(BaseOptions(
      baseUrl: 'https://ovispa.saeta.app',
      headers: {'Content-Type': 'application/json'})
      );

  Future<dynamic> login(String email, String password) async {

    try {
      final res = await dio.post('/auth/login',data:{ 'email':email, 'password':password });
      
      if(res.statusCode==200){
        final loginResponse = LoginResponse.fromJson(res.data);

        return loginResponse;

      }else{
        return null;
      }

    } catch (e) {
       throw Exception('Error de red: $e');
    }

    
  }
}
