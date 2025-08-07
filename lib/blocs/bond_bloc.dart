import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_invest_app/blocs/bond_event.dart';
import 'package:tap_invest_app/blocs/bond_state.dart';
import 'package:tap_invest_app/data/models/bond_model.dart';
import 'package:tap_invest_app/data/services/bond_api_service.dart';

@injectable
class BondBloc extends Bloc<BondEvent, BondState> {
  final BondApiService _bondApiService;

  // We add a list to hold the master copy of our bonds.
  List<Bond> _allBonds = [];

  BondBloc(this._bondApiService) : super(const BondState.initial()) {
    on<FetchRequested>(_onFetchRequested);
    // Register the handler for our new search event.
    on<SearchQueryChanged>(_onSearchQueryChanged);
  }

  Future<void> _onFetchRequested(
    FetchRequested event,
    Emitter<BondState> emit,
  ) async {
    emit(const BondState.loading());
    try {
      final response = await _bondApiService.getBonds();
      _allBonds = response.data; // Store the full list.

      // The 'Loaded' state now requires more parameters.
      emit(
        BondState.loaded(
          allBonds: _allBonds,
          filteredBonds:
              _allBonds, // Initially, the filtered list is the full list.
          searchQuery: '', // Initially, the search query is empty.
        ),
      );
    } catch (e) {
      emit(BondState.error(message: e.toString()));
    }
  }

  void _onSearchQueryChanged(
    SearchQueryChanged event,
    Emitter<BondState> emit,
  ) {
    final query = event.query.toLowerCase();

    // Filter the master list based on the query.
    final filtered = _allBonds.where((bond) {
      final nameMatches = bond.companyName.toLowerCase().contains(query);
      final isinMatches = bond.isin.toLowerCase().contains(query);
      return nameMatches || isinMatches;
    }).toList();

    // Emit a new 'Loaded' state with the updated filtered list and query.
    emit(
      BondState.loaded(
        allBonds: _allBonds,
        filteredBonds: filtered,
        searchQuery: event.query, // Pass the original query for highlighting
      ),
    );
  }
}
