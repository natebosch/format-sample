class TheMoviePersonImage {
  int? id;
  List<TheMoviePersonProfiles>? profiles;

  TheMoviePersonImage({this.id, this.profiles});

  TheMoviePersonImage.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    profiles = json["profiles"] == null
        ? null
        : (json["profiles"] as List)
            .map(
              (e) => TheMoviePersonProfiles.fromJson(e),
            )
            .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if (profiles != null) {
      _data["profiles"] = profiles?.map((e) => e.toJson()).toList();
    }
    return _data;
  }

  TheMoviePersonImage copyWith({
    int? id,
    List<TheMoviePersonProfiles>? profiles,
  }) =>
      TheMoviePersonImage(
        id: id ?? this.id,
        profiles: profiles ?? this.profiles,
      );
}

class TheMoviePersonProfiles {
  num? aspectRatio;
  String? filePath;
  int? height;
  dynamic iso6391;
  num? voteAverage;
  int? voteCount;
  int? width;

  TheMoviePersonProfiles({
    this.aspectRatio,
    this.filePath,
    this.height,
    this.iso6391,
    this.voteAverage,
    this.voteCount,
    this.width,
  });

  TheMoviePersonProfiles.fromJson(Map<String, dynamic> json) {
    aspectRatio = json["aspect_ratio"];
    filePath = json["file_path"];
    height = json["height"];
    iso6391 = json["iso_639_1"];
    voteAverage = json["vote_average"];
    voteCount = json["vote_count"];
    width = json["width"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["aspect_ratio"] = aspectRatio;
    _data["file_path"] = filePath;
    _data["height"] = height;
    _data["iso_639_1"] = iso6391;
    _data["vote_average"] = voteAverage;
    _data["vote_count"] = voteCount;
    _data["width"] = width;
    return _data;
  }

  TheMoviePersonProfiles copyWith({
    double? aspectRatio,
    String? filePath,
    int? height,
    dynamic iso6391,
    double? voteAverage,
    int? voteCount,
    int? width,
  }) =>
      TheMoviePersonProfiles(
        aspectRatio: aspectRatio ?? this.aspectRatio,
        filePath: filePath ?? this.filePath,
        height: height ?? this.height,
        iso6391: iso6391 ?? this.iso6391,
        voteAverage: voteAverage ?? this.voteAverage,
        voteCount: voteCount ?? this.voteCount,
        width: width ?? this.width,
      );
}
