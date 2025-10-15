import 'package:clean_code/Domain/Entities/user.dart';
import 'package:clean_code/Domain/Repositories/user_repository.dart';

class UserBusiness {
  final UserRepository userRepository;
  UserBusiness({required this.userRepository});

  Future<List<User>> getAllUsers() async {
    return await userRepository.getAllUserData();
  }
}
