import 'package:get_it/get_it.dart';
import 'package:go_router_test/data/repos/products_repo.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<ProductsRepo>(() => ProductsRepo());
}
