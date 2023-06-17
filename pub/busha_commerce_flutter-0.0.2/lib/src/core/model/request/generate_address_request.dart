import 'dart:convert';

class GenerateAddressRequest {
  GenerateAddressRequest({required this.currencyId, required this.chains});

  final String currencyId;
  final List<String> chains;

  factory GenerateAddressRequest.fromRawJson(
    String str,
  ) =>
      GenerateAddressRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GenerateAddressRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      GenerateAddressRequest(
        currencyId: json["currency_id"],
        chains: List<String>.from(json["chains"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "currency_id": currencyId,
        "chains": List<dynamic>.from(chains.map((x) => x)),
      };
}
