import 'package:sharebite/constants/enum.dart';
import 'package:sharebite/data/models/chat.dart';
import 'package:sharebite/data/models/commend.dart';
import 'package:sharebite/data/models/report.dart';

class UserModel {
  final String id;
  final String name;
  final String phoneNumber;
  final Hostel hostel;
  final int roomNumber;
  final String avatar;
  final List<Commend>? commends;
  final List<Report>? reports;
  final List<UserModel>? friends;
  final List<ChatModel>? chats;
  final bool verified;

  UserModel({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.hostel,
    required this.roomNumber,
    required this.avatar,
    this.commends,
    this.reports,
    this.friends,
    this.chats,
    required this.verified,
  });
}
