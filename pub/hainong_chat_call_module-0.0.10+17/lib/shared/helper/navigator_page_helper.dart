import 'dart:developer';

import 'package:chat_call_core/call_core.dart';
import 'package:chat_call_core/core/local/shared_pref_source.dart';
import 'package:chat_call_core/presentation/call/call_bloc.dart';
import 'package:chat_call_core/presentation/call/call_page.dart';
import 'package:chat_call_core/presentation/call/call_suggest_page.dart';
import 'package:chat_call_core/presentation/chat/local/chat_page.dart';
import 'package:chat_call_core/presentation/chat/models/stream_data_model.dart';
import 'package:chat_call_core/presentation/chat/models/stream_request_model.dart';
import 'package:chat_call_core/presentation/chat/models/stream_response_model.dart';
import 'package:chat_call_core/shared/di/injector.dart';
import 'package:chat_call_core/shared/helper/dialog_helper.dart';
import 'package:chat_call_core/shared/helper/status_helper.dart';
import 'package:flutter/material.dart';
import 'package:chat_call_core/shared/helper/mapping_model_helper.dart';
import 'package:hainong_chat_call_module/chat_call_core.dart';
import 'package:hainong_chat_call_module/presentation/app/app_event.dart';
import '../../presentation/pages/profile/profile_page.dart';
import '../theme/colors.dart';

class NavigatorPage {
  static void navigatorChatPage(BuildContext context,
      {required StreamRequestModel request,
      String status = "",
      bool? isShowCommentRate,
      bool? isExpert = false,
      Function(String friendId, bool isLock)? callBackFriendLockAndUnLock,
      Function(String friendId)? callBackFriendDelete,
      Function()? refreshPage}) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ChatPage(
        callBackSignIn: () => appCoreBloc.add(CallBackLoginEvent()),
        chatRequest: request,
        callBackAudioCall: () {
          if (request.userId.isNotEmpty == true) {
            NavigatorPage.navigationCallPage(context,
                isShowCommentRate: isShowCommentRate,
                request: MappingModelHelper.mapAudioCall(request));
          } else {
            DialogHelper.customShowSnackbar(context,
                title: "Thông báo",
                message: StatusHelper.getMessageCallError(errorCode: 401));
          }
        },
        callBackVideoCall: () {
          if (request.userId.isNotEmpty == true) {
            NavigatorPage.navigationCallPage(context,
                isShowCommentRate: isShowCommentRate,
                request: MappingModelHelper.mapVideoCall(request));
          } else {
            DialogHelper.customShowSnackbar(context,
                message: StatusHelper.getMessageCallError(errorCode: 401));
          }
        },
        callBackCall: (data) {
          NavigatorPage.navigationCallPage(context,
              isShowCommentRate: isShowCommentRate,
              request: MappingModelHelper.mapVideoCall(request));
        },
        callBackProfile: () {
          if (isExpert == true) {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProfilePage(
                data: request,
                callBackAccountLockAndUnLock: callBackFriendLockAndUnLock,
                callBackAccountDelete: callBackFriendDelete,
              );
            }));
          } else {
            if (request.shopId?.isNotEmpty == true) {
              appCoreBloc.add(CallBackProfileEvent(shopId: request.shopId!));
            }
          }
        },
      );
    })).then((value) {
      if (refreshPage != null) {
        refreshPage();
      }
    });
  }

  static void navigationCallSuggestPage(BuildContext context,
      {required StreamResponseModel result,
      required Function() callBackAccept,
      Function()? callBackDecline}) {
    CallCore.setShowDialogIncommingCall(true);
    final request = MappingModelHelper.mapCallSuggest(result);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return CallSuggestPage(
          request: request,
          callBackCancel: () => Navigator.of(context).pop(false),
          callBackAccept: () => Navigator.of(context).pop(true));
    })).then((value) {
      if (callBackDecline != null) {
        callBackDecline();
      }
      if (value == true) {
        callBackAccept();
      } else if (value == false) {
        sendCallCancel(
            id: request.id,
            callId: result.callId ?? "",
            callType: result.callType ?? "video",
            roomName: result.roomName!);
      } else {
        appCallBloc.add(ShowCallbarEvent(true));
      }
    });
  }

  static void navigationCallPage(BuildContext context,
      {required StreamRequestModel request,
      Function()? callBack,
      bool? isShowCommentRate = false}) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return CallPage(
          request: request,
          callBackSignIn: () => appCoreBloc.add(CallBackLoginEvent()));
    })).then((result) {
      try {
        final data = result as StreamDataModel?;
        appCallBloc.add(RefreshPageEvent());
        if (isShowCommentRate == true) {
          DialogHelper.customShowSnackbar(context,
              message: data?.message, status: data?.status, callBack: () {
            final primaryColor = getIt<SharePrefSource>().getPrimaryColor();
            DialogHelper.showBottomSheet(context,
                id: request.receiverId.toString(),
                colorPrimary:
                    primaryColor ?? AppColors.primaryColor.toString());
          });
        }
      } catch (e) {
        log(e.toString());
      }
      if (callBack != null) callBack();
    });
  }

  static void navigatorCallPageTranfer(BuildContext context,
      {required StreamResponseModel result,
      String? privateColor,
      bool? isShowCommentRate = true}) {
    navigationCallPage(context,
        request: MappingModelHelper.mapCall(result),
        isShowCommentRate: isShowCommentRate);
  }

  static snackBar(BuildContext context, String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 4),
      ),
    );
  }

  static void sendCallCancel(
      {required String id,
      required String callType,
      required String callId,
      required String roomName}) {
    final status = "actionCallEnd"; //"actionCallDecline";
    appCallBloc.add(UpdateCallStatusEvent(
        callType: callType,
        id: callId,
        status: status,
        message: StatusHelper.getMessageCall(status: status)));
  }
}
