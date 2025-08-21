import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/data/models/character_list.dart';

part 'api.g.dart';

@RestApi(baseUrl: "https://rickandmortyapi.com/api")
abstract class Api {
  factory Api(Dio dio, {String baseUrl}) = _Api;

  @GET("/character")
  Future<CharacterList> getAllCharacters({@Query("page") int? page});

  @GET("/character/{id}")
  Future<Character> getCharacterById(@Path("id") int id);

  @GET("/character/{ids}")
  Future<dynamic> getCharactersByIds(@Path("ids") String ids);

  @GET("/character")
  Future<CharacterList> getFilteredCharacters({
    @Query("name") String? name,
    @Query("status") String? status,
    @Query("species") String? species,
  });
}
