import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../apply/now_playing_apply.dart';
import '../apply/now_playing_apply_impl.dart';
import '../const/api_constants.dart';
import '../vos/now_playing_vo/results_vo/results_vo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 final NowPlayingApply _nowPlayingApply = NowPlayingApplyImpl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.search)],
        title: Text('Discover'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              child: FutureBuilder<List<ResultsVO>?>(
                future: _nowPlayingApply.getAllResults(1),
                builder: ( context, snapshot) {
                  if(snapshot.connectionState == ConnectionState.waiting){
                    return
                     const Center(child: CircularProgressIndicator());

                  }
                  if(snapshot.hasError){
                    return
                    const  Center(child: Text('Error Occurring'));
                  }
                  final listMoviesBanner=snapshot.data?.take(5).toList();
                  return PageView.builder(itemBuilder: (context,index)=>BannerMoviesItemView(resultsVO: listMoviesBanner?[index],
                  ),
                    itemCount: listMoviesBanner?.length,
                  );
                },

              ),
            ),

          ],
        ),
      ),
    );


  }
}

class BannerMoviesItemView extends StatelessWidget{
  const BannerMoviesItemView({Key? key,required this.resultsVO}):super(key: key);
  final ResultsVO? resultsVO;
  @override
  Widget build(BuildContext context) {
    var image=resultsVO?.backdropPath?? '';
    return Image.network('$kImagePrefixString$image');

  }
}
