import 'package:meta/meta.dart';
import 'dart:convert';

class ToiletsResponse {
  final List<Toilet> toilets;

  const ToiletsResponse({
    @required this.toilets,
  });

  factory ToiletsResponse.fromMap(Map<String, dynamic> map) {
    return new ToiletsResponse(
      toilets:
          map.values.map<Toilet>((e) => Toilet.fromMap((e))).toList(),
    );
  }

  @override
  String toString() {
    return 'ToiletsResponse{toilets: $toilets}';
  }
}

class Toilet {

  Toilet({
    @required this.id,
    @required this.name,
    @required this.street,
    @required this.city,
    @required this.state,
    @required this.accessible,
    @required this.unisex,
    @required this.directions,
    @required this.comment,
    @required this.latitude,
    @required this.longitude,
    @required this.createdAt,
    @required this.updatedAt,
    @required this.downvote,
    @required this.upvote,
    @required this.country,
    @required this.changingTable,
    @required this.editId,
    @required this.approved,
    @required this.distance,
    @required this.bearing,
  });

  final int id;
  final String name;
  final String street;
  final String city;
  final String state;
  final bool accessible;
  final bool unisex;
  final String directions;
  final String comment;
  final double latitude;
  final double longitude;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int downvote;
  final int upvote;
  final String country;
  final bool changingTable;
  final int editId;
  final bool approved;
  final double distance;
  final String bearing;

  Toilet copyWith({
    int id,
    String name,
    String street,
    String city,
    String state,
    bool accessible,
    bool unisex,
    String directions,
    String comment,
    double latitude,
    double longitude,
    DateTime createdAt,
    DateTime updatedAt,
    int downvote,
    int upvote,
    String country,
    bool changingTable,
    int editId,
    bool approved,
    double distance,
    String bearing,
  }) =>
      Toilet(
        id: id ?? this.id,
        name: name ?? this.name,
        street: street ?? this.street,
        city: city ?? this.city,
        state: state ?? this.state,
        accessible: accessible ?? this.accessible,
        unisex: unisex ?? this.unisex,
        directions: directions ?? this.directions,
        comment: comment ?? this.comment,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        downvote: downvote ?? this.downvote,
        upvote: upvote ?? this.upvote,
        country: country ?? this.country,
        changingTable: changingTable ?? this.changingTable,
        editId: editId ?? this.editId,
        approved: approved ?? this.approved,
        distance: distance ?? this.distance,
        bearing: bearing ?? this.bearing,
      );

  factory Toilet.fromJson(String str) => Toilet.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Toilet.fromMap(Map<String, dynamic> json) => Toilet(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        street: json["street"] == null ? null : json["street"],
        city: json["city"] == null ? null : json["city"],
        state: json["state"] == null ? null : json["state"],
        accessible: json["accessible"] == null ? null : json["accessible"],
        unisex: json["unisex"] == null ? null : json["unisex"],
        directions: json["directions"] == null ? null : json["directions"],
        comment: json["comment"] == null ? null : json["comment"],
        latitude: json["latitude"] == null ? null : json["latitude"].toDouble(),
        longitude:
            json["longitude"] == null ? null : json["longitude"].toDouble(),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        downvote: json["downvote"] == null ? null : json["downvote"],
        upvote: json["upvote"] == null ? null : json["upvote"],
        country: json["country"] == null ? null : json["country"],
        changingTable:
            json["changing_table"] == null ? null : json["changing_table"],
        editId: json["edit_id"] == null ? null : json["edit_id"],
        approved: json["approved"] == null ? null : json["approved"],
        distance: json["distance"] == null ? null : json["distance"].toDouble(),
        bearing: json["bearing"] == null ? null : json["bearing"],
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "street": street == null ? null : street,
        "city": city == null ? null : city,
        "state": state == null ? null : state,
        "accessible": accessible == null ? null : accessible,
        "unisex": unisex == null ? null : unisex,
        "directions": directions == null ? null : directions,
        "comment": comment == null ? null : comment,
        "latitude": latitude == null ? null : latitude,
        "longitude": longitude == null ? null : longitude,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "downvote": downvote == null ? null : downvote,
        "upvote": upvote == null ? null : upvote,
        "country": country == null ? null : country,
        "changing_table": changingTable == null ? null : changingTable,
        "edit_id": editId == null ? null : editId,
        "approved": approved == null ? null : approved,
        "distance": distance == null ? null : distance,
        "bearing": bearing == null ? null : bearing,
      };

  @override
  String toString() {
    return 'Toilet{id: $id, name: $name, street: $street, city: $city, state: $state, accessible: $accessible, unisex: $unisex, directions: $directions, comment: $comment, latitude: $latitude, longitude: $longitude, createdAt: $createdAt, updatedAt: $updatedAt, downvote: $downvote, upvote: $upvote, country: $country, changingTable: $changingTable, editId: $editId, approved: $approved, distance: $distance, bearing: $bearing}';
  }
}
