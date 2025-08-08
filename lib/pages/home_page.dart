import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_invest_app/blocs/bond_bloc.dart';
import 'package:tap_invest_app/blocs/bond_event.dart';
import 'package:tap_invest_app/blocs/bond_state.dart';
import 'package:tap_invest_app/widgets/result_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 18.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 26,
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
                    onChanged: (query) {
                      context.read<BondBloc>().add(
                        BondEvent.searchQueryChanged(query),
                      );
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),
                      prefixIcon: Container(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                          right: 14,
                          top: 16,
                          bottom: 16,
                        ),
                        child: SvgPicture.asset(
                          'lib/assets/icons/search_icon.svg',
                        ),
                      ),
                      hintText: 'Search by Issuer Name or ISIN',
                      hintStyle: const TextStyle(
                        color: Color(0xff99A1AF),
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      ),
                      filled: true,
                      fillColor: Colors.transparent,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: const TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
                const SizedBox(height: 30),
                BlocBuilder<BondBloc, BondState>(
                  builder: (context, state) {
                    return state.when(
                      loading: () => const Center(
                        child: Padding(
                          padding: EdgeInsets.all(24.0),
                          child: CircularProgressIndicator(),
                        ),
                      ),
                      loaded: (allBonds, filteredBonds, searchQuery) {
                        if (filteredBonds.isEmpty) {
                          return const Center(
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Text('No results found.'),
                            ),
                          );
                        }

                        final String title = searchQuery.isEmpty
                            ? 'SUGGESTED RESULTS'
                            : 'SEARCH RESULTS';

                        final int itemCount = filteredBonds.length > 3
                            ? 3
                            : filteredBonds.length;

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                color: Color(0xff8E8E93),
                                fontSize: 10,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: itemCount,
                                itemBuilder: (context, index) {
                                  final bond = filteredBonds[index];
                                  return ResultTile(
                                    isin: bond.isin,
                                    companyName: bond.companyName,
                                    rating: bond.rating,
                                    logoUrl: bond.logo,
                                    searchQuery: searchQuery,
                                  );
                                },
                                separatorBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.only(
                                    left: 16.0,
                                    right: 16.0,
                                  ),
                                  child: Divider(
                                    height: 1,
                                    thickness: 1,
                                    color: Colors.grey.shade200,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      error: (message) => Center(
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Text(message),
                        ),
                      ),
                      initial: () => const SizedBox.shrink(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
