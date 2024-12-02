import 'package:sharebite/data/models/user.dart';

class Commend {
  final String id;
  final String commend;
  final UserModel givenByUser;

  Commend({
    required this.id,
    required this.commend,
    required this.givenByUser,
  });
}
