
import 'package:clean_mello/modules/core/errors.dart';

abstract class UsersFailure implements Failure {}

class FailureGetEnterprises implements UsersFailure {
  @override
  final String message;
  FailureGetEnterprises({
    this.message,
  });
}
