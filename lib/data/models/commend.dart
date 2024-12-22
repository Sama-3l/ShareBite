import 'package:sharebite/data/models/user.dart';

class Commend {
  final String id;
  final String commend;
  final UserModel givenToUser;

  Commend({
    required this.id,
    required this.commend,
    required this.givenToUser,
  });
}
