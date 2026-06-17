import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.dart';
import 'bank.dart';
import 'company.dart';
import 'crypto.dart';
import 'hair.dart';

part 'profiledata.freezed.dart';
part 'profiledata.g.dart';

@freezed
class Profiledata with _$Profiledata {
  factory Profiledata({
    int? id,
    String? firstName,
    String? lastName,
    String? maidenName,
    int? age,
    String? gender,
    String? email,
    String? phone,
    String? username,
    String? password,
    String? birthDate,
    String? image,
    String? bloodGroup,
    double? height,
    double? weight,
    String? eyeColor,
    Hair? hair,
    String? ip,
    Address? address,
    String? macAddress,
    String? university,
    Bank? bank,
    Company? company,
    String? ein,
    String? ssn,
    String? userAgent,
    Crypto? crypto,
    String? role,
  }) = _Profiledata;

  factory Profiledata.fromJson(Map<String, dynamic> json) =>
      _$ProfiledataFromJson(json);
}
