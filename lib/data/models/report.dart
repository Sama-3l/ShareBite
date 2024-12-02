import 'package:sharebite/data/models/user.dart';

class Report {
  final String id;
  final String report;
  final UserModel givenByUser;

  Report({
    required this.id,
    required this.report,
    required this.givenByUser,
  });
}
