import 'package:flutter/material.dart';

class RowWidget {
  static Card customerRow({
    required String image,
    required String titleName,
    required String productName,
    required Function() onTap,
  }) {
    return Card(
        child: GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: image.isEmpty
            ? const Icon(Icons.error)
            : CircleAvatar(
                backgroundImage: NetworkImage(
                image,
                ),
              ),
        title: Text(titleName + '\n' + productName),
      ),
    ));
  }
}
