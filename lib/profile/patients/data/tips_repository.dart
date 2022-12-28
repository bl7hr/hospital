
import 'package:testfirebase/profile/patients/domain/tip_model.dart';

abstract class UserRepository {
  Future<List<UserModel>> getAllTips();
  Future<void> User({required UserModel userModel});
}
