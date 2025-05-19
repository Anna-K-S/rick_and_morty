import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:rick_and_morty/data/models/character_response.dart';

part 'api.g.dart';
part 'api.freezed.dart';

@RestApi(baseUrl: "https://rickandmortyapi.com/api")
abstract class Api {
  factory Api(Dio dio, {String baseUrl}) = _Api;

  @GET('/character')
  Future<CharacterResponse> getCharacters({@Query("page") int? page});
}
