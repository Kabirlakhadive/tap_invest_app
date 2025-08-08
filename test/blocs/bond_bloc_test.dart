import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tap_invest_app/blocs/bond_bloc.dart';
import 'package:tap_invest_app/blocs/bond_event.dart';
import 'package:tap_invest_app/blocs/bond_state.dart';
import 'package:tap_invest_app/data/models/bond_list_response.dart';
import 'package:tap_invest_app/data/models/bond_model.dart';
import 'package:tap_invest_app/data/services/bond_api_service.dart';

class MockBondApiService extends Mock implements BondApiService {}

void main() {
  group('BondBloc', () {
    late MockBondApiService mockBondApiService;
    late BondBloc bondBloc;
    late List<Bond> sampleBonds;

    setUp(() {
      mockBondApiService = MockBondApiService();

      bondBloc = BondBloc(mockBondApiService);
      sampleBonds = [
        const Bond(
          logo: '',
          isin: 'ISIN123',
          rating: 'AAA',
          companyName: 'Apple Inc',
          tags: [],
        ),
        const Bond(
          logo: '',
          isin: 'ISIN456',
          rating: 'AA+',
          companyName: 'Hella Infra',
          tags: [],
        ),
      ];
    });

    tearDown(() {
      bondBloc.close();
    });

    test('initial state is BondState.initial', () {
      expect(bondBloc.state, const BondState.initial());
    });

    blocTest<BondBloc, BondState>(
      'emits [loading, loaded] when FetchRequested is added and API succeeds',
      setUp: () {
        when(
          () => mockBondApiService.getBonds(),
        ).thenAnswer((_) async => BondListResponse(data: sampleBonds));
      },
      build: () => bondBloc,
      act: (bloc) => bloc.add(const FetchRequested()),
      expect: () => [
        const BondState.loading(),
        BondState.loaded(
          allBonds: sampleBonds,
          filteredBonds: sampleBonds,
          searchQuery: '',
        ),
      ],
    );

    blocTest<BondBloc, BondState>(
      'emits a new loaded state with filtered bonds on SearchQueryChanged',
      setUp: () {
        when(
          () => mockBondApiService.getBonds(),
        ).thenAnswer((_) async => BondListResponse(data: sampleBonds));
      },
      build: () => bondBloc,

      act: (bloc) async {
        bloc.add(const FetchRequested());
        await Future.delayed(Duration.zero);
        bloc.add(const SearchQueryChanged('Apple'));
      },

      expect: () => [
        const BondState.loading(),
        BondState.loaded(
          allBonds: sampleBonds,
          filteredBonds: sampleBonds,
          searchQuery: '',
        ),
        BondState.loaded(
          allBonds: sampleBonds,
          filteredBonds: [sampleBonds.first],
          searchQuery: 'Apple',
        ),
      ],
    );

    blocTest<BondBloc, BondState>(
      'emits [loading, error] when FetchRequested is added and API fails',
      setUp: () {
        when(
          () => mockBondApiService.getBonds(),
        ).thenThrow(Exception('API failure'));
      },
      build: () => bondBloc,
      act: (bloc) => bloc.add(const FetchRequested()),
      expect: () => [
        const BondState.loading(),
        const BondState.error(message: 'Exception: API failure'),
      ],
    );
  });
}
