import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';


class ListProfile extends StatelessWidget {

  final Iconify leadingProfile;
  final Text titleProfile;
  final Iconify trailingProfile;

  const ListProfile(
      {super.key,
        required this.leadingProfile,
        required this.titleProfile,
        required this.trailingProfile});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 25),
        leading: leadingProfile,
        title: titleProfile,
        trailing: trailingProfile);
  }
}