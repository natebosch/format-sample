import 'package:bloc/bloc.dart';
import 'package:seeds/components/scanner/interactor/viewmodels/scanner_events.dart';
import 'package:seeds/components/scanner/interactor/viewmodels/scanner_state.dart';

/// --- BLOC
class ScannerBloc extends Bloc<ScannerEvent, ScannerState> {
  ScannerBloc() : super(ScannerState.initial());

  @override
  Stream<ScannerState> mapEventToState(ScannerEvent event) async* {
    if (event is ShowLoading) {
      yield state.copyWith(scanStatus: ScanStatus.processing);
    } else if (event is Scan) {
      yield state.copyWith(scanStatus: ScanStatus.scan);
    } else if (event is Stop) {
      yield state.copyWith(scanStatus: ScanStatus.stop);
    }
  }
}
