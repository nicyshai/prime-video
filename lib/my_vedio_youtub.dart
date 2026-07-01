import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:my_prime_vedio/data/moviedata.dart';

class MyVedio extends StatefulWidget {
  final Movies movies;
  const MyVedio({super.key, required this.movies});

  @override
  State<MyVedio> createState() => _MyVedioState();
}

class _MyVedioState extends State<MyVedio> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();

    final videoId = YoutubePlayer.convertUrlToId(widget.movies.videoUrl);

    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(autoPlay: true, enableCaption: true),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.movies.name, style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.white,
        ),
      ),
    );
  }
}
