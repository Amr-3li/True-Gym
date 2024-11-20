import 'package:dartz/dartz.dart';
import 'package:true_gym/Features/register/data/model/user.dart';
import 'package:true_gym/core/errors/failures.dart';

abstract class AuthRepository {
  Future<Either<Failure, void>> signin(UserModel user);
  Future<Either<Failure, void>> signout();
}
