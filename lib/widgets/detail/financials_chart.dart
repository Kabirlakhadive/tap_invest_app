import 'package:flutter/material.dart';
import 'package:tap_invest_app/data/models/financials_model.dart';
import 'package:fl_chart/fl_chart.dart';

class FinancialsChart extends StatefulWidget {
  final FinancialsModel financials;

  const FinancialsChart({super.key, required this.financials});

  @override
  State<FinancialsChart> createState() => _FinancialsChartState();
}

class _FinancialsChartState extends State<FinancialsChart> {
  bool _showEbitda = true;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              _buildToggleButtons(),
            ],
          ),
          const SizedBox(height: 32),
          // We will build the actual chart here in the next step
          const Center(child: Text('[Chart will go here]')),
        ],
      ),
    );
  }

  Widget _buildToggleButtons() {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: const Color(0xffF2F2F7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildButton('EBITDA', _showEbitda),
          _buildButton('Revenue', !_showEbitda),
        ],
      ),
    );
  }

  Widget _buildButton(String text, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _showEbitda = text == 'EBITDA';
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(6),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ]
              : [],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 13,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
            color: isSelected
                ? const Color(0xff333333)
                : const Color(0xff8E8E93),
          ),
        ),
      ),
    );
  }
}
