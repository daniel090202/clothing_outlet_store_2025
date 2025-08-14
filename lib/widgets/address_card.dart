import 'package:flutter/material.dart';

import 'package:shoe_stores/models/address.dart';

class AddressCard extends StatelessWidget {
  final Address address;

  const AddressCard({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return const Placeholder();
  }
}
