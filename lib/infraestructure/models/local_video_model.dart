import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel {
  final String videoUrl;
  final String name;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.videoUrl,
    required this.name,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
        videoUrl: json['videoUrl'],
        name: json['name'] ?? 'No name',
        likes: json['likes'] ?? 0,
        views: json['views'] ?? 0,
      );

  VideoPost toVideoPostEntity() => VideoPost(
        videoUrl: videoUrl,
        caption: name,
        likes: likes,
        views: views,
      );
}
