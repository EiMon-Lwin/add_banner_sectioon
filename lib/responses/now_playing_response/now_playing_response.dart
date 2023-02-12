import 'package:json_annotation/json_annotation.dart';

import '../../vos/now_playing_vo/date_vo/date_vo.dart';
import '../../vos/now_playing_vo/results_vo/results_vo.dart';

part 'now_playing_response.g.dart';
@JsonSerializable()
class NowPlayingResponse{

  @JsonKey(name: 'dates')
  DateVO? dateVO;

  @JsonKey(name: 'page')
  int? page;

  @JsonKey(name: 'results')
  List<ResultsVO>? results;

  @JsonKey(name: 'total_pages')
  int? totalPages;

  @JsonKey(name: 'total_results')
  int? totalResults;

  NowPlayingResponse(
      this.dateVO, this.page, this.results, this.totalPages, this.totalResults);

  factory NowPlayingResponse.fromJson(Map<String,dynamic> json)=>_$NowPlayingResponseFromJson(json);
  Map<String,dynamic> toJson()=>_$NowPlayingResponseToJson(this);
}
