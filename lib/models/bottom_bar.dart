import 'dart:convert';

BottomBarModel bottomBarModelFromJson(String str) =>
    BottomBarModel.fromJson(json.decode(str));

String bottomBarModelToJson(BottomBarModel data) => json.encode(data.toJson());

class BottomBarModel {
  BottomBarModel({
    required this.label,
    required this.asset,
  });

  String label;
  String asset;

  factory BottomBarModel.fromJson(Map<String, dynamic> json) => BottomBarModel(
        label: json["label"],
        asset: json["asset"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "asset": asset,
      };
}
