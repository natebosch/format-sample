import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nvtphong200401_19127646_voicegpt/infrastructure/models/choice_model.dart';
import 'package:nvtphong200401_19127646_voicegpt/infrastructure/models/message_model.dart';
import 'package:nvtphong200401_19127646_voicegpt/infrastructure/models/usage_model.dart';

part 'chat_response_model.freezed.dart';
part 'chat_response_model.g.dart';

@freezed
class ChatResponseModel with _$ChatResponseModel {
  const ChatResponseModel._();
  const factory ChatResponseModel({
    required String id,
    String? object,
    int? created,
    required UsageModel usage,
    required List<ChoiceModel> choices,
  }) = _ChatResponseModel;
  factory ChatResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ChatResponseModelFromJson(json);

  factory ChatResponseModel.mockData() =>
      const ChatResponseModel(id: '1', usage: UsageModel(), choices: [
        ChoiceModel(
            message: MessageModel(
                role: 'assistant', content: 'Hello! How can I help you'),
            finishReason: 'stop')
      ]);
}
