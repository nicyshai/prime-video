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
  String? _videoId;

  @override
  void initState() {
    super.initState();
    _videoId = YoutubePlayer.convertUrlToId(widget.movies.videoUrl);
    _controller = YoutubePlayerController(
      initialVideoId: _videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        enableCaption: true,
      ),
    );
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.white,
        onReady: () {
          debugPrint('Player is ready.');
        },
      ),
      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            iconTheme: const IconThemeData(color: Colors.white),
            title: Text(widget.movies.name, style: const TextStyle(color: Colors.white)),
          ),
          backgroundColor: Colors.black,
          body: Column(
            children: [
              player,
              if (_videoId == null)
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Warning: '${widget.movies.videoUrl}' is not a valid YouTube URL. Playing default trailer.",
                    style: const TextStyle(color: Colors.redAccent, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 1. Title - Prime style bigger
                        Text(
                          widget.movies.name,
                          style: const TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),

                        // 2. Meta row - Year | Rating | Duration | Genre
                        Row(
                          children: [
                            Text("2023", style: TextStyle(color: Colors.grey[400], fontSize: 14)),
                            const SizedBox(width: 8),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(3)),
                              child: Text("U/A 13+", style: TextStyle(color: Colors.grey[400], fontSize: 12)),
                            ),
                            const SizedBox(width: 8),
                            Text("2h 46m", style: TextStyle(color: Colors.grey[400], fontSize: 14)),
                            const SizedBox(width: 8),
                            Text("Action", style: TextStyle(color: Colors.grey[400], fontSize: 14)),
                          ],
                        ),
                        const SizedBox(height: 10),

                        // 3. Included with Prime badge
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Color(0xFF00A8E1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            "Included with Prime",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                        ),
                        const SizedBox(height: 16),

                        // 4. Description - grey text
                        Text(
                          widget.movies.desc,
                          style: TextStyle(color: Colors.grey[300], fontSize: 16, height: 1.4),
                        ),
                        const SizedBox(height: 20),

                        // 5. Director/Producer/Cast with labels
                        Text("Director: ${widget.movies.director}", style: TextStyle(color: Colors.grey[400], fontSize: 15)),
                        const SizedBox(height: 6),
                        Text("Producer: ${widget.movies.producer}", style: TextStyle(color: Colors.grey[400], fontSize: 15)),
                        const SizedBox(height: 6),
                        Text("Cast: ${widget.movies.cast}", style: TextStyle(color: Colors.grey[400], fontSize: 15)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}