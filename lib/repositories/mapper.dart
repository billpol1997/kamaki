import 'package:kamaki/entities/user.dart';
import 'package:kamaki/models/user_model.dart';

abstract class Mapper<Domain, Data> {
  Data fromDomain(Domain domain);
  Domain toDomain(Data data);
}

class UserMapper implements Mapper<User, UserModel> {
  @override
  UserModel fromDomain(User domain) {
    // TODO: implement fromDomain

    throw UnimplementedError();
  }

  @override
  User toDomain(UserModel data) {
    return User(data.name, data.age, data.image, data.gender);
  }
}
