import 'package:flutter/foundation.dart';

@immutable
class PhotosModel {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final Uint8List thumbnailUrl;
  final bool isLoading;

  PhotosModel copiedWith([
    bool? isLoading,
    Uint8List? thumbnailUrl,
  ]) =>
      PhotosModel(
        albumId: albumId,
        id: id,
        title: title,
        url: url,
        thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
        isLoading: isLoading ?? this.isLoading,
      );

  const PhotosModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
    required this.isLoading,
  });

  PhotosModel.fromJson(Map<String, dynamic> json)
      : albumId = json['albumId'] as int,
        id = json['id'] as int,
        title = json['title'] as String,
        url = json['url'] as String,
        thumbnailUrl = json['thumbnailUrl'] as Uint8List,
        isLoading = false;

  @override
  String toString() => 'PhotosModel (id = $id, $title)';
}
