import 'package:bloc/bloc.dart';
import './{{feature_name.pascalCase()}}State.dart';

class {{feature_name.pascalCase()}}Cubit extends Cubit<{{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Cubit() : super({{feature_name.pascalCase()}}Initial());
}