import 'package:true_gym/Features/register/data/model/user.dart';

abstract class SignupService {
  Future<void> register(UserModel user);
}