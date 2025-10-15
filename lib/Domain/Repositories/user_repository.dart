import 'package:clean_code/Domain/Entities/user.dart';

abstract class UserRepository {
  Future<List<User>> getAllUserData();
}
