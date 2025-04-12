import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'register_events.dart';
part 'register_states.dart';

class RegisterBloc extends Bloc<RegisterEvents, RegisterStates> {
  RegisterBloc() : super(const RegisterStates()) {
    on<NameChanged>(_onNameChanged);
    on<EmailChanged>(_onEmailChanged);
    on<PhoneNoChanged>(_onPhoneChanged);
    on<GenderChanged>(_onGenderChanged);
    on<CountryChanged>(_onCountryChanged);
    on<CityChanged>(_onCityChanged);
    on<StateChanged>(_onStateChanged);
  }

  void _onNameChanged(NameChanged event, Emitter<RegisterStates> emit) {
    emit(state.copyWith(name: event.name));
  }

  void _onEmailChanged(EmailChanged event, Emitter<RegisterStates> emit) {
    emit(state.copyWith(email: event.email));
    }
  
  void _onPhoneChanged(PhoneNoChanged event, Emitter<RegisterStates> emit) {
    emit(state.copyWith(phoneNo: event.phoneNo));
    }
  
  void _onGenderChanged(GenderChanged event, Emitter<RegisterStates> emit) {
    emit(state.copyWith(gender: event.gender));
    }
  
  void _onCountryChanged(CountryChanged event, Emitter<RegisterStates> emit) {
    emit(state.copyWith(country: event.country));
    }
  
  void _onCityChanged(CityChanged event, Emitter<RegisterStates> emit) {
    emit(state.copyWith(city: event.city));
    }

  void _onStateChanged(StateChanged event, Emitter<RegisterStates> emit) {
    emit(state.copyWith(state: event.state));
    }
}
