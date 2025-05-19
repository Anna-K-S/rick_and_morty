import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/models/character_response.dart';

import '../service/api.dart';

part 'characters_event.dart';
part 'characters_state.dart';
part 'characters_bloc.freezed.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final Api _api;

  CharactersBloc()
      : _api = Api(Dio()),
        super(
          const CharactersState.initial(),
        ) {
    on<Started>(_onStarted);
    on<LoadMore>(_onLoadMore);
    on<Refresh>(_onRefresh);
  }

  Future<void> _onStarted(Started event, Emitter<CharactersState> emit) async {
    emit(
      const CharactersState.loading(null),
    );
    try {
      final response = await _api.getCharacters(page: 1);
      emit(
        CharactersState.loaded(response),
      );
    } catch (e) {
      emit(
        CharactersState.error(
          e.toString(),
        ),
      );
    }
  }

  Future<void> _onLoadMore(
      LoadMore event, Emitter<CharactersState> emit) async {
    //заглушка
    emit(const CharactersState.error('LoadMore not implemented yet'));
  }

  Future<void> _onRefresh(Refresh event, Emitter<CharactersState> emit) async {
    //заглушка
    emit(const CharactersState.error('Refresh not implemented yet'));
  }
}
