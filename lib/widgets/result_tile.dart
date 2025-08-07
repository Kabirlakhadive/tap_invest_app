import 'package:flutter/material.dart';

class ResultTile extends StatelessWidget {
  // We'll require these parameters to display the data from the API later.
  final String isin;
  final String companyName;
  final String rating;
  final String logoUrl;

  const ResultTile({
    super.key,
    required this.isin,
    required this.companyName,
    required this.rating,
    required this.logoUrl,
  });

  @override
  Widget build(BuildContext context) {
    // The parent Container has been removed. The widget is now transparent.
    return ListTile(
      // contentPadding makes sure the tile content aligns nicely.
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      leading: CircleAvatar(
        radius: 22,
        backgroundColor: const Color(0xffF2F2F7),
        child: Image.network(
          logoUrl,
          width: 30,
          height: 30,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(Icons.business, color: Colors.grey);
          },
        ),
      ),
      title: Text(
        isin,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 15,
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        '$rating • $companyName',
        style: const TextStyle(
          color: Color(0xff8E8E93),
          fontSize: 13,
          height: 1.4,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: Color(0xffC7C7CC),
      ),
    );
  }
}
