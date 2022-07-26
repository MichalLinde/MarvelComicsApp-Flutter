class CreatorSummary {
  String? resourceURI;
  String? name;
  String? role;

  CreatorSummary({
    this.resourceURI,
    this.name,
    this.role
  });

  CreatorSummary.fromJson(Map<String, dynamic> json){
    resourceURI = json["resourceURI"];
    name = json["name"];
    role = json["role"];
  }
}