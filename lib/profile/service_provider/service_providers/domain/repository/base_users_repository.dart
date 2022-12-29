
import '../../presentation/screens/service_providers.dart';
import '../entities/service_providers.dart';

abstract class BaseUsersRepository{

  Future <List<ServiceProviders>> getData();
}