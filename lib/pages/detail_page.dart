import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_invest_app/blocs/bond_detail/bond_detail_bloc.dart';
import 'package:tap_invest_app/blocs/bond_detail/bond_detail_event.dart';
import 'package:tap_invest_app/blocs/bond_detail/bond_detail_state.dart';
import 'package:tap_invest_app/data/models/bond_detail_model.dart';
import 'package:tap_invest_app/di/injection.dart';

class DetailPage extends StatelessWidget {
  final String isin;

  const DetailPage({super.key, required this.isin});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<BondDetailBloc>()
            ..add(const BondDetailEvent.fetchDetailRequested()),
      child: const _DetailPageView(),
    );
  }
}

class _DetailPageView extends StatefulWidget {
  const _DetailPageView();

  @override
  State<_DetailPageView> createState() => _DetailPageViewState();
}

class _DetailPageViewState extends State<_DetailPageView> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Company Detail'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),

      body: BlocBuilder<BondDetailBloc, BondDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text(message)),
            // When data is loaded, we pass it to our main content widget.
            loaded: (bondDetail) => _buildContentLoaded(context, bondDetail),
          );
        },
      ),
    );
  }

  Widget _buildContentLoaded(BuildContext context, BondDetailModel bondDetail) {
    return SingleChildScrollView(
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
                    bondDetail.logo,
                    width: 32,
                    height: 32,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.business, color: Colors.grey),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    bondDetail.companyName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              bondDetail.description,
              style: const TextStyle(color: Color(0xff606067), height: 1.5),
            ),
            const SizedBox(height: 20),
            // --- Tags Section ---
            Row(
              children: [
                _buildTag(
                  'ISIN: ${bondDetail.isin}',
                  const Color(0xffEEF6FF),
                  const Color(0xff2A7BFE),
                ),
                const SizedBox(width: 8),
                _buildTag(
                  bondDetail.status,
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
              _buildIsinAnalysisTab(bondDetail)
            else
              _buildProsAndConsTab(bondDetail),
          ],
        ),
      ),
    );
  }

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
            Container(height: 2, width: 100, color: const Color(0xff1A64D7)),
        ],
      ),
    );
  }

  Widget _buildIsinAnalysisTab(BondDetailModel bondDetail) {
    final details = bondDetail.issuerDetails;
    return Column(
      children: [
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
              const Center(
                child: Text('[Graph Placeholder - To be built later]'),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
        const SizedBox(height: 20),

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
              _buildDetailRow('Issuer Name', details.issuerName),
              _buildDetailRow('Type of Issuer', details.typeOfIssuer),
              _buildDetailRow('Sector', details.sector),
              _buildDetailRow('Industry', details.industry),
              _buildDetailRow('Issuer nature', details.issuerNature),
              _buildDetailRow('Corporate Identity Number (CIN)', details.cin),
              _buildDetailRow('Name of the Lead Manager', details.leadManager),
              _buildDetailRow('Registrar', details.registrar),
              _buildDetailRow(
                'Name of Debenture Trustee',
                details.debentureTrustee,
              ),
            ],
          ),
        ),
      ],
    );
  }

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

  Widget _buildProsAndConsTab(BondDetailModel bondDetail) {
    return const Center(
      child: Text('Pros & Cons UI will be built in the next step.'),
    );
  }
}
