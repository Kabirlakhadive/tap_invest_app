import 'package:flutter/material.dart';
import 'package:tap_invest_app/data/models/financials_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:tap_invest_app/data/models/monthly_data_model.dart';

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
    final chartData = _showEbitda
        ? widget.financials.ebitda
        : widget.financials.revenue;

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
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
                  color: Color(0xffA3A3A3),
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter',
                ),
              ),
              _buildToggleButtons(),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 180,
            child: Stack(
              children: [
                BarChart(_buildChartData(chartData)),
                _buildYearLabels(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildYearLabels() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: IgnorePointer(
        child: Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  alignment: Alignment.center,

                  child: const Text(
                    '2024',
                    style: TextStyle(
                      color: Color(0xffB5B5B5),
                      fontSize: 8,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    '2025',
                    style: TextStyle(
                      color: Color(0xffB5B5B5),
                      fontSize: 8,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BarChartData _buildChartData(List<MonthlyDataModel> data) {
    final ebitdaMax = widget.financials.ebitda
        .map((d) => d.value)
        .reduce((a, b) => a > b ? a : b)
        .toDouble();

    final revenueMax = widget.financials.revenue
        .map((d) => d.value)
        .reduce((a, b) => a > b ? a : b)
        .toDouble();

    final ebitdaMaxScaled = (ebitdaMax / 100000).ceil() * 100000 * 1.5;
    final revenueMaxScaled = (revenueMax / 100000).ceil() * 100000 * 1.5;

    double maxValue = _showEbitda ? ebitdaMaxScaled : revenueMaxScaled;

    final barColor = _showEbitda ? Colors.grey[900] : const Color(0xff2A7BFE);
    final revenueLightColorForBackground = const Color(0xffE2EFFF);

    return BarChartData(
      maxY: maxValue,
      alignment: BarChartAlignment.center,
      borderData: FlBorderData(show: false),
      gridData: FlGridData(
        show: true,
        horizontalInterval: maxValue / 6,
        getDrawingHorizontalLine: (value) {
          return const FlLine(color: Color(0xffEAEAEA), strokeWidth: 1);
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: (value, meta) {
              final month = widget.financials.ebitda[value.toInt()].month;
              return Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  month.substring(0, 1),
                  style: const TextStyle(
                    color: Color(0xff8E8E93),
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    fontFamily: 'Inter',
                  ),
                ),
              );
            },
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 25,
            interval: maxValue / 3,
            getTitlesWidget: (value, meta) {
              if (value == 0) return const SizedBox.shrink();
              return Text(
                '₹${(value / 10000000).round()}Cr',
                style: const TextStyle(
                  color: Color(0xff8E8E93),
                  fontWeight: FontWeight.w500,
                  fontSize: 8,
                  fontFamily: 'Inter',
                ),
              );
            },
          ),
        ),
      ),
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          tooltipRoundedRadius: 6,
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            final value = (rod.toY / 10000000).toStringAsFixed(2);
            return BarTooltipItem(
              '₹$value Cr',
              const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 8,
              ),
            );
          },
        ),
      ),
      barGroups: data.asMap().entries.map((entry) {
        final index = entry.key;
        final monthlyData = entry.value;

        return BarChartGroupData(
          x: index,
          barRods: [
            BarChartRodData(
              toY: monthlyData.value.toDouble(),
              color: barColor,
              width: 12,
              borderRadius: BorderRadius.circular(2),
              backDrawRodData: _showEbitda
                  ? BackgroundBarChartRodData(
                      show: true,
                      toY:
                          (widget.financials.revenue[index].value.toDouble() /
                              revenueMaxScaled) *
                          ebitdaMaxScaled,
                      color: revenueLightColorForBackground,
                    )
                  : BackgroundBarChartRodData(show: false),
            ),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildToggleButtons() {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: const Color(0xffE5E5E5),
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(width: 0.1, color: Colors.grey),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey,
        //     blurRadius: 1,
        //     offset: const Offset(0, 2),
        //   ),
        // ],
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
    final bool isFirstButton = text == 'EBITDA';
    return GestureDetector(
      onTap: () {
        setState(() {
          _showEbitda = isFirstButton;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          border: Border.all(
            width: 0.1,
            color: isSelected
                ? const Color.fromARGB(155, 146, 146, 146)
                : Colors.transparent,
          ),
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(isFirstButton ? 16.0 : 0),
            right: Radius.circular(!isFirstButton ? 16.0 : 0),
          ),
          // boxShadow: isSelected
          //     ? [
          //         BoxShadow(
          //           color: Colors.grey,
          //           blurRadius: 4,
          //           offset: const Offset(0, 2),
          //         ),
          //       ]
          //     : [],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
            color: isSelected
                ? const Color(0xff333333)
                : const Color(0xff8E8E93),
            fontFamily: 'Inter',
          ),
        ),
      ),
    );
  }
}
