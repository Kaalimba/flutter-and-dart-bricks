import 'package:bloc/bloc.dart';
import 'package:{{package_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/cubits/{{feature_name.snakeCase()}}_state.dart';
import 'package:{{package_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/repositories/{{feature_name.snakeCase()}}_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class {{feature_name.pascalCase()}}Cubit extends HydratedCubit<{{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Cubit({
    required {{feature_name.pascalCase()}}Repository {{feature_name.camelCase()}}Repository,
  }) : _{{feature_name.camelCase()}}Repository = {{feature_name.camelCase()}}Repository,
       super(const {{feature_name.pascalCase()}}State());

  final {{feature_name.pascalCase()}}Repository _{{feature_name.camelCase()}}Repository;

  @override
  String get storagePrefix => '{{feature_name.snakeCase()}}_cubit';

  // Add your cubit methods here
}
