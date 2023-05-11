part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({UserModel? user}) = _Login;
  const factory AuthEvent.register({UserModel? user}) = _Register;
  const factory AuthEvent.currentUser({required String id}) = _CurrentUser;
  const factory AuthEvent.logout() = _Logout;
}
