import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


import 'controoler.dart';
import 'model.dart';

class MovieDetailsScreen extends StatelessWidget {
  final int id;

  MovieDetailsScreen({Key? key, required this.id}) : super(key: key);

  final controller = MovieDetailsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FutureBuilder(
          future: controller.getData(id: id),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return CircularProgressIndicator();
            }
            var model = snapshot.data as MovieDetailsModel;
            return InteractiveViewer(onInteractionEnd: (c){},
              child:
                CachedNetworkImage(imageUrl: "https://image.tmdb.org/t/p/original" +
                    model.posterPath)
                // Image.network("https://image.tmdb.org/t/p/original" +
                //    model.posterPath),
            //   Text(model.overview);


            );  },
        ),
      ),
    );
  }
}