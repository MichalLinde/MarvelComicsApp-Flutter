import 'comic.dart';

class ComicDataContainer{
  int? offset;
  int? limit;
  int? total;
  int? count;
  List<Comic>? results;

  ComicDataContainer({
    this.offset,
    this.limit,
    this.total,
    this.count,
    this.results
  });

  ComicDataContainer.fromJson(Map<String, dynamic> json){
    offset = json["offset"];
    limit = json["limit"];
    total = json["total"];
    count = json["count"];
    if(json["results"] != null){
      results = [];
      json["results"].forEach((v) {
        results?.add(Comic.fromJson(v));
      });
    }
  }
}