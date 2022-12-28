
import '../entities/users.dart';

abstract class BaseUsersRepository{

  Future <List<Users>> getData();
}