
import '../../../vos/now_playing_vo/results_vo/results_vo.dart';

abstract class NowPlayingResultsDataAgent{
  Future< List<ResultsVO>? > getAllResults(int page);
}