import 'package:dio/dio.dart';

import '../../../const/api_constants.dart';
import '../../../vos/now_playing_vo/results_vo/results_vo.dart';
import '../../api/now_playing_api/now_playing_api.dart';
import 'now_playing_results_data_agent.dart';

class NowPlayingResultsDataAgentImpl extends NowPlayingResultsDataAgent {
  late NowPlayingApi _nowPlayingApi;

  NowPlayingResultsDataAgentImpl._() {
    _nowPlayingApi = NowPlayingApi(Dio());
  }

  static final NowPlayingResultsDataAgentImpl _singleton =
      NowPlayingResultsDataAgentImpl._();

  factory NowPlayingResultsDataAgentImpl() => _singleton;

  @override
  Future<List<ResultsVO>?> getAllResults(int page) => _nowPlayingApi
      .getAllNowPlayingResponse(kApiKey, page)
      .asStream()
      .map((event) => event.results)
      .first;
}
