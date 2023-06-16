// To parse this JSON data, do
//
//     final getGroupDetailModel = getGroupDetailModelFromJson(jsonString);

import 'dart:convert';

GetGroupDetailModel getGroupDetailModelFromJson(
  str,
) => GetGroupDetailModel.fromJson(str);

String getGroupDetailModelToJson(GetGroupDetailModel data) => json.encode(
  data.toJson(),
);

class GetGroupDetailModel {
  GetGroupDetailModel({
    this.groupPermission,
    this.readCount,
    this.modifiedBy,
    this.name,
    this.createAt,
    this.modifiedAt,
    this.groupId,
    this.isGroup,
    this.isDeactivateUser,
    this.groupImage,
    this.users,
    this.online,
    this.pinGroupForAll,
    this.recentMessage,
    this.createdBy,
    this.members,
    this.secretKey,
    this.joinGroup,
    this.pinnedGroup,
    this.viewBy,
    this.typing,
    this.blockUsers,
    this.lastUpdatedAt,
  });

  List<GroupPermission>? groupPermission;
  List<ReadCount>? readCount;
  String? modifiedBy;
  String? name;
  CreateAt? createAt;
  CreateAt? modifiedAt;
  String? groupId;
  bool? isGroup;
  bool? isDeactivateUser;
  String? groupImage;
  List<ParticipantUsers>? users;
  List<String>? online;
  int? pinGroupForAll;
  RecentMessage? recentMessage;
  String? createdBy;
  List<String>? members;
  String? secretKey;
  List<String>? joinGroup;
  List<dynamic>? pinnedGroup;
  List<String>? viewBy;
  List<dynamic>? typing;
  List<dynamic>? blockUsers;
  CreateAt? lastUpdatedAt;

  factory GetGroupDetailModel.fromJson(
    Map<String, dynamic> json,
  ) => GetGroupDetailModel(
    groupPermission: List<GroupPermission>.from(
      json["groupPermission"].map((x) => GroupPermission.fromJson(x)),
    ),
    readCount: List<ReadCount>.from(
      json["readCount"].map((x) => ReadCount.fromJson(x)),
    ),
    modifiedBy: json["modifiedBy"],
    name: json["name"],
    createAt: CreateAt.fromJson(json["createAt"]),
    modifiedAt: CreateAt.fromJson(json["modifiedAt"]),
    groupId: json["groupId"],
    isGroup: json["isGroup"],
    isDeactivateUser: json["isDeactivateUser"],
    groupImage: json["groupImage"],
    users: List<ParticipantUsers>.from(
      json["users"].map((x) => ParticipantUsers.fromJson(x)),
    ),
    online: List<String>.from(json["online"].map((x) => x)),
    pinGroupForAll: json["pinGroupForAll"],
    recentMessage: json["recentMessage"] == null
        ? null
        : RecentMessage.fromJson(json["recentMessage"]),
    createdBy: json["createdBy"],
    members: List<String>.from(json["members"].map((x) => x)),
    secretKey: json["secretKey"],
    joinGroup: List<String>.from(json["joinGroup"].map((x) => x)),
    pinnedGroup: List<dynamic>.from(json["pinnedGroup"].map((x) => x)),
    viewBy: List<String>.from(json["viewBy"].map((x) => x)),
    typing: List<dynamic>.from(json["typing"].map((x) => x)),
    blockUsers: List<dynamic>.from(json["blockUsers"].map((x) => x)),
    lastUpdatedAt: CreateAt.fromJson(json["lastUpdatedAt"]),
  );

  Map<String, dynamic> toJson() => {
    "groupPermission":
        List<dynamic>.from(groupPermission!.map((x) => x.toJson())),
    "readCount": List<dynamic>.from(readCount!.map((x) => x.toJson())),
    "modifiedBy": modifiedBy,
    "name": name,
    "createAt": createAt!.toJson(),
    "modifiedAt": modifiedAt!.toJson(),
    "groupId": groupId,
    "isGroup": isGroup,
    "isDeactivateUser": isDeactivateUser,
    "groupImage": groupImage,
    "users": List<dynamic>.from(users!.map((x) => x.toJson())),
    "online": List<dynamic>.from(online!.map((x) => x)),
    "pinGroupForAll": pinGroupForAll,
    "recentMessage": recentMessage!.toJson(),
    "createdBy": createdBy,
    "members": List<dynamic>.from(members!.map((x) => x)),
    "secretKey": secretKey,
    "joinGroup": List<dynamic>.from(joinGroup!.map((x) => x)),
    "pinnedGroup": List<dynamic>.from(pinnedGroup!.map((x) => x)),
    "viewBy": List<dynamic>.from(viewBy!.map((x) => x)),
    "typing": List<dynamic>.from(typing!.map((x) => x)),
    "blockUsers": List<dynamic>.from(blockUsers!.map((x) => x)),
    "lastUpdatedAt": lastUpdatedAt!.toJson(),
  };
}

class CreateAt {
  CreateAt({this.seconds, this.nanoseconds});

  int? seconds;
  int? nanoseconds;

  factory CreateAt.fromJson(Map<String, dynamic> json) => CreateAt(
    seconds: json["seconds"],
    nanoseconds: json["nanoseconds"],
  );

