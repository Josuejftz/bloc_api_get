import 'dart:convert';
import 'package:bloc_demo/model/user_model.dart';
import 'package:http/http.dart';

class UserRepository {
  
  String userUrl = 'https://api-menu.puntoverde.pe/api/index-categories';//https://inventario.tierrafertil.pe/categories
  //String userUrl = 'https://reqres.in/api/users?page=2';
  //https://jacobsbrewery.com/carta/api/admin/categories

  Future<List<UserModel>> getUsers() async {
    Response response = await get(Uri.parse(userUrl));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);///['data']
      return result.map((e) => UserModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
