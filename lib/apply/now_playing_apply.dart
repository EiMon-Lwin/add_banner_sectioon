// class FakeStoreApplyImpl extends FakeStoreApply
// {
//   FakeStoreApplyImpl._();
//   static final FakeStoreApplyImpl _singleton=FakeStoreApplyImpl._();
//   factory FakeStoreApplyImpl()=> _singleton;
//   final FakeStoreDataAgent _fakeStoreDataAgent=FakeStoreApplyImpl();
//   @override
//   Future<List<>>
// }



import '../vos/now_playing_vo/results_vo/results_vo.dart';

abstract class NowPlayingApply{
  Future<List<ResultsVO>?> getAllResults(int page);
}