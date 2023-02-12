
import '../../network/data_agent/now_playing_data_agent/now_playing_results_data_agent.dart';
import '../../network/data_agent/now_playing_data_agent/now_playing_results_data_agent_impl.dart';
import '../vos/now_playing_vo/results_vo/results_vo.dart';
import 'now_playing_apply.dart';

class NowPlayingApplyImpl extends NowPlayingApply{
  final NowPlayingResultsDataAgent _nowPlayingResultsDataAgent=NowPlayingResultsDataAgentImpl();

  NowPlayingApplyImpl._();

  static final NowPlayingApplyImpl _singleton=NowPlayingApplyImpl._();

  factory NowPlayingApplyImpl()=> _singleton;
  @override
  Future<List<ResultsVO>?> getAllResults(int page) =>
      _nowPlayingResultsDataAgent.getAllResults(page).then((value)  {
        final  tempList=value?.map((e) {
          e.isGetNowPlaying=true;
            return e;
      } ).toList() ??
        [];
        return tempList;
      });



}