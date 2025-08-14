import 'package:shoe_stores/models/address.dart';

class AddressRepository {
  List<Address> getAddresses() {
    return [
      Address(
        id: "1",
        city: "New York",
        state: "NY",
        label: "Home",
        zipCode: "10001",
        fullAddress: "123 Main Street, Apt 48",
        isDefault: true,
        type: AddressType.home,
      ),
      Address(
        id: "2",
        city: "New York",
        state: "NY",
        label: "Office",
        zipCode: "10001",
        fullAddress: "324 Business Ave, Suite 200",
        type: AddressType.office,
      ),
    ];
  }

  Address? getDefaultAddress() {
    return getAddresses().firstWhere(
      (address) => address.isDefault,
      orElse: () => getAddresses().first,
    );
  }
}
