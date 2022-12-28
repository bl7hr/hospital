
import '../entities/users.dart';
import '../repository/base_users_repository.dart';

class GetDatasersUseCase{
  final BaseUsersRepository baseUsersRepository;

  GetDatasersUseCase(this.baseUsersRepository);
Future <List<Users>> excute() async{
  return await baseUsersRepository.getData();
}
}