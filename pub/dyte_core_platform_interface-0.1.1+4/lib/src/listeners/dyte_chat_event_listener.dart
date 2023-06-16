import 'package:dyte_core_platform_interface/dyte_core_platform_interface.dart';

abstract class DyteChatEventsListener {
  /// On chat updates
  /// Triggered when there is a update in chat messages available in this room.
  /// [messages] list of all messages in this room. This also contains messages exchanged before this peer joined in this room
  void onChatUpdates(List<DyteChatMessage> messages) {}

  /// On new chat message
  /// Triggered when there is a new chat messages exchanged in this room.
  void onNewChatMessage(DyteChatMessage message) {}
}

class DyteChatController extends DyteChatEventsListener {
  DyteChatController._();
  static final DyteChatController instance = DyteChatController._();
  final List<DyteChatMessage> _chatMessages = [];

  List<DyteChatMessage> get chats => _chatMessages;

  @override
  void onChatUpdates(List<DyteChatMessage> messages) {
    _chatMessages.clear();
    _chatMessages.addAll(messages);
  }
}
