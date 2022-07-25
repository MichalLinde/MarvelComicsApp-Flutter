class ComicDataWrapper{
  int? code;
  String? errorMessage;

  ComicDataWrapper({ this.code });

  ComicDataWrapper.fromJson(Map<String, dynamic> json){
    code = json["code"];
  }

  ComicDataWrapper.withError(String error){
    errorMessage = error;
  }
}