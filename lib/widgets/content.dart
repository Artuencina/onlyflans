//Pantalla que muestra el contenido de un reel

import 'package:flutter/material.dart';
import 'package:onlyflans/models/post.dart';
import 'package:onlyflans/widgets/menubuttons.dart';
import 'package:video_player/video_player.dart';

class ContentWidget extends StatefulWidget {
  const ContentWidget({super.key, required this.post});

  final Post post;

  @override
  State<ContentWidget> createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.post.url))
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        if (_controller.value.isInitialized)
          AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
        else
          const SizedBox.shrink(),
        const MenuButtons()
      ],
    );
  }
}
