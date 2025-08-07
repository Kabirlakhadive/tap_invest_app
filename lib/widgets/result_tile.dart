import 'package:flutter/material.dart';

class ResultTile extends StatelessWidget {
  final String isin;
  final String companyName;
  final String rating;
  final String logoUrl;
  // Add the searchQuery parameter. It can be empty.
  final String searchQuery;

  const ResultTile({
    super.key,
    required this.isin,
    required this.companyName,
    required this.rating,
    required this.logoUrl,
    // Make it optional with a default empty value.
    this.searchQuery = '',
  });

  // This is a helper function to build the highlighted text.
  List<TextSpan> _buildHighlightedText(String text, String query) {
    if (query.isEmpty) {
      return [TextSpan(text: text)];
    }

    final List<TextSpan> spans = [];
    final lowerCaseText = text.toLowerCase();
    final lowerCaseQuery = query.toLowerCase();

    int start = 0;
    int indexOfQuery;

    while ((indexOfQuery = lowerCaseText.indexOf(lowerCaseQuery, start)) !=
        -1) {
      // Add the text before the match
      if (indexOfQuery > start) {
        spans.add(TextSpan(text: text.substring(start, indexOfQuery)));
      }
      // Add the matched text with highlighting
      spans.add(
        TextSpan(
          text: text.substring(indexOfQuery, indexOfQuery + query.length),
          style: const TextStyle(
            backgroundColor: Color(0xffFFFBEB), // Yellow highlight color
            fontWeight: FontWeight.w900, // Make highlighted text bolder
          ),
        ),
      );
      start = indexOfQuery + query.length;
    }

    // Add the remaining text after the last match
    if (start < text.length) {
      spans.add(TextSpan(text: text.substring(start)));
    }

    return spans;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
      // Use RichText to allow for different text styles in one line.
      title: RichText(
        text: TextSpan(
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Colors.black,
            fontFamily: 'Inter', // Ensure font matches
          ),
          children: _buildHighlightedText(isin, searchQuery),
        ),
      ),
      subtitle: RichText(
        text: TextSpan(
          style: const TextStyle(
            color: Color(0xff8E8E93),
            fontSize: 13,
            height: 1.4,
            fontFamily: 'Inter', // Ensure font matches
          ),
          children: [
            TextSpan(text: '$rating • '),
            ..._buildHighlightedText(companyName, searchQuery),
          ],
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
