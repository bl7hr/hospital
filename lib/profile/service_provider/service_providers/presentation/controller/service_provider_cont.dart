import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testfirebase/profile/service_provider/service_providers/domain/service_provider_class.dart';
import 'package:testfirebase/profile/service_provider/service_providers/presentation/screens/service_providers.dart';



final anyProviderForSearch = StateProvider<bool>((ref) => true);
final sportProvider = StateProvider<bool>((ref) => false);
final orthopProvider = StateProvider<bool>((ref) => false);
