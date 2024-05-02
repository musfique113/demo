import 'package:demo/features/home/domain/entities/coord.dart';

class CoordModel {
  double? lon;
  double? lat;

  CoordModel({this.lon, this.lat});

  CoordModel.fromJson(Map<String, dynamic> json) {
    lon = json['lon'];
    lat = json['lat'];
  }

  Coord toEntity() => Coord(lon: lon ?? 0, lat: lat ?? 0);
}
