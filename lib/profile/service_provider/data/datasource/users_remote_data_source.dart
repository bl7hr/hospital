import 'package:dio/dio.dart';

import '../../../patients/domain/tip_model.dart';
abstract class BaseUsersRemoteDataSource{
  Future<List<UserModel>> getData();
}
class UsersRemoteDataSource extends BaseUsersRemoteDataSource{
  @override
 Future<List<UserModel>> getData()async{
   final respons= await Dio().get( "" );
   if(respons.statusCode==200)
     return List<UserModel>.from((respons.data[""] as List).map((e) => UserModel.fromJson(e), ));
     else return [];
  }

}