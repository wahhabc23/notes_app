import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injectable.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjectable() async =>
    getIt.init(environment: Environment.prod);
