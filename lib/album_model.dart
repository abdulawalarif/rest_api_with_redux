import 'package:flutter/foundation.dart'show immutable, Uint8List;

@immutable
class AlbumModel {
  final int albumId;
  final int id;
  final String title;
  final Uint8List url;
  final Uint8List thumbnailUrl;
  final bool isLoading;

  AlbumModel copiedWith([
    bool? isLoading,
    Uint8List? url,
    Uint8List? thumbnailUrl,
  ]) =>
      AlbumModel(
        albumId: albumId,
        id: id,
        title: title,
        url: url??this.url,
        thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
        isLoading: isLoading ?? this.isLoading,
      );

  const AlbumModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
    required this.isLoading,
  });

  AlbumModel.fromJson(Map<String, dynamic> json)
      : albumId = json['albumId'] as int,
        id = json['id'] as int,
        title = json['title'] as String,
        url = json['url'] as Uint8List,
        thumbnailUrl = json['thumbnailUrl'] as Uint8List,
        isLoading = false;

  @override
  String toString() => 'PhotosModel (id = $id, $title)';
}
