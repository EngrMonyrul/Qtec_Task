import 'dart:convert';

Links linksFromJson(String string) => Links.fromJson(json.decode(string));

String linksToJson(Links links) => json.encode(links.toJson());

class Links {
  int? next;
  Null? previous;

  Links({this.next, this.previous});

  Links copyWith({int? next, Null? previous}) =>
      Links(next: next ?? this.next, previous: previous ?? this.previous);

  factory Links.fromJson(Map<String, dynamic> json) =>
      Links(next: json['next'], previous: json['previous']);

  Map<String, dynamic> toJson() => {'next': next, 'previous': previous};
}
