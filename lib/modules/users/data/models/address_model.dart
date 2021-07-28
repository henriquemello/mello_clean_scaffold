import 'package:json_annotation/json_annotation.dart';

part 'address_model.g.dart';

@JsonSerializable()
class AddressModel {
  final String street;
  final String suite;
  final String city;

  AddressModel({
    this.street,
    this.suite,
    this.city,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  static List<AddressModel> fromJsonList(List<dynamic> json) =>
      json.map((i) => AddressModel.fromJson(i)).toList() ?? [];

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);
}
