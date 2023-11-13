import 'package:jjoin/model/base/e_club_part.dart';

class ClubRecommend {
  final int id;
  final String name;
  final String introduction;
  final String imageUrl;
  final int memberCnt;
  final EClubPart part;
  final List<String> tags;

  ClubRecommend({
    required this.id,
    required this.name,
    required this.introduction,
    required this.imageUrl,
    required this.memberCnt,
    required this.part,
    required this.tags,
  });

  factory ClubRecommend.fromJson({required json, required String imageUrl}) {
    return ClubRecommend(
      id: json["id"],
      name: json["name"],
      introduction: json["introduction"],
      imageUrl: "$imageUrl/${json["profileImageUuid"]}",
      memberCnt: json["numberOfMembers"],
      part: EClubPart.fromString(json["dependent"]),
      tags: json["tags"].cast<String>(),
    );
  }
}
