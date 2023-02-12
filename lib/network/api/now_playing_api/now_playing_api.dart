import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../const/api_constants.dart';
import '../../../responses/now_playing_response/now_playing_response.dart';

part 'now_playing_api.g.dart';
@RestApi(baseUrl: kBaseUrl)
abstract class NowPlayingApi{
  factory NowPlayingApi(Dio dio)=>_NowPlayingApi(dio);
  @GET(kGetNowPlayingMoviesEndPoint)
  Future<NowPlayingResponse> getAllNowPlayingResponse(
      @Query(kApiKey) String apiKey,
      @Query(kPages) int page
      );
}