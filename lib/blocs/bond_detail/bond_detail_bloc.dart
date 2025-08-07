import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_invest_app/blocs/bond_detail/bond_detail_event.dart';
import 'package:tap_invest_app/blocs/bond_detail/bond_detail_state.dart';
import 'package:tap_invest_app/data/services/bond_api_service.dart';

@injectable
class BondDetailBloc extends Bloc<BondDetailEvent, BondDetailState> {
  final BondApiService _bondApiService;

  BondDetailBloc(this._bondApiService)
    : super(const BondDetailState.initial()) {
    on<FetchDetailRequested>(_onFetchDetailRequested);
  }

  Future<void> _onFetchDetailRequested(
    FetchDetailRequested event,
    Emitter<BondDetailState> emit,
  ) async {
    emit(const BondDetailState.loading());
    try {
      final detailData = await _bondApiService.getBondDetails();
      emit(BondDetailState.loaded(bondDetail: detailData));
    } catch (e) {
      emit(BondDetailState.error(message: e.toString()));
    }
  }
}
