import 'package:bloc_weather/blocs/settings_event.dart';
import 'package:bloc_weather/blocs/settings_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc()
      : super(SettingsState(temperatureUnits: TemperatureUnits.celsius));

  @override
  Stream<SettingsState> mapEventToState(SettingsEvent event) async* {
    if (event is TemperatureUnitsToggled) {
      yield SettingsState(
          temperatureUnits: state.temperatureUnits == TemperatureUnits.celsius
              ? TemperatureUnits.fahrenheit
              : TemperatureUnits.celsius);
    }
  }
}
