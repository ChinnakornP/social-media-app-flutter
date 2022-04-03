import 'package:json_annotation/json_annotation.dart';
import 'package:social_media_app/apis/models/entities/phone.dart';
import 'package:social_media_app/apis/models/entities/post.dart';
import 'package:social_media_app/apis/models/entities/user_avatar.dart';

part 'user_profile.g.dart';

@JsonSerializable()
class UserProfile {
  UserProfile({
    required this.id,
    required this.fname,
    required this.lname,
    required this.email,
    required this.uname,
    this.avatar,
    this.phone,
    this.gender,
    this.dob,
    this.about,
    required this.posts,
    required this.followers,
    required this.following,
    required this.accountStatus,
    required this.isVerified,
    required this.createdAt,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileToJson(this);

  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'fname')
  String fname;

  @JsonKey(name: 'lname')
  String lname;

  @JsonKey(name: 'email')
  String email;

  @JsonKey(name: 'uname')
  String uname;

  @JsonKey(name: 'avatar')
  UserAvatar? avatar;

  @JsonKey(name: 'phone')
  Phone? phone;

  @JsonKey(name: 'gender')
  String? gender;

  @JsonKey(name: 'dob')
  String? dob;

  @JsonKey(name: 'about')
  String? about;

  @JsonKey(name: 'posts')
  List<Post> posts;

  @JsonKey(name: 'followers')
  List<dynamic> followers;

  @JsonKey(name: 'following')
  List<dynamic> following;

  @JsonKey(name: 'accountStatus')
  String accountStatus;

  @JsonKey(name: 'createdAt')
  DateTime createdAt;

  @JsonKey(name: 'isVerified')
  bool isVerified;
}
