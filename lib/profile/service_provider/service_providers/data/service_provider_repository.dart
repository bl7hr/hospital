import 'package:testfirebase/profile/service_provider/service_providers/domain/service_provider_class.dart';

abstract class ServiceProviderRepository
{
  Future <List<ServiceProviderClass>> getServiceProviders();
  Future <ServiceProviderClass> getServiceProvider({required String id});
  Future <List<ServiceProviderClass>> searchInServiceProvidersByName({required String name});
}