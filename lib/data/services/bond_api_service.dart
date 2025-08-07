import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_invest_app/data/models/bond_detail_model.dart';
import 'package:tap_invest_app/data/models/bond_list_response.dart';

const String _bondsListUrl = 'https://eol122duf9sy4de.m.pipedream.net';
const String _bondDetailUrl = 'https://eo61q3zd4heiwke.m.pipedream.net';

abstract class BondApiService {
  Future<BondListResponse> getBonds();
  Future<BondDetailModel> getBondDetails();
}

@Injectable(as: BondApiService)
class BondApiServiceImpl implements BondApiService {
  final Dio _dio;
  BondApiServiceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<BondListResponse> getBonds() async {
    try {
      final response = await _dio.get(_bondsListUrl);
      if (response.statusCode == 200) {
        return BondListResponse.fromJson(response.data);
      } else {
        throw Exception(
          'Failed to load bonds: Status code ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception('Failed to load bonds: $e');
    }
  }

  @override
  Future<BondDetailModel> getBondDetails() async {
    try {
      final response = await _dio.get(_bondDetailUrl);
      if (response.statusCode == 200) {
        return BondDetailModel.fromJson(response.data);
      } else {
        throw Exception(
          'Failed to load bond details: Status code ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception('Failed to load bond details: $e');
    }
  }
}
