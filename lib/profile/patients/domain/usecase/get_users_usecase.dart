
import '../../../service_provider/domain/entities/users.dart';
import '../../../service_provider/domain/repository/base_users_repository.dart';

class GetDatasersUseCase{
  final BaseUsersRepository baseUsersRepository;

  GetDatasersUseCase(this.baseUsersRepository);
Future <List<Users>> excute() async{
  return await baseUsersRepository.getData();
}
}