enum AddressType { home, office, other }

class Address {
  final String id;
  final String city;
  final String label;
  final String state;
  final String zipCode;
  final String fullAddress;

  final bool isDefault;

  final AddressType type;

  Address({
    required this.id,
    required this.city,
    required this.state,
    required this.label,
    required this.zipCode,
    required this.fullAddress,
    this.isDefault = false,
    this.type = AddressType.home,
  });

  String get typeString => type.name;
}
