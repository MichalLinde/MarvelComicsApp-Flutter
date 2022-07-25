import 'comic_data_container.dart';

class ComicDataWrapper{
  int? code;
  String? status;
  String? copyright;
  String? attributionText;
  String? attributionHTML;
  ComicDataContainer? data;
  String? etag;

  ComicDataWrapper({
    this.code,
    this.status,
    this.copyright,
    this.attributionText,
    this.attributionHTML,
    this.data,
    this.etag
  });

  ComicDataWrapper.fromJson(Map<String, dynamic> json){
    code = json["code"];
    status = json["status"];
    copyright = json["copyright"];
    attributionText = json["attributionText"];
    attributionHTML = json["attributionHTML"];
    data = ComicDataContainer.fromJson(json["data"]);
    etag = json["etag"];
  }
}