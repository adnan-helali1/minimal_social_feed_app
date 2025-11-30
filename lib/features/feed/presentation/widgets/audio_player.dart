import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:minimal_social_feed_app/core/models/posts_response_model.dart';
import 'package:rxdart/rxdart.dart';

class AudioPlayerWidget extends StatefulWidget {
  final Media media;

  const AudioPlayerWidget({super.key, required this.media});

  @override
  State<AudioPlayerWidget> createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  late AudioPlayer _player;

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    _player.setUrl(widget.media.url ?? widget.media.filePath ?? "");
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.shade200,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // عنوان بسيط
          const Text(
            "تشغيل ملف صوتي",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),

          // شريط التقدم
          StreamBuilder<DurationState>(
            stream: _durationStateStream,
            builder: (context, snapshot) {
              final durationState = snapshot.data;

              final progress = durationState?.position ?? Duration.zero;
              final buffered = durationState?.bufferedPosition ?? Duration.zero;
              final total = durationState?.total ?? Duration.zero;

              return ProgressBar(
                progress: progress,
                buffered: buffered,
                total: total,
                onSeek: _player.seek,
              );
            },
          ),

          const SizedBox(height: 8),

          // أزرار التحكم
          Row(
            children: [
              StreamBuilder<PlayerState>(
                stream: _player.playerStateStream,
                builder: (context, snapshot) {
                  final playerState = snapshot.data;
                  final playing = playerState?.playing ?? false;

                  return IconButton(
                    iconSize: 40,
                    icon: Icon(
                      playing
                          ? Icons.pause_circle_filled
                          : Icons.play_circle_fill,
                    ),
                    onPressed: () {
                      playing ? _player.pause() : _player.play();
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  // بث يجمع الوقت الحالي – المؤقت – المدة
  Stream<DurationState> get _durationStateStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, DurationState>(
        _player.positionStream,
        _player.bufferedPositionStream,
        _player.durationStream,
        (position, buffered, total) => DurationState(
          position: position,
          bufferedPosition: buffered,
          total: total ?? Duration.zero,
        ),
      );
}

// موديل صغير لاستخدامه داخلياً
class DurationState {
  final Duration position;
  final Duration bufferedPosition;
  final Duration total;

  DurationState({
    required this.position,
    required this.bufferedPosition,
    required this.total,
  });
}
