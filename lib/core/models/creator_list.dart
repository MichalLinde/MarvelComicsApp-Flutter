import 'creator_summary.dart';

class CreatorList {
  int? available;
  int? returned;
  String? collectionURI;
  List<CreatorSummary>? items;

  CreatorList({
    this.available,
    this.returned,
    this.collectionURI,
    this.items
  });

  CreatorList.fromJson(Map<String, dynamic> json){
    available = json["available"];
    returned = json["returned"];
    collectionURI = json["collectionURI"];
    if(json["items"] != null){
      items = [];
      json["items"].forEach((v) {
        items!.add(CreatorSummary.fromJson(v));
      });
    }
  }
}