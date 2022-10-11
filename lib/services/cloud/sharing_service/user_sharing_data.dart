class UserSharingData {
  late String documentId;
  late String userId;
  List<dynamic> blockedUsers = [];
  static final _shared = UserSharingData._sharedInstance();

  UserSharingData._sharedInstance();

  factory UserSharingData() => _shared;
}
