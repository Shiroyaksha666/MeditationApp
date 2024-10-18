import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({super.key});

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  late VideoPlayerController _controller;
  ChewieController? _chewieController;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/videos/vid-1.mp4');
    _chewieController = ChewieController(
      videoPlayerController: _controller,
      autoPlay: true,
      showControls: true,
      showControlsOnInitialize: false,
      aspectRatio: 0.5,
      optionsTranslation: OptionsTranslation(
        cancelButtonText: 'بازگشت',
        subtitlesButtonText: 'زیرنویس',
        playbackSpeedButtonText: 'سرعت پخش',
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _chewieController != null
          ? SafeArea(child: Chewie(controller: _chewieController!))
          : const CircularProgressIndicator(),
    );
  }
}
