import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_invest_app/blocs/bond_detail/bond_detail_bloc.dart';
import 'package:tap_invest_app/blocs/bond_detail/bond_detail_state.dart';
import 'package:tap_invest_app/data/models/bond_detail_model.dart';
import 'package:tap_invest_app/widgets/detail/financials_chart.dart';

class DetailPage extends StatelessWidget {
  final String isin;

  const DetailPage({super.key, required this.isin});

  @override
  Widget build(BuildContext context) {
    return const _DetailPageView();
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: null,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: const Center(
                child: Icon(Icons.arrow_back, color: Colors.black, size: 20),
              ),
            ),
          ),
        ),
      ),
      body: BlocBuilder<BondDetailBloc, BondDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text(message)),
            loaded: (bondDetail) => _buildContentLoaded(context, bondDetail),
          );
        },
      ),
    );
  }

  Widget _buildContentLoaded(BuildContext context, BondDetailModel bondDetail) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 24),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 0.4, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(4),
              child: Image.network(
                bondDetail.logo,
                width: 48,
                height: 48,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.business,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              bondDetail.companyName,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 16),
            Text(
              bondDetail.description,
              style: const TextStyle(
                color: Color(0xff606067),
                height: 1.5,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                _buildTag(
                  'ISIN: ${bondDetail.isin}',
                  const Color(0xffEEF6FF),
                  const Color(0xff2A7BFE),
                ),
                const SizedBox(width: 8),
                _buildTag(
                  bondDetail.status.toUpperCase(),
                  const Color(0xffEAFBF3),
                  const Color(0xff39B54A),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                _buildTab(index: 0, title: 'ISIN Analysis'),
                const SizedBox(width: 16),
                _buildTab(index: 1, title: 'Pros & Cons'),
              ],
            ),
            const Divider(height: 1, thickness: 1, color: Color(0xffE5E5EA)),
            const SizedBox(height: 24),
            if (_selectedTabIndex == 0)
              _buildIsinAnalysisTab(bondDetail)
            else
              _buildProsAndConsTab(bondDetail),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String text, Color bgColor, Color textColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w600,
          fontSize: 10,
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
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 12,
                  color: isSelected
                      ? const Color(0xff1A64D7)
                      : const Color(0xff606067),
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                ),
              ),
            ),
            if (isSelected)
              Container(height: 2, width: 76, color: const Color(0xff1A64D7)),
          ],
        ),
      ),
    );
  }

  Widget _buildIsinAnalysisTab(BondDetailModel bondDetail) {
    final details = bondDetail.issuerDetails;
    return Column(
      children: [
        FinancialsChart(financials: bondDetail.financials),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
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
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
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
                isLast: true,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDetailRow(String title, String value, {bool isLast = false}) {
    return Padding(
      padding: EdgeInsets.only(bottom: isLast ? 0 : 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(color: Color(0xFF1D4ED8), fontSize: 12),
          ),
          const SizedBox(height: 4),
          Text(
            value.isEmpty ? '-' : value,
            style: const TextStyle(
              color: Color(0xFF111827),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProsAndConsTab(BondDetailModel bondDetail) {
    final pros = bondDetail.prosAndCons.pros;
    final cons = bondDetail.prosAndCons.cons;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Pros and Cons',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 24),
          const Text(
            'Pros',
            style: TextStyle(
              color: Color(0xff1CAF5E),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          ...pros.map(
            (pro) => _buildPointItem(
              text: pro,
              icon: Icons.check,
              iconColor: const Color(0xff1CAF5E),
              iconBgColor: const Color(0xffE4F8EB),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Cons',
            style: TextStyle(
              color: Color(0xFFB45309),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          ...cons.map(
            (con) => _buildPointItem(
              text: con,
              icon: Icons.warning,
              iconColor: const Color(0xffFF9500),
              iconBgColor: const Color(0xffFFF3E1),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPointItem({
    required String text,
    required IconData icon,
    required Color iconColor,
    required Color iconBgColor,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 12,
            backgroundColor: iconBgColor,
            child: Icon(icon, size: 14, color: iconColor),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: Color(0xff333333),
                fontSize: 14,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
