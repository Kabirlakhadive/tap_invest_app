import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tap_invest_app/pages/detail_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_invest_app/blocs/bond_detail/bond_detail_bloc.dart';
import 'package:tap_invest_app/blocs/bond_detail/bond_detail_event.dart';
import 'package:tap_invest_app/di/injection.dart';

class ResultTile extends StatelessWidget {
  final String isin;
  final String companyName;
  final String rating;
  final String logoUrl;
  final String searchQuery;

  const ResultTile({
    super.key,
    required this.isin,
    required this.companyName,
    required this.rating,
    required this.logoUrl,
    this.searchQuery = '',
  });

  List<TextSpan> _buildHighlightedText(
    String text,
    String query,
    TextStyle defaultStyle,
    TextStyle highlightStyle,
  ) {
    if (query.isEmpty) {
      return [TextSpan(text: text, style: defaultStyle)];
    }

    final List<TextSpan> spans = [];
    final lowerCaseText = text.toLowerCase();
    final lowerCaseQuery = query.toLowerCase();

    int start = 0;
    int indexOfQuery;

    while ((indexOfQuery = lowerCaseText.indexOf(lowerCaseQuery, start)) !=
        -1) {
      if (indexOfQuery > start) {
        spans.add(
          TextSpan(
            text: text.substring(start, indexOfQuery),
            style: defaultStyle,
          ),
        );
      }
      spans.add(
        TextSpan(
          text: text.substring(indexOfQuery, indexOfQuery + query.length),
          style: highlightStyle,
        ),
      );
      start = indexOfQuery + query.length;
    }

    if (start < text.length) {
      spans.add(TextSpan(text: text.substring(start), style: defaultStyle));
    }

    return spans;
  }

  @override
  Widget build(BuildContext context) {
    const defaultTitleStyle = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12,
      color: Colors.black,
      fontFamily: 'Inter',
    );

    final highlightTitleStyle = defaultTitleStyle.copyWith(
      backgroundColor: const Color(0xffFFFBEB),
      fontWeight: FontWeight.w900,
    );

    const defaultSubtitleStyle = TextStyle(
      color: Color(0xff8E8E93),
      fontSize: 10,
      height: 1.4,
      fontFamily: 'Inter',
    );

    final highlightSubtitleStyle = defaultSubtitleStyle.copyWith(
      backgroundColor: const Color(0xffFFFBEB),
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );

    return InkWell(
      onTap: () {
        HapticFeedback.mediumImpact();
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) =>
                  getIt<BondDetailBloc>()
                    ..add(const BondDetailEvent.fetchDetailRequested()),
              child: DetailPage(isin: isin),
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),

        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey.shade300, width: 0.4),
              ),
              child: ClipOval(
                child: Image.network(
                  logoUrl,
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.business, color: Colors.grey);
                  },
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: _buildHighlightedText(
                        isin,
                        searchQuery,
                        defaultTitleStyle,
                        highlightTitleStyle,
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$rating • ',
                          style: defaultSubtitleStyle,
                        ),
                        ..._buildHighlightedText(
                          companyName,
                          searchQuery,
                          defaultSubtitleStyle,
                          highlightSubtitleStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 12,
              color: Color(0xff1447E6),
            ),
          ],
        ),
      ),
    );
  }
}
