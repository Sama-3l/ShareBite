import 'package:sharebite/constants/enum.dart';
import 'package:sharebite/data/models/chat.dart';
import 'package:sharebite/data/models/user.dart';

// MEMBERS ARE FETCH ONLY WHEN USER IS ACCEPTED TO GROUP OR GROUP IS CREATED
//

class Group {
  final String id;
  final String name;
  final int groupSize;
  final DateTime deadline;
  final Platform platform;
  final String outlet;
  final int minContribution;
  final List<UserModel>? requests;
  final List<UserModel>? members;
  final List<ChatModel>? chats;
  final String? description;
  final List<Hostel>? hostelRestrictions;
  final String? additionalTag;
  final String? invoice;
  final String adminUserId;
  final bool isDeleted;
  final bool verified;

  Group({
    required this.id,
    required this.name,
    required this.groupSize,
    required this.deadline,
    required this.platform,
    required this.outlet,
    required this.minContribution,
    this.requests,
    this.members,
    this.chats,
    this.description,
    this.hostelRestrictions,
    this.additionalTag,
    this.invoice,
    required this.adminUserId,
    required this.isDeleted,
    required this.verified,
  });
}
