import 'package:flutter/material.dart';

class VideoControlsWidget extends StatelessWidget {
  final bool isPlaying;
  final bool isMuted;
  final Duration position;
  final Duration total;
  final bool showUI;
  final VoidCallback onTogglePlay;
  final VoidCallback onToggleMute;
  final ValueChanged<double> onSeek;

  const VideoControlsWidget({
    super.key,
    required this.isPlaying,
    required this.isMuted,
    required this.position,
    required this.total,
    required this.showUI,
    required this.onTogglePlay,
    required this.onToggleMute,
    required this.onSeek,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: showUI ? 1 : 0,
      child: Stack(
        children: [
          // Play/Pause icon
          Center(
            child: Icon(
              isPlaying ? Icons.pause_circle : Icons.play_circle,
              size: 60,
              color: Colors.white.withOpacity(0.85),
            ),
          ),
          // Mute button
          Positioned(
            top: 12,
            right: 12,
            child: CircleAvatar(
              backgroundColor: Colors.black54,
              child: IconButton(
                icon: Icon(
                  isMuted ? Icons.volume_off : Icons.volume_up,
                  color: Colors.white,
                ),
                onPressed: onToggleMute,
              ),
            ),
          ),
          // Slider
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
                overlayShape: const RoundSliderOverlayShape(overlayRadius: 12),
                trackHeight: 3,
                activeTrackColor: Colors.white,
                inactiveTrackColor: Colors.white30,
                thumbColor: Colors.white,
              ),
              child: Slider(
                min: 0,
                max: total.inMilliseconds.toDouble(),
                value:
                    position.inMilliseconds
                        .clamp(0, total.inMilliseconds)
                        .toDouble(),
                onChanged: onSeek,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