  Map<String, dynamic> toJson() => {
    "seconds": seconds,
    "nanoseconds": nanoseconds,
  };
}

class GroupPermission {
  GroupPermission({this.userId, this.permission});

  // ignore: prefer_typing_uninitialized_variables
  var userId;
  Permission? permission;

  factory GroupPermission.fromJson(
    Map<String, dynamic> json,
  ) => GroupPermission(
    userId: json["userId"],
    permission: Permission.fromJson(json["permission"]),
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "permission": permission!.toJson(),
  };
}

class Permission {
  Permission({
    this.clearChat,
    this.changeGroupName,
    this.addMember,
    this.addProfilePicture,
    this.deleteMessage,
    this.removeMember,
    this.sendMessage,
    this.exitGroup,
    this.deleteChat,
  });

  int? clearChat;
  int? changeGroupName;
  int? addMember;
  int? addProfilePicture;
  int? deleteMessage;
  int? removeMember;
  int? sendMessage;
  int? exitGroup;
  int? deleteChat;

  factory Permission.fromJson(Map<String, dynamic> json) => Permission(
    clearChat: json["clearChat"],
    changeGroupName: json["changeGroupName"],
    addMember: json["addMember"],
    addProfilePicture: json["addProfilePicture"],
    deleteMessage: json["deleteMessage"],
    removeMember: json["removeMember"],
    sendMessage: json["sendMessage"],
    exitGroup: json["exitGroup"],
    deleteChat: json["deleteChat"],
  );

  Map<String, dynamic> toJson() => {
    "clearChat": clearChat,
    "changeGroupName": changeGroupName,
    "addMember": addMember,
    "addProfilePicture": addProfilePicture,
    "deleteMessage": deleteMessage,
    "removeMember": removeMember,
    "sendMessage": sendMessage,
    "exitGroup": exitGroup,
    "deleteChat": deleteChat,
  };
}

class ReadCount {
  ReadCount({this.unreadCount, this.userId});

  int? unreadCount;
  String? userId;

  factory ReadCount.fromJson(Map<String, dynamic> json) => ReadCount(
    unreadCount: json["unreadCount"],
    userId: json["userId"],
  );

  Map<String, dynamic> toJson() => {
    "unreadCount": unreadCount,
    "userId": userId,
  };
}

class RecentMessage {
  RecentMessage({
    this.timeMilliSeconds,
    this.replyMsgId,
    this.type,
    this.time,
    this.replyUser,
    this.replyUserId,
    this.sentAt,
    this.viewBy,
    this.senderName,
    this.replyMsg,
    this.msgId,
    this.message,
    this.sentBy,
    this.replyMsgType,
  });

  CreateAt? timeMilliSeconds;
  String? replyMsgId;
  String? type;
  int? time;
  String? replyUser;
  String? replyUserId;
  CreateAt? sentAt;
  List<String>? viewBy;
  String? senderName;
  String? replyMsg;
  String? msgId;
  String? message;
  String? sentBy;
  String? replyMsgType;

  factory RecentMessage.fromJson(Map<String, dynamic> json) => RecentMessage(
    timeMilliSeconds: json["timeMilliSeconds"] == null
        ? null
        : CreateAt.fromJson(json["timeMilliSeconds"]),
    replyMsgId: json["replyMsgId"],
    type: json["type"],
    time: json["time"],
    replyUser: json["replyUser"],
    replyUserId: json["replyUserId"],
    sentAt: json["sentAt"] == null ? null : CreateAt.fromJson(json["sentAt"]),
    viewBy: json["viewBy"] == null
        ? null
        : List<String>.from(json["viewBy"].map((x) => x)),
    senderName: json["senderName"],
    replyMsg: json["replyMsg"],
    msgId: json["msgId"],
    message: json["message"],
    sentBy: json["sentBy"],
    replyMsgType: json["replyMsgType"],
  );

  Map<String, dynamic> toJson() => {
    "timeMilliSeconds": timeMilliSeconds!.toJson(),
    "replyMsgId": replyMsgId,
    "type": type,
    "time": time,
    "replyUser": replyUser,
    "replyUserId": replyUserId,
    "sentAt": sentAt!.toJson(),
    "viewBy": List<dynamic>.from(viewBy!.map((x) => x)),
    "senderName": senderName,
    "replyMsg": replyMsg,
    "msgId": msgId,
    "message": message,
    "sentBy": sentBy,
    "replyMsgType": replyMsgType,
  };
}

class ParticipantUsers {
  ParticipantUsers({
    this.name,
    this.profilePicture,
    this.mobileEmail,
    this.userId,
  });

  String? name;
  String? profilePicture;
  String? mobileEmail;
  // ignore: prefer_typing_uninitialized_variables
  var userId;

  factory ParticipantUsers.fromJson(
    Map<String, dynamic> json,
  ) => ParticipantUsers(
    name: json["name"],
    profilePicture: json["profilePicture"],
    mobileEmail: json["mobile_email"],
    userId: json["userId"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "profilePicture": profilePicture,
    "mobile_email": mobileEmail,
    "userId": userId,
  };
}
