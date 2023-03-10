import 'package:json_annotation/json_annotation.dart';
part 'results_vo.g.dart';
@JsonSerializable()
class ResultsVO {
  @JsonKey(name: 'adult')
  bool? adult;

  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'genre_ids')
  List<int>? genreIds;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_language')
  String? originalLanguage;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'popularity')
  num? popularity;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'release_date')
  String? releaseDate;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'video')
  bool? video;

  @JsonKey(name: 'vote_average')
  num? voteAverage;

  @JsonKey(name: 'vote_count')
  int? voteCount;
  bool? isGetNowPlaying;
  bool? isPopularMovies;
  bool? isTopRated;

  ResultsVO(
      this.adult,
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.releaseDate,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount,
  {
    this.isPopularMovies=false,
    this.isGetNowPlaying=false,
    this.isTopRated=false
  });

  factory ResultsVO.fromJson(Map<String,dynamic> json)=>_$ResultsVOFromJson(json);
  Map<String,dynamic> toJson()=>_$ResultsVOToJson(this);
}


