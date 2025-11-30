import 'dart:async';
import 'package:flutter/material.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/widgets/video_player_controls_widget.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String url;
  const VideoPlayerWidget({super.key, required this.url});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController controller;
  bool isPlaying = false;
  bool isMuted = false;
  bool showUI = true;
  Timer? hideUITimer;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    controller = VideoPlayerController.networkUrl(Uri.parse(widget.url));
    try {
      await controller.initialize();
      controller.setLooping(true);
      // Vedio Didnt play at the beggening
      setState(() {});
    } catch (e) {
      debugPrint("VIDEO ERROR: $e");
    }
  }

  void _play() {
    controller.play();
    isPlaying = true;
    _startHideTimer();
    setState(() {});
  }

  void _pause() {
    controller.pause();
    isPlaying = false;
    setState(() {});
  }

  void _startHideTimer() {
    hideUITimer?.cancel();
    hideUITimer = Timer(const Duration(seconds: 2), () {
      setState(() => showUI = false);
    });
  }

  void _togglePlayPause() {
    if (isPlaying) {
      _pause();
    } else {
      _play();
    }
    _showControls();
  }

  void _toggleMute() {
    isMuted = !isMuted;
    controller.setVolume(isMuted ? 0 : 1);
    _showControls();
  }

  void _showControls() {
    setState(() => showUI = true);
    _startHideTimer();
  }

  @override
  void dispose() {
    hideUITimer?.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }

    final position = controller.value.position;
    final total = controller.value.duration;

    return VisibilityDetector(
      key: Key(widget.url),
      onVisibilityChanged: (info) {
        if (info.visibleFraction >= 0.2 && !isPlaying) {
          _play();
        } else if (info.visibleFraction < 0.2 && isPlaying) {
          _pause();
        }
      },
      child: GestureDetector(
        onTap: _togglePlayPause,
        child: Stack(
          alignment: Alignment.center,
          children: [
            AspectRatio(
              aspectRatio: controller.value.aspectRatio,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: VideoPlayer(controller),
              ),
            ),
            VideoControlsWidget(
              isPlaying: isPlaying,
              isMuted: isMuted,
              position: position,
              total: total,
              showUI: showUI,
              onTogglePlay: _togglePlayPause,
              onToggleMute: _toggleMute,
              onSeek:
                  (value) =>
                      controller.seekTo(Duration(milliseconds: value.toInt())),
            ),
          ],
        ),
      ),
    );
  }
}
