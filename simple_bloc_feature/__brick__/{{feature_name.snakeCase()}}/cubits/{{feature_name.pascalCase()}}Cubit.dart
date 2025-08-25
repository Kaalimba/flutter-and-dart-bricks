import 'package:bloc/bloc.dart';
import 'package:{{package_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/{{feature_name.pascalCase()}}State.dart';
import 'package:{{package_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/repositories/{{feature_name.pascalCase()}}Repository.dart';

class {{feature_name.pascalCase()}}Cubit extends Cubit<{{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Cubit({
    required {{feature_name.pascalCase()}}Repository {{feature_name.pascalCase()}}Repository,
  }) : _{{feature_name.pascalCase()}}Repository = {{feature_name.pascalCase()}}Repository,
  super({{feature_name.pascalCase()}}State());

  final {{feature_name.pascalCase()}}Repository _{{feature_name.pascalCase()}}Repository;

  // Add your cubit methods here
}