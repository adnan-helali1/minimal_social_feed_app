import 'dart:io';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/widgets/pdf_view_screen.dart';
import 'package:path_provider/path_provider.dart';
import '../../data/models/feed_model.dart';

class DocumentWidget extends StatefulWidget {
  final Media media;

  const DocumentWidget({super.key, required this.media});

  @override
  State<DocumentWidget> createState() => _DocumentWidgetState();
}

class _DocumentWidgetState extends State<DocumentWidget> {
  bool isDownloading = false;
  double progress = 0.0;

  Future<String> downloadFile(String url, String fileName) async {
    final dir = await getApplicationDocumentsDirectory();
    final filePath = "${dir.path}/$fileName";

    await Dio().download(
      url,
      filePath,
      onReceiveProgress: (received, total) {
        setState(() {
          isDownloading = true;
          progress = received / total;
        });
      },
    );

    setState(() => isDownloading = false);
    return filePath;
  }

  @override
  Widget build(BuildContext context) {
    final fileName = widget.media.url!.split('/').last;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          const Icon(Icons.insert_drive_file, size: 30),
          const SizedBox(width: 10),

          Expanded(
            child: Text(fileName, maxLines: 1, overflow: TextOverflow.ellipsis),
          ),

          // تحميل الملف
          isDownloading
              ? SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(value: progress),
              )
              : IconButton(
                icon: const Icon(Icons.download),
                onPressed: () async {
                  final path = await downloadFile(widget.media.url!, fileName);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("تم التحميل في: $path")),
                  );
                },
              ),

          // زر فتح PDF فقط
          if (fileName.toLowerCase().endsWith(".pdf"))
            IconButton(
              icon: const Icon(Icons.open_in_new),
              onPressed: () async {
                final path = await downloadFile(widget.media.url!, fileName);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PdfViewerScreen(filePath: path),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}
