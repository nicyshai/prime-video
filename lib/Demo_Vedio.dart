import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyVedio extends StatefulWidget {
  String videoUrl;
  MyVedio(this. videoUrl, {super.key});

  @override
  State<MyVedio> createState() => _MyVedioState();
}

class _MyVedioState extends State<MyVedio> {
  late VideoPlayerController _controller;
  ChewieController?chewieController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initplayer();
  }
  Future<void> initplayer() async {
    _controller=await VideoPlayerController.networkUrl(Uri.parse("https://youtu.be/RGg-Qx1rL9U?list=RDRGg-Qx1rL9U"));
    await _controller.initialize();
    try{
      chewieController=ChewieController(videoPlayerController:_controller,
        aspectRatio: _controller.value.aspectRatio,
        autoPlay: false,
        looping: false,
        allowFullScreen: true,
        allowMuting: true,
        allowPlaybackSpeedChanging: true,
        showControls: true,
      );

    }catch(e){print(e);

    if(mounted){
      setState(() {

      });
    }

    }
    @override
    void dispose() {
      super.dispose();
      _controller.dispose();
      chewieController?.dispose();


    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: chewieController!=null&& chewieController!.videoPlayerController.value.isInitialized?
        Chewie(controller: chewieController!):Center(child: CircularProgressIndicator(),)
    );
  }
}
