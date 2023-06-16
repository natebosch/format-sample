import 'package:dyte_core_platform_interface/dyte_core_platform_interface.dart';

abstract class DyteWaitingRoomEventsListener {
  void onWaitListParticipantAccepted(DyteMeetingParticipant participant) {}
  void onWaitListParticipantClosed(DyteMeetingParticipant participant) {}
  void onWaitListParticipantJoined(DyteMeetingParticipant participant) {}
  void onWaitListParticipantRejected(DyteMeetingParticipant participant) {}
}
