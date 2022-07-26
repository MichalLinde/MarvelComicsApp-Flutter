class Thumbnail {
  String? path;
  String? extension;

  Thumbnail({
    this.path,
    this.extension
  });

  Thumbnail.fromJson(Map<String, dynamic> json){
    path = json["path"];
    extension = json["extension"];
  }

  String getPath(){
    return "$path.$extension";
  }
}