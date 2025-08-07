import 'package:flutter/material.dart';

import 'package:tap_invest_app/widgets/result_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ... (The top part of the UI remains the same)
              const SizedBox(height: 16),
              const Text(
                'Home',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xff8E8E93),
                    ),
                    hintText: 'Search by Issuer Name or ISIN',
                    hintStyle: const TextStyle(
                      color: Color(0xff8E8E93),
                      fontSize: 16,
                    ),
                    filled: true,
                    fillColor: Colors.transparent,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'SUGGESTED RESULTS',
                style: TextStyle(
                  color: Color(0xff8E8E93),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),

              // This is the new container for all the results.
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  children: [
                    const ResultTile(
                      isin: 'INE06E507172',
                      companyName: 'Hella Infra Market Private Limited',
                      rating: 'AAA',
                      logoUrl:
                          'https://companieslogo.com/img/orig/INFRAM.NS-68d53693.png?t=1698384210',
                    ),
                    const ResultTile(
                      isin: 'INE06E507172',
                      companyName: 'Hella Infra Market Private Limited',
                      rating: 'AAA',
                      logoUrl:
                          'https://companieslogo.com/img/orig/INFRAM.NS-68d53693.png?t=1698384210',
                    ),
                    const ResultTile(
                      isin: 'INE06E507172',
                      companyName: 'Hella Infra Market Private Limited',
                      rating: 'AAA',
                      logoUrl:
                          'https://companieslogo.com/img/orig/INFRAM.NS-68d53693.png?t=1698384210',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
