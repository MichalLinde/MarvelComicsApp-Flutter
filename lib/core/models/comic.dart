import 'package:marvel_app/core/models/creator_list.dart';
import 'package:marvel_app/core/models/thumbnail.dart';
import 'package:marvel_app/core/models/url.dart';

class Comic{
  int? id;
  String? title;
  String? description;
  List<Url>? urls;
  Thumbnail? thumbnail;
  CreatorList? creators;

  Comic({
    this.id,
    this.title,
    this.description,
    this.urls,
    this.thumbnail,
    this.creators
  });

  Comic.fromJson(Map<String, dynamic> json){
    id = json["id"];
    title = json["title"];
    description = json["description"];
    if(json["urls"] != null){
      urls = [];
      json["urls"].forEach((v) {
        urls!.add(Url.fromJson(v));
      });
    }
    thumbnail = Thumbnail.fromJson(json["thumbnail"]);
    creators = CreatorList.fromJson(json["creators"]);
  }
}