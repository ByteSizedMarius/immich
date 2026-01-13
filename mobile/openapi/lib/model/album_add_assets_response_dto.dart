//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AlbumAddAssetsResponseDto {
  /// Returns a new [AlbumAddAssetsResponseDto] instance.
  AlbumAddAssetsResponseDto({
    required this.album,
    this.results = const [],
  });

  AlbumResponseDto album;

  List<BulkIdResponseDto> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AlbumAddAssetsResponseDto &&
    other.album == album &&
    _deepEquality.equals(other.results, results);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (album.hashCode) +
    (results.hashCode);

  @override
  String toString() => 'AlbumAddAssetsResponseDto[album=$album, results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'album'] = this.album;
      json[r'results'] = this.results;
    return json;
  }

  /// Returns a new [AlbumAddAssetsResponseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AlbumAddAssetsResponseDto? fromJson(dynamic value) {
    upgradeDto(value, "AlbumAddAssetsResponseDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AlbumAddAssetsResponseDto(
        album: AlbumResponseDto.fromJson(json[r'album'])!,
        results: BulkIdResponseDto.listFromJson(json[r'results']),
      );
    }
    return null;
  }

  static List<AlbumAddAssetsResponseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlbumAddAssetsResponseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlbumAddAssetsResponseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AlbumAddAssetsResponseDto> mapFromJson(dynamic json) {
    final map = <String, AlbumAddAssetsResponseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AlbumAddAssetsResponseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AlbumAddAssetsResponseDto-objects as value to a dart map
  static Map<String, List<AlbumAddAssetsResponseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AlbumAddAssetsResponseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AlbumAddAssetsResponseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'album',
    'results',
  };
}

