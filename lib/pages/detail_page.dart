import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String isin;

  const DetailPage({super.key, required this.isin});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  // 0 for ISIN Analysis, 1 for Pros & Cons
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Company Detail'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        // The default back arrow is fine, but the design has a custom one.
        // We can fine-tune this later if needed.
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- Header Section ---
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: const Color(0xffF2F2F7),
                    child: Image.network(
                      'https://cdn.brandfetch.io/idVluv2fZa/w/200/h/200/theme/dark/icon.jpeg?c=1dxbfHSJFAPEGdCLU4o5B',
                      width: 32,
                      height: 32,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.business, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      'Hella Infra Private Limited',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Hella Infra is a construction materials platform that enhances operational efficiency by integrating technology into the construction industry\'s value chain.',
                style: TextStyle(color: Color(0xff606067), height: 1.5),
              ),
              const SizedBox(height: 20),

              // --- Tags Section ---
              Row(
                children: [
                  _buildTag(
                    'ISIN: INE06E507157',
                    const Color(0xffEEF6FF),
                    const Color(0xff2A7BFE),
                  ),
                  const SizedBox(width: 8),
                  _buildTag(
                    'ACTIVE',
                    const Color(0xffEAFBF3),
                    const Color(0xff39B54A),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // --- Custom Tab Bar ---
              Row(
                children: [
                  _buildTab(index: 0, title: 'ISIN Analysis'),
                  _buildTab(index: 1, title: 'Pros & Cons'),
                ],
              ),
              const Divider(height: 1, thickness: 1, color: Color(0xffE5E5EA)),
              const SizedBox(height: 24),

              // --- Conditional Tab Content ---
              if (_selectedTabIndex == 0)
                _buildIsinAnalysisTab()
              else
                _buildProsAndConsTab(), // We will build this in a later step
            ],
          ),
        ),
      ),
    );
  }

  // Helper widget for building the ISIN/Status tags
  Widget _buildTag(String text, Color bgColor, Color textColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ),
      ),
    );
  }

  // Helper widget for building a single tab
  Widget _buildTab({required int index, required String title}) {
    final isSelected = _selectedTabIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTabIndex = index;
        });
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              title,
              style: TextStyle(
                color: isSelected
                    ? const Color(0xff1A64D7)
                    : const Color(0xff606067),
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              ),
            ),
          ),
          if (isSelected)
            Container(height: 2, width: 60, color: const Color(0xff1A64D7)),
        ],
      ),
    );
  }

  // --- Content for ISIN Analysis Tab ---
  Widget _buildIsinAnalysisTab() {
    return Column(
      children: [
        // Financials Card
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'COMPANY FINANCIALS',
                    style: TextStyle(
                      color: Color(0xff8E8E93),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    // Placeholder for EBITDA/Revenue toggle
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: const Color(0xffF2F2F7),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'EBITDA  Revenue',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Center(child: Text('[Graph Placeholder]')),
              const SizedBox(height: 16),
            ],
          ),
        ),
        const SizedBox(height: 20),

        // Issuer Details Card
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Issuer Details',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 16),
              _buildDetailRow('Issuer Name', 'TRUE CREDITS PRIVATE LIMITED'),
              _buildDetailRow('Type of Issuer', 'Non PSU'),
              _buildDetailRow('Sector', 'Financial Services'),
              _buildDetailRow('Industry', 'Finance'),
              _buildDetailRow('Issuer nature', 'NBFC'),
              _buildDetailRow(
                'Corporate Identity Number (CIN)',
                'U65190HR2017PTC070653',
              ),
              _buildDetailRow('Name of the Lead Manager', '-'),
              _buildDetailRow('Registrar', 'KFIN TECHNOLOGIES PRIVATE LIMITED'),
              _buildDetailRow(
                'Name of Debenture Trustee',
                'IDBI Trusteeship Services Limited',
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Helper for a row in the issuer details card
  Widget _buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(color: Color(0xff8E8E93), fontSize: 12),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              color: Color(0xff333333),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  // --- Placeholder for Pros & Cons Tab Content ---
  Widget _buildProsAndConsTab() {
    return const Center(child: Text('Pros & Cons will be built here.'));
  }
}
