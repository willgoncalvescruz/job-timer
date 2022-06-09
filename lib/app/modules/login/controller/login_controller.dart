import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_timer/app/modules/services/auth_service.dart';
part 'login_state.dart';

class LoginController extends Cubit<LoginState> {
  final AuthService _authService;

  LoginController({required AuthService authService})
      : _authService = authService,
        super(const LoginState.initial());

  Future<void> signIn() async {
    try {
      emit(state.copyWith(status: LoginStatus.loading));
      await _authService.signIn();
    } catch (e) {
      //} catch (e, s) {
      //log('Erro ao realizar login', error: e, stackTrace: s);
      emit(state.copyWith(
          status: LoginStatus.failure, errorMessage: 'Erro ao realiar login'));
    }

/*     Future.delayed(const Duration(seconds: 2), () {
      emit(state.copyWith(status: LoginStatus.initial));
    }); */
  }
}