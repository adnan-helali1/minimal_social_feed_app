import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class VideoVisibilityWrapper extends StatelessWidget {
  final Widget child;
  final Function(bool isVisible) onVisibilityChanged;

  const VideoVisibilityWrapper({
    super.key,
    required this.child,
    required this.onVisibilityChanged,
  });

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: UniqueKey(),
      onVisibilityChanged: (info) {
        onVisibilityChanged(info.visibleFraction > 0.2);
      },
      child: child,
    );
  }
}
