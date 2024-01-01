import 'dart:convert';

Results resultsFromJson(String string) => Results.fromJson(json.decode(string));

String resultsToJson(Results results) => json.encode(results.toJson());

class Results {
  String? thumbnail;
  int? id;
  String? title;
  String? dateAndTime;
  String? slug;
  String? createdAt;
  String? manifest;
  int? liveStatus;
  String? liveManifest;
  bool? isLive;
  String? channelImage;
  String? channelName;
  String? channelUsername;
  bool? isVerified;
  String? channelSlug;
  String? channelSubscriber;
  int? channelId;
  String? type;
  String? viewers;
  String? duration;
  String? objectType;

  Results({
    this.thumbnail,
    this.id,
    this.title,
    this.dateAndTime,
    this.slug,
    this.createdAt,
    this.manifest,
    this.liveStatus,
    this.liveManifest,
    this.isLive,
    this.channelImage,
    this.channelName,
    this.channelUsername,
    this.isVerified,
    this.channelSlug,
    this.channelSubscriber,
    this.channelId,
    this.type,
    this.viewers,
    this.duration,
    this.objectType,
  });

  Results copyWith({
    String? thumbnail,
    int? id,
    String? title,
    String? dateAndTime,
    String? slug,
    String? createdAt,
    String? manifest,
    int? liveStatus,
    String? liveManifest,
    bool? isLive,
    String? channelImage,
    String? channelName,
    String? channelUsername,
    bool? isVerified,
    String? channelSlug,
    String? channelSubscriber,
    int? channelId,
    String? type,
    String? viewers,
    String? duration,
    String? objectType,
  }) =>
      Results(
        thumbnail: thumbnail ?? this.thumbnail,
        id: id ?? this.id,
        title: title ?? this.title,
        dateAndTime: dateAndTime ?? this.dateAndTime,
        slug: slug ?? this.slug,
        createdAt: createdAt ?? this.createdAt,
        manifest: manifest ?? this.manifest,
        liveStatus: liveStatus ?? this.liveStatus,
        liveManifest: liveManifest ?? this.liveManifest,
        isLive: isLive ?? this.isLive,
        channelImage: channelImage ?? this.channelImage,
        channelName: channelName ?? this.channelName,
        channelUsername: channelUsername ?? this.channelUsername,
        isVerified: isVerified ?? this.isVerified,
        channelSlug: channelSlug ?? this.channelSlug,
        channelSubscriber: channelSubscriber ?? this.channelSubscriber,
        channelId: channelId ?? this.channelId,
        type: type ?? this.type,
        viewers: viewers ?? this.viewers,
        duration: duration ?? this.duration,
        objectType: objectType ?? this.objectType,
      );

  factory Results.fromJson(Map<String, dynamic> json) => Results(
        thumbnail: json['thumbnail'],
        id: json['id'],
        title: json['title'],
        dateAndTime: json['dateAndTime'],
        slug: json['slug'],
        createdAt: json['createdAt'],
        manifest: json['manifest'],
        liveStatus: json['liveStatus'],
        liveManifest: json['liveManifest'],
        isLive: json['isLive'],
        channelImage: json['channelImage'],
        channelName: json['channelName'],
        channelUsername: json['channelUsername'],
        isVerified: json['isVerified'],
        channelSlug: json['channelSlug'],
        channelSubscriber: json['channelSubscriber'],
        channelId: json['channelId'],
        type: json['type'],
        viewers: json['viewers'],
        duration: json['duration'],
        objectType: json['objectType'],
      );

  Map<String, dynamic> toJson() => {
        'thumbnail': thumbnail,
        'id': id,
        'title': title,
        'dateAndTime': dateAndTime,
        'slug': slug,
        'createdAt': createdAt,
        'manifest': manifest,
        'liveStatus': liveStatus,
        'liveManifest': liveManifest,
        'isLive': isLive,
        'channelImage': channelImage,
        'channelName': channelName,
        'channelUsername': channelUsername,
        'isVerified': isVerified,
        'channelSlug': channelSlug,
        'channelSubscriber': channelSubscriber,
        'channelId': channelId,
        'type': type,
        'viewers': viewers,
        'duration': duration,
        'objectType': objectType,
      };
}
