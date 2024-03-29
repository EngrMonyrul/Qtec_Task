import 'dart:convert';

import 'package:untitled/models/result_model.dart';
import 'link_data.dart';

Autogenerated autogeneratedFromJson(String string) =>
    Autogenerated.fromJson(json.decode(string));

String autogeneratedToJson(Autogenerated autogenerated) =>
    json.encode(autogenerated.toString());

class Autogenerated {
  Links? links;
  int? total;
  int? page;
  int? pageSize;
  List<Results>? results;

  Autogenerated(
      {this.links, this.total, this.page, this.pageSize, this.results});

  Autogenerated copyWith({
    Links? links,
    int? total,
    int? page,
    int? pageSize,
    List<Results>? results,
  }) =>
      Autogenerated(
        links: links ?? this.links,
        total: total ?? this.total,
        page: page ?? this.page,
        pageSize: pageSize ?? this.pageSize,
        results: results ?? this.results,
      );

  factory Autogenerated.fromJson(Map<String, dynamic> json) => Autogenerated(
        links: json['links'] != null ? Links.fromJson(json['links']) : null,
        total: json['total'],
        page: json['page'],
        pageSize: json['page_size'],
        results: json['results'],
      );

  Map<String, dynamic> toJson() => {
        'links': links,
        'total': total,
        'page': page,
        'pageSize': pageSize,
        'results': results,
      };
}
