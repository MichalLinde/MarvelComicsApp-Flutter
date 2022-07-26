class Url{
  String? type;
  String? url;

  Url({
    this.type,
    this.url
  });

  Url.fromJson(Map<String, dynamic> json){
    type = json["type"];
    url = json["url"];
  }
}