
import '../../presentation/screens/service_providers.dart';
import '../entities/service_providers.dart';
import '../repository/base_users_repository.dart';

class GetDatasersUseCase{
  final BaseUsersRepository baseUsersRepository;

  GetDatasersUseCase(this.baseUsersRepository);
Future <List<ServiceProviders>> excute() async{
  return await baseUsersRepository.getData();
}
}