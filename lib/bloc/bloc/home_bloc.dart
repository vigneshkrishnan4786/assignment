import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/user_model.dart';
import '../../network_service/network_service.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) async {
      if (event is LoadUserData) {
        emit(LoadUserDataStart());
        try {
          
          List<Drinks> users = [];
       
            NetWorkService service = NetWorkService();
            users = await service.getUserList();
        

          emit(LoadUserDataSuccess(users));
        } catch (e) {
          emit(LoadUserDataFaild());
        }
      } else if (event is SearchData) {
        emit(SearchDataSuccess(event.searcData));
      }
    });
  }

  loadUserData() {
    add(LoadUserData());
  }

  searchData(String data) {
    add(SearchData(data));
  }
}
