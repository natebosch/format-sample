import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:indigitall_flutter_plugin/core/utils/IndigitallParams.dart';
import 'package:indigitall_flutter_plugin/inapp/models/InApp.dart';

import 'package:indigitall_flutter_plugin/push/models/Device.dart';
import 'package:indigitall_flutter_plugin/core/models/ErrorModel.dart';
import 'package:indigitall_flutter_plugin/push/models/Push.dart';
import 'package:indigitall_flutter_plugin/push/models/Topic.dart';

import 'package:indigitall_flutter_plugin/inbox/models/Inbox.dart';
import 'package:indigitall_flutter_plugin/inbox/models/InboxCounter.dart';
import 'package:indigitall_flutter_plugin/inbox/models/InboxNotification.dart';

import 'customer/model/Customer.dart';
import 'customer/model/CustomerField.dart';

class IndigitallFlutterPlugin {
  ///Private action interface to call INIT for native SDK
  static const _ACTION_INIT = "initialize";

  ///Private action interface to call DEVICE ENABLE for native SDK
  static const _ACTION_DEVICE_ENABLE = "deviceEnable";

  ///Private action interface to call DEVICE DISABLE for native SDK
  static const _ACTION_DEVICE_DISABLE = "deviceDisable";

  ///Private action interface to call TOPIC LIST for native SDK
  static const _ACTION_TOPICS_LIST = "topicsList";

  ///Private action interface to call TOPIC SUBSCRIBE for native SDK
  static const _ACTION_TOPICS_SUBSCRIBE = "topicsSubscribe";

  ///Private action interface to call TOPIC UNSUBCRIBE for native SDK
  static const _ACTION_TOPICS_UNSUBSCRIBE = "topicsUnsubscribe";

  ///Private action interface to call EXTERNAL CODE for native SDK
  static const _ACTION_EXTERNALCODE = "setExternalCode";

  ///Private action interface to call SEND CUSTOM EVENT for native SDK
  static const _ACTION_SENDCUSTOMEVENT = "sendCustomEvent";

  ///Private action interface to call GET PUSH for native SDK
  static const _ACTION_GET_PUSH = "getPush";

  ///Private action interface to call GET TOKEN for native SDK
  static const _ACTION_GET_TOKEN = "getToken";

  ///Private action interface to call IS INDIGITALL PUSH NOTIFICATION for native SDK
  static const _ACTION_IS_INDIGITALL_PUSH_NOTIFICATION =
      "isIndigitallPushNotification";

  ///Private action interface to call GET ON MESSAGE RECEIVED for native SDK
  static const _ACTION_ON_MESSAGE_RECEIVED = "onMessageReceived";

  ///Private action interface to call LOGIN for native SDK
  static const _ACTION_LOGIN = "logIn";

  ///Private action interface to call LOG OUT for native SDK
  static const _ACTION_LOGOUT = "logOut";

  ///Private action interface to call GET INBOX for native SDK
  static const _ACTION_GET_INBOX = "getInbox";

  ///Private action interface to call GET MESSAGE COUNT for native SDK
  static const _ACTION_GET_MESSAGE_COUNT = "getMessageCount";

  ///Private action interface to call NEXT PAGE for native SDK
  static const _ACTION_GET_NEXT_PAGE = "getNextPage";

  ///Private action interface to call MASSIVE EDIT NOTIFICATION for native SDK
  static const _ACTION_MASSIVE_EDIT =
      "massiveEditNotificationsWithSendingIdsList";

  ///Private action interface to call GET INFO NOTIFICATION for native SDK
  static const _ACTION_GET_INFO_NOTIFICATION =
      "getInfoFromNotificationWithSendingId";

  ///Private action interface to call MODIFY STATUS OF NOTIFICATION for native SDK
  static const _ACTION_MODIFY_STATUS =
      "modifyStatusFromNotificationWithSendingId";

  // ///Private action interface to call GET CONFIG OF AUTHENTIFICATION for native SDK
  // static const _ACTION_GET_AUTH_CONFIG = "getAuthConfig";

  ///Private action interface to call TOPIC LIST for native SDK
  static const _ACTION_INAPP_TOPICS_LIST = "inAppTopicsList";

  ///Private action interface to call TOPIC SUBSCRIBE for native SDK
  static const _ACTION_INAPP_TOPICS_SUBSCRIBE = "inAppTopicsSubscribe";

  ///Private action interface to call TOPIC UNSUBCRIBE for native SDK
  static const _ACTION_INAPP_TOPICS_UNSUBSCRIBE = "inAppTopicsUnsubscribe";

  ///Private action interface to call GET INAPP for native SDK
  static const _ACTION_GET_INAPP = "getInApp";

  ///Private action interface to call TAP INAPP for native SDK
  static const _ACTION_ON_CLICK = "onClick";

  /// Private action interface to call SHOW POP UP
  static const _ACTION_SHOW_POP_UP = "showPopUp";

  /// Private action interface to call ADD NEW INAPP TO DISMISS FOREVER
  static const _ACTION_ADD_NEW_INAPP_TO_DISMISS_FOREVER =
      "addNewInAppToDismissForever";

  /// Private action interface to call IN APP GET HTML
  static const _ACTION_GET_HTML = "inAppGetHtml";

  /// Private action interface to call EVENT PRINT
  static const _ACTION_EVENT_PRINT = "eventPrintInAppRequest";

  /// Private action interface to call GET CUSTOMER
  static const _ACTION_GET_CUSTOMER = "getCustomer";

  /// Private action interface to call GET CUSTOMER INFORMATION
  static const _ACTION_GET_CUSTOMER_INFORMATION = "getCustomerInformation";

  /// Private action interface to call UPDATE VALUES FOR CUSTOMER FIELDS
  static const _ACTION_UPDATE_VALUE_CUSTOMER_FIELDS =
      "assignOrUpdateValueToCustomerFields";

  /// Private action interface to call DELETE VALUES TO CUSTOMER FIELDS
  static const _ACTION_DELETE_VALUES_CUSTOMER_FIELDS =
      "deleteValuesFromCustomerFields";

  /// Private action interface to call LINK customer
  static const _ACTION_LINK = "link";

  /// Private action interface to call UNLINK customer
  static const _ACTION_UNLINK = "unlink";

  ///Private ON INDIGITALL INITIALIZE name to get the value of native SDK callbacks
  static const _CALLBACK_ON_INDIGITALL_INITIALIZED =
      "callbackOnIndigitallInitialized";

  ///Private NEW USER REGISTERED name to get the value of native SDK callbacks
  static const _CALLBACK_ON_NEW_USER_REGISTERED = "callbackOnNewUserRegistered";

  ///Private DEVICE ENABLE name to get the value of native SDK callbacks
  static const _CALLBACK_DEVICE_ENABLE = "callbackDeviceEnabled";

  ///Private DEVICE DISABLE name to get the value of native SDK callbacks
  static const _CALLBACK_DEVICE_DISABLE = "callbackDeviceDisEnabled";

  ///Private TOPIC LIST name to get the value of native SDK callbacks
  static const _CALLBACK_TOPIC_LIST = "callbackTopicList";

  ///Private TOPICS SUBSCRIBE name to get the value of native SDK callbacks
  static const _CALLBACK_TOPIC_SUBSCRIBE = "callbackTopicSubscribe";

  ///Private TOPICS UNSUBSCRIBE name to get the value of native SDK callbacks
  static const _CALLBACK_TOPIC_UNSUBSCRIBE = "callbackTopicUnsubscribe";

  ///Private EXTERNAL CODE name to get the value of native SDK callbacks
  static const _CALLBACK_EXTERNAL_CODE = "callbackExternalCode";

  ///Private SEND CUSTOM EVENT name to get the value of native SDK callbacks
  static const _CALLBACK_SEND_CUSTOM_EVENT = "callbackSendCustomEvent";

  ///Private LOG IN name to get the value of native SDK callbacks
  static const _CALLBACK_LOGIN = "callbackLogin";

  ///Private LOGOUT name to get the value of native SDK callbacks
  static const _CALLBACK_LOGOUT = "callbackLogout";

  ///Private GET PUSH name to get the value of native SDK callbacks
  static const _CALLBACK_GET_PUSH = "callbackgetPush";

  ///Private GET TOKEN callback
  static const _CALLBACK_GET_TOKEN = "token";

  ///Private GET ON MESSAGE RECEIVED
  static const _CALLBACK_GET_ON_MESSAGE_RECEIVED = "notification";

  ///Private GET INBOX name to get the value of native SDK callbacks
  static const _CALLBACK_GET_INBOX = "callbackGetInbox";

  ///Private MESSAGE COUNT name to get the value of native SDK callbacks
  static const _CALLBACK_GET_MESSAGE_COUNT = "callbackGetMessageCount";

  ///Private NEXT PAGE name to get the value of native SDK callbacks
  static const _CALLBACK_GET_NEXT_PAGE = "callbackGetNextPage";

  ///Private MASSIVE EDIT NOTIFICATION name to get the value of native SDK callbacks
  static const _CALLBACK_MASSIVE_EDIT = "callbackMassiveEdit";

  ///Private GET INFO NOTIFICATION name to get the value of native SDK callbacks
  static const _CALLBACK_GET_INFO_NOTIFICATION = "callbackGetInfoNotification";

  ///Private MODIFY NOTIFICATION STATUS name to get the value of native SDK callbacks
  static const _CALLBACK_MODIFY_STATUS = "callbackModifyStatus";

  ///Private GET INAPP name to get the value of native SDK callbacks
  static const _CALLBACK_GET_INAPP = "callbackGetInApp";

  ///Private DID DISMISSED name to get the value of native SDK callback
  static const _CALLBACK_DID_DISMISSED = "callbackDidDismissed";

  ///Private DID CLOSED name to get the value of native SDK callback
  static const _CALLBACK_DID_CLOSED = "callbackDidClosed";

  ///Private DID CLICKED name to get the value of native SDK callback
  static const _CALLBACK_DID_CLICKED = "callbackDidClicked";

  ///Private DID SHOW POP-UP name to get the value of native SDK callback
  static const _CALLBACK_SHOW_POPUP = "callbackShowPopUp";

  ///Private DID SHOWTIME FINISHED name to get the value of native SDK callback
  static const _CALLBACK_SHOWTIME_FINISHED = "callbackShowTimeFinished";

  // ///Private SHOW INAPP name to get the value of native SDK callback
  // static const _CALLBACK_SHOW_INAPP = "callbackShowInApp";

  ///Private CUSTOMER name to get the value of native SDK callback
  static const _CALLBACK_CUSTOMER = "callbackCustomer";

  ///Private CUSTOMER FIELDS name to get the value of native SDK callback
  static const _CALLBACK_CUSTOMER_FIELDS = "callbackCustomerFields";

  ///name of the plugin
  static const MethodChannel _indigitall =
      const MethodChannel('indigitall_flutter_plugin');

  /// Initialization of Indigitall
  ///
  /// Callback onIndigitallInitialized return [Device] when the device is ready to receive notifications from indigitall
  /// Only for Android: Callback onNewUserRegistered [Device] when the device has been registered for the first time,
  /// Throw onErrorInitialized [ErrorModel] if there is some error during the processs
  static void init(
      Map params,
      Function(Device device)? onIndigitallInitialized,
      Function(Device device)? onNewUserRegistered,
      Function(ErrorModel error)? onErrorInitialized) async {
    print("[IND] init");
    params["productName"] = "flutter";
    params["productVersion"] = "2.0.2";
    await _indigitall
        .invokeMapMethod(_ACTION_INIT, params)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_ON_INDIGITALL_INITIALIZED) {
                      Device device = new Device(valueMap);
                      if (onIndigitallInitialized != null)
                        onIndigitallInitialized(device);
                    }
                    if (key == _CALLBACK_ON_NEW_USER_REGISTERED) {
                      Device device = new Device(valueMap);
                      if (onNewUserRegistered != null)
                        onNewUserRegistered(device);
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onErrorInitialized != null)
                    onErrorInitialized(ErrorModel(error.code, error.message))
                }
            });
  }

  /// Enable the Device to receive push notifications
  ///
  /// Callback to get [Device]'s data
  /// Throw [ErrorModel] if there is some error during the processs
  static void deviceEnable(Function(Device device)? onSuccess,
      Function(ErrorModel error)? onError) async {
    _indigitall
        .invokeMapMethod(_ACTION_DEVICE_ENABLE)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_DEVICE_ENABLE) {
                      if (onSuccess != null) onSuccess(new Device(valueMap));
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// Disable the Device to receive push notifications
  ///
  /// Callback to get [Device]'s data.
  /// Throw [ErrorModel] if there is some error during the processs
  static void deviceDisable(Function(Device device)? onSuccess,
      Function(ErrorModel error)? onError) async {
    _indigitall
        .invokeMapMethod(_ACTION_DEVICE_DISABLE)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_DEVICE_DISABLE) {
                      if (onSuccess != null) onSuccess(new Device(valueMap));
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// Get Topic's list
  ///
  /// Callback to get [Topic]'s list.
  /// Throw [ErrorModel] if there is some error during the processs
  static void topicList(Function(List<Topic> topic)? onSuccess,
      Function(ErrorModel error)? onError) async {
    _indigitall
        .invokeMapMethod(_ACTION_TOPICS_LIST)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_TOPIC_LIST) {
                      if (onSuccess != null)
                        onSuccess(Topic.createArray(valueMap));
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// Subscribe to Topics
  ///
  /// topics Array of [Topics] to subscribe
  /// Callback to get [Topic]'s list
  /// Throw [ErrorModel] if there is some error during the processs
  static void topicSubscribe(
      List<String> params,
      Function(List<Topic> topic)? onSuccess,
      Function(ErrorModel error)? onError) async {
    _indigitall
        .invokeMapMethod(_ACTION_TOPICS_SUBSCRIBE, params)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_TOPIC_SUBSCRIBE) {
                      if (onSuccess != null)
                        onSuccess(Topic.createArray(valueMap));
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// Unsubscribe to Topics
  ///
  /// topics Array of [Topics] to unsubscribe
  /// Callback to get [Topic]'s list
  /// Throw [ErrorModel] if there is some error during the processs
  static void topicUnsubscribe(
      List<String> params,
      Function(List<Topic> topic)? onSuccess,
      Function(ErrorModel error)? onError) async {
    _indigitall
        .invokeMapMethod(_ACTION_TOPICS_UNSUBSCRIBE, params)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_TOPIC_UNSUBSCRIBE) {
                      if (onSuccess != null)
                        onSuccess(Topic.createArray(valueMap));
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// Set external code
  ///
  /// params [String] with the code
  /// Callback to get [Device] info
  /// Throw [ErrorModel] if there is some error during the processs
  static void setExternalCode(String params, Function(Device device)? onSuccess,
      Function(ErrorModel error)? onError) async {
    _indigitall
        .invokeMapMethod(_ACTION_EXTERNALCODE, params)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_EXTERNAL_CODE) {
                      if (onSuccess != null) onSuccess(new Device(valueMap));
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// Set Log in with external Id
  ///
  /// externalId param [String] with the code
  /// Callback to get [Device] info
  /// Throw [ErrorModel] if there is some error during the processs
  static void logIn(String externalId, Function(Device device)? onSuccess,
      Function(ErrorModel error)? onError) async {
    _indigitall
        .invokeMapMethod(_ACTION_LOGIN, externalId)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_LOGIN) {
                      if (onSuccess != null) {
                        onSuccess(new Device(valueMap));
                      }
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// Set Log out
  ///
  /// Callback to get [Device] info
  /// Throw [ErrorModel] if there is some error during the processs
  static void logOut(Function(Device device)? onSuccess,
      Function(ErrorModel error)? onError) async {
    _indigitall
        .invokeMapMethod(_ACTION_LOGOUT)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_LOGOUT) {
                      if (onSuccess != null) onSuccess(new Device(valueMap));
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// Method to create a custom event that is working on backend
  ///
  /// Map params with eventCustom name and custom data.
  /// Callback to get info of custom event.
  /// Throw [ErrorModel] if there is some error during the processs
  static void sendCustomEvent(Map params, Function()? onSuccess,
      Function(ErrorModel error)? onError) async {
    _indigitall
        .invokeMapMethod(_ACTION_SENDCUSTOMEVENT, params)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_SEND_CUSTOM_EVENT) {
                      if (onSuccess != null) onSuccess();
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// Method to check if notification is from Indigitall
  ///
  /// Pass remotemessage and callback to obtain it
  static void isIndigitallPushNotification(
      Map<dynamic, dynamic>? remoteMessageData,
      Function(bool isIndigitallPush) onSuccess) async {
    onSuccess(await _indigitall.invokeMethod(
        _ACTION_IS_INDIGITALL_PUSH_NOTIFICATION, remoteMessageData));
  }

  /// Method to get push token
  ///
  ///Callback onSuccess with the token
  static void getToken(
      Function(String token) onSuccess, Function(String error)? onError) async {
    _indigitall
        .invokeMapMethod(_ACTION_GET_TOKEN)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_GET_TOKEN) {
                      onSuccess(valueMap);
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null && error.message != null)
                    onError(error.message!)
                }
            });
  }

  ///callback to return the new push info
  static Function(Map<dynamic, dynamic>? notification)?
      onMessageReceivedOnSuccess;

  /// Method to on message received
  ///
  ///Callback with the notification
  static void onMessageReceived(
      Function(Map<dynamic, dynamic>? notification) onSuccess) async {
    onMessageReceivedOnSuccess = onSuccess;
    _indigitall.setMethodCallHandler(_fromNative);
  }

  /// Method call to comunicate with plugin
  ///
  static Future<void> _fromNative(MethodCall call) async {
    if (call.method == _ACTION_ON_MESSAGE_RECEIVED) {
      Map response = call.arguments;
      if (response.containsKey(_CALLBACK_GET_ON_MESSAGE_RECEIVED)) {
        Map<dynamic, dynamic>? resultMap;
        if (response[_CALLBACK_GET_ON_MESSAGE_RECEIVED] is String) {
          //android response
          String push = response[_CALLBACK_GET_ON_MESSAGE_RECEIVED];
          resultMap = jsonDecode(push);
        } else {
          //iOS response
          resultMap = response[_CALLBACK_GET_ON_MESSAGE_RECEIVED];
        }
        if (onMessageReceivedOnSuccess != null)
          onMessageReceivedOnSuccess!(resultMap);
      }
    }
  }

  ///Action to get push in Android
  ///
  /// Callback to get the [Push] info when it is clicked
  /// Throw [ErrorModel] if there is some error during the processs
  static void getPush(Function(Push push)? onSuccess,
      Function(ErrorModel error)? onError) async {
    _indigitall
        .invokeMapMethod(_ACTION_GET_PUSH)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_GET_PUSH) {
                      if (onSuccess != null) {
                        if (valueMap is String) {
                          onSuccess(new Push(new Map<String, dynamic>.from(
                              json.decode(valueMap))));
                        } else {
                          onSuccess(new Push(
                              new Map<String, dynamic>.from(valueMap)));
                        }
                      }
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  // /// Get the a validation token for an application that has configured authentication with webhook
  // ///
  // /// Context param
  // static Future<Map<dynamic, dynamic>?>? _getAuthentication(Map? authInbox) async {
  //     return await _indigitall.invokeMapMethod(_ACTION_GET_AUTH_CONFIG, authInbox);
  // }

  /// Get [Inbox] for a external Id
  ///
  /// param [Map] with auth config
  /// Callback to get [Inbox] on success
  /// Throw [ErrorModel] if there is some error during the processs
  static void getInbox(Map? authInbox, Function(Inbox inbox)? onSuccess,
      Function(ErrorModel error)? onError) async {
    await _indigitall
        .invokeMapMethod(_ACTION_GET_INBOX, authInbox)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_GET_INBOX) {
                      if (onSuccess != null) onSuccess(new Inbox(valueMap));
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// Get the counters of Inbox
  ///
  /// param [Map] with auth config
  /// Callback to get [InboxCounters] on success
  /// Throw [ErrorModel] if there is some error during the processs
  static void getMessageCount(
      Map? authInbox,
      Function(InboxCounter counters)? onSuccess,
      Function(ErrorModel error)? onError) async {
    await _indigitall
        .invokeMapMethod(_ACTION_GET_MESSAGE_COUNT, authInbox)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_GET_MESSAGE_COUNT) {
                      if (onSuccess != null)
                        onSuccess(new InboxCounter(valueMap));
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// Get next page of Inbox
  ///
  /// param [Map] with auth config
  /// Callback to get [Inbox] on success
  /// Throw [ErrorModel] if there is some error during the processs
  static void getNextPage(Map? authInbox, Function(Inbox inbox)? onSuccess,
      Function(ErrorModel error)? onError) async {
    await _indigitall
        .invokeMapMethod(_ACTION_GET_NEXT_PAGE, authInbox)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_GET_NEXT_PAGE) {
                      if (onSuccess != null) onSuccess(new Inbox(valueMap));
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// Edit one or more notifications state with SendingId list
  ///
  /// param [Map] with auth config
  /// para [Map] with the list os sendingId and new status
  /// Callback to get [InboxNotification] on success
  /// Throw [ErrorModel] if there is some error during the processs
  static void massiveEditNotificationsWithSendingIdsList(
      Map? authInbox,
      Map params,
      Function()? onSuccess,
      Function(ErrorModel error)? onError) async {
    params["auth"] = authInbox;
    await _indigitall
        .invokeMapMethod(_ACTION_MASSIVE_EDIT, params)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_MASSIVE_EDIT) {
                      if (onSuccess != null) onSuccess();
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// Get info of a notification with SendingId list
  ///
  /// param [Map] with auth config
  /// para [Map] with list of sendingId
  /// Callback to get [InboxNotification] on success
  /// Throw [ErrorModel] if there is some error during the processs
  static void getInfoFromNotificationWithSendingId(
      Map? authInbox,
      Map param,
      Function(InboxNotification notification)? onSuccess,
      Function(ErrorModel error)? onError) async {
    param["auth"] = authInbox;
    await _indigitall
        .invokeMapMethod(_ACTION_GET_INFO_NOTIFICATION, param)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_GET_INFO_NOTIFICATION) {
                      if (Platform.isAndroid) {
                        if (onSuccess != null)
                          onSuccess(new InboxNotification(valueMap));
                      } else {
                        if (onSuccess != null)
                          onSuccess(new InboxNotification(
                              json.decode(valueMap.toString())));
                      }
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// Edit one notification state with SeindingId list
  ///
  /// param [Map] with auth config
  /// para [Map] with sendingId and new status
  /// Callback to get [InboxNotification] on success
  /// Throw [ErrorModel] if there is some error during the processs
  static void modifyStatusFromNotificationWithSendingId(
      Map? authInbox,
      Map params,
      Function(InboxNotification notification)? onSuccess,
      Function(ErrorModel error)? onError) async {
    params["auth"] = authInbox;
    await _indigitall
        .invokeMapMethod(_ACTION_MODIFY_STATUS, params)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_MODIFY_STATUS) {
                      if (Platform.isAndroid) {
                        if (onSuccess != null)
                          onSuccess(new InboxNotification(valueMap));
                      } else {
                        if (onSuccess != null)
                          onSuccess(new InboxNotification(
                              json.decode(valueMap.toString())));
                      }
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// get Customer info
  ///
  /// Callback to get [Customer] on success
  /// Throw [ErrorModel] if there is some error during the processs
  static void getCustomer(Function(Customer customer)? onSuccess,
      Function(ErrorModel error)? onError) async {
    await _indigitall
        .invokeMethod(_ACTION_GET_CUSTOMER)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_CUSTOMER) {
                      if (onSuccess != null) onSuccess(new Customer(valueMap));
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// get Customer fields information
  ///
  /// Callback to get [Customer fields] on success
  /// Throw [ErrorModel] if there is some error during the processs
  static void getCustomerInformation(
      List<String> fields,
      Function(List<CustomerField> fields)? onSuccess,
      Function(ErrorModel error)? onError) async {
    await _indigitall
        .invokeMethod(_ACTION_GET_CUSTOMER_INFORMATION, fields)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_CUSTOMER_FIELDS) {
                      if (onSuccess != null)
                        onSuccess(CustomerField.createArray(valueMap));
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// edit or update customer fields
  ///
  /// Callback to get [Customer] on success
  /// Throw [ErrorModel] if there is some error during the processs
  static void assignOrUpdateValueToCustomerFields(
      Map fields,
      Function(Customer customer)? onSuccess,
      Function(ErrorModel error)? onError) async {
    await _indigitall
        .invokeMethod(_ACTION_UPDATE_VALUE_CUSTOMER_FIELDS, fields)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_CUSTOMER) {
                      if (onSuccess != null) onSuccess(new Customer(valueMap));
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// delete fields of Customer
  ///
  /// Callback to get [Customer] on success
  /// Throw [ErrorModel] if there is some error during the processs
  static void deleteValuesFromCustomerFields(
      List<String> fieldNames,
      Function(Customer customer)? onSuccess,
      Function(ErrorModel error)? onError) async {
    await _indigitall
        .invokeMethod(_ACTION_DELETE_VALUES_CUSTOMER_FIELDS, fieldNames)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_CUSTOMER) {
                      if (onSuccess != null) onSuccess(new Customer(valueMap));
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// link Customer
  ///
  /// Callback void on success
  /// Throw [ErrorModel] if there is some error during the processs
  static void link(Map params, Function()? onSuccess,
      Function(ErrorModel error)? onError) async {
    await _indigitall
        .invokeMethod(_ACTION_LINK, params)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_CUSTOMER) {
                      if (onSuccess != null) onSuccess();
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// unlink Customer
  ///
  /// Callback void on success
  /// Throw [ErrorModel] if there is some error during the processs
  static void unlink(Map params, Function()? onSuccess,
      Function(ErrorModel error)? onError) async {
    await _indigitall
        .invokeMethod(_ACTION_UNLINK, params)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_CUSTOMER) {
                      if (onSuccess != null) onSuccess();
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// Get [InApp]
  ///
  /// get inApp model to show
  static void getInApp(
      String inAppCode,
      String? appKey,
      String? domainInApp,
      Function(InApp inApp)? onSuccess,
      Function(ErrorModel error)? didExpired,
      Function(ErrorModel error)? didShowManyTimes,
      Function(ErrorModel error)? didClickOut,
      Function(ErrorModel error)? dismissForever,
      Function(ErrorModel error)? onError) async {
    Map params = {
      IndigitallParams.PARAM_APP_KEY: appKey,
      IndigitallParams.PARAM_INAPP_CODE: inAppCode,
      IndigitallParams.PARAM_DOMAIN_INAPP: domainInApp,
    };

    await _indigitall
        .invokeMethod(_ACTION_GET_INAPP, params)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_GET_INAPP) {
                      if (onSuccess != null) onSuccess(InApp(valueMap));
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (error.code == "2101")
                    {
                      if (didExpired != null)
                        didExpired(ErrorModel(error.code, error.message))
                    }
                  else if (error.code == "2102")
                    {
                      if (didShowManyTimes != null)
                        didShowManyTimes(ErrorModel(error.code, error.message))
                    }
                  else if (error.code == "2103")
                    {
                      if (didClickOut != null)
                        didClickOut(ErrorModel(error.code, error.message))
                    }
                  else if (error.code == "2304")
                    {
                      if (dismissForever != null)
                        dismissForever(ErrorModel(error.code, error.message))
                    }
                  else
                    {
                      if (onError != null)
                        onError(ErrorModel(error.code, error.message))
                    }
                }
            });
    return null;
  }

  /// Get [inAppGetHtml]
  ///
  /// get html
  static void inAppGetHtml(
      String? url, Function(String html)? onSuccess) async {
    if (url != null) {
      await _indigitall
          .invokeMethod(_ACTION_GET_HTML, url)
          .then((value) => {if (onSuccess != null) onSuccess(value)});
    }
  }

  /// Show [InApp]
  ///
  /// Set a container and inApp code, if is correct it return a
  /// callback with inApp and container and return a container
  /// with the webView embeded
  static Future<Container?> showInApp(
      String inAppCode,
      Container container,
      Function(InApp inApp, Container container)? onSuccess,
      Function(ErrorModel error)? onError) async {
    return showInAppWithInAppCode(
        inAppCode, container, null, null, null, null, onSuccess, onError);
  }

  /// Show [InApp]
  ///
  /// Set a container and inApp code, if is correct it return a
  /// callback with inApp and container and return a container
  /// with the webView embeded or return callbacks of properties action of inApp
  static Future<Container?> showInAppWithInAppCode(
      String inAppCode,
      Container container,
      Function(Container container, ErrorModel error)? didExpired,
      Function(Container container, ErrorModel error)? didShowManyTimes,
      Function(Container container, ErrorModel error)? didClickOut,
      Function(Container container, ErrorModel error)? dismissForever,
      Function(InApp inApp, Container container)? onSuccess,
      Function(ErrorModel error)? onError) async {
    return _inAppWasShown(inAppCode, container, didExpired, didShowManyTimes,
        didClickOut, dismissForever, onSuccess, onError);
  }

  /// Show multiple [InApp]
  ///
  /// Set a list of containers and inApp codes, if is correct it return a
  /// callback with inApp and container and return a listView with all containers
  /// with the webViews embeded or return callbacks of properties action of inApp
  static Future<ListView> showMultipleInApp(
      List<String> inAppCodes,
      List<Container> containers,
      Function(InApp inApp, Container container)? onSuccess,
      Function(ErrorModel error)? onError) async {
    return showMultipleInAppWithInAppCode(
        inAppCodes, containers, null, null, null, null, onSuccess, onError);
  }

  /// Show multiple [InApp]
  ///
  /// Set a list of containers and inApp codes, if is correct it return a
  /// callback with inApp and container and return a listView with all containers
  /// with the webViews embeded
  static Future<ListView> showMultipleInAppWithInAppCode(
      List<String> inAppCodes,
      List<Container> containers,
      Function(Container container, ErrorModel error)? didExpired,
      Function(Container container, ErrorModel error)? didShowManyTimes,
      Function(Container container, ErrorModel error)? didClickOut,
      Function(Container container, ErrorModel error)? dismissForever,
      Function(InApp inApp, Container container)? onSuccess,
      Function(ErrorModel error)? onError) async {
    List<Container> listContainer = [];
    for (var i = 0; i < inAppCodes.length; i++) {
      var container = await _inAppWasShown(
          inAppCodes[i],
          containers[i],
          didExpired,
          didShowManyTimes,
          didClickOut,
          dismissForever,
          onSuccess,
          onError);
      if (container != null) listContainer.add(container);
    }
    return ListView.builder(
        itemCount: listContainer.length,
        shrinkWrap: true, // <- added
        //primary: false, //
        itemBuilder: (BuildContext context, int index) {
          return listContainer[index];
        });
  }

  /// Get object [InApp]
  ///
  /// Set the vars to return a  container with a webView
  static Future<Container?> _inAppWasShown(
      String inAppCode,
      Container container,
      Function(Container container, ErrorModel error)? didExpired,
      Function(Container container, ErrorModel error)? didShowMore,
      Function(Container container, ErrorModel error)? didClickOut,
      Function(Container container, ErrorModel error)? dismissForever,
      Function(InApp inApp, Container container)? onSuccess,
      Function(ErrorModel error)? onError) async {
    await _indigitall
        .invokeMapMethod(_ACTION_GET_INAPP, inAppCode)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_GET_INAPP) {
                      InApp newInApp = InApp(valueMap);
                      if (newInApp.schema != null &&
                          newInApp.schema!.height != null &&
                          newInApp.schema!.width != null) {
                        inAppGetHtml(newInApp.properties?.contentUrl,
                            (html) async {
                          var height = container.constraints!.maxHeight;
                          var width = container.constraints!.maxWidth;
                          //InAppWebViewController webView;
                          container = Container(
                              width: width,
                              height: height,
                              child: Expanded(
                                  child: Stack(
                                children: [
                                  InAppWebView(
                                    initialUrlRequest: URLRequest(
                                        url: Uri.dataFromString(html,
                                            mimeType: 'text/html',
                                            encoding:
                                                Encoding.getByName('utf-8'))),
                                    onWebViewCreated: (controller) {
                                      // webView = controller;
                                    },
                                  ),
                                  GestureDetector(
                                    behavior: HitTestBehavior.translucent,
                                    // onTapDown: (_) => print('webview onTapDown $_'),
                                    // onTapUp: (_) async => {
                                    //   _indigitall.invokeMethod(
                                    //       _ACTION_TAP_INAPP, newInApp.toMap())
                                    // },
                                    child: Container(),
                                  ),
                                ],
                              )));
                          if (onSuccess != null) onSuccess(newInApp, container);
                        });
                      }
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (error.code == "2101")
                    {
                      if (didExpired != null)
                        didExpired(
                            container, ErrorModel(error.code, error.message))
                    }
                  else if (error.code == "2102")
                    {
                      if (didShowMore != null)
                        didShowMore(
                            container, ErrorModel(error.code, error.message))
                    }
                  else if (error.code == "2103")
                    {
                      if (didClickOut != null)
                        didClickOut(
                            container, ErrorModel(error.code, error.message))
                    }
                  else if (error.code == "2304")
                    {
                      if (dismissForever != null)
                        dismissForever(
                            container, ErrorModel(error.code, error.message))
                    }
                  else
                    {
                      if (onError != null)
                        onError(ErrorModel(error.code, error.message))
                    }
                }
            });
    return container;
  }

  /// Show a pop up
  ///
  /// Map params with the InAppCode, the icon name you put in native modules
  /// and boolean icon disabled. Callbacks if [InApp] is load
  ///// clicked, closed, dismissed or showTime finished.
  /// Throw [ErrorModel] if there is some error during the processs
  static void showPopUp(
      Map params,
      Function(InApp inApp)? onSuccess,
      // Function(String inAppCode, int time)? onShowTimeFinished,
      // Function()? didClicked,
      // Function()? didClosed,
      // Function()? didDismissed,
      Function(ErrorModel error)? onFail) async {
    _indigitall
        .invokeMapMethod(_ACTION_SHOW_POP_UP, params)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    switch (key) {
                      case _CALLBACK_SHOW_POPUP:
                        // if (onLoad != null) onLoad(valueMap.toString());
                        break;
                      case _CALLBACK_DID_CLICKED:
                        // if (didClicked != null) didClicked();
                        break;
                      case _CALLBACK_DID_CLOSED:
                        // if (didClosed != null) didClosed();
                        break;
                      case _CALLBACK_DID_DISMISSED:
                        // if (didDismissed != null) didDismissed();
                        break;
                      case _CALLBACK_SHOWTIME_FINISHED:
                        // Map map = valueMap;
                        // String code = "";
                        // int time = 0;
                        // map.forEach((keyShowTime, valueShowtime) {
                        //   if (keyShowTime == "showtime")
                        //     time = int.parse(valueShowtime.toString());
                        //   if (keyShowTime == "inAppCode")
                        //     code = valueShowtime.toString();
                        // });
                        // if (onShowTimeFinished != null)
                        //   onShowTimeFinished(code, time);
                        break;
                      default:
                        {
                          if (onSuccess != null) onSuccess(InApp(valueMap));
                        }
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onFail != null)
                    onFail(ErrorModel(error.code, error.message))
                }
            });
  }

  static void inAppTopicList(Function(List<String> topic)? onSuccess,
      Function(ErrorModel error)? onError) async {
    _indigitall
        .invokeMapMethod(_ACTION_INAPP_TOPICS_LIST)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_TOPIC_LIST) {
                      if (onSuccess != null) {
                        onSuccess(valueMap);
                      }
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// Subscribe to Topics
  ///
  /// topics Array of [Topics] to subscribe
  /// Callback to get [Topic]'s list
  /// Throw [ErrorModel] if there is some error during the processs
  static void inAppTopicSubscribe(
      List<String> params,
      Function(List<String> topic)? onSuccess,
      Function(ErrorModel error)? onError) async {
    _indigitall
        .invokeMapMethod(_ACTION_INAPP_TOPICS_SUBSCRIBE, params)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_TOPIC_SUBSCRIBE) {
                      if (onSuccess != null) {
                        onSuccess(valueMap);
                      }
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// Unsubscribe to Topics
  ///
  /// topics Array of [Topics] to unsubscribe
  /// Callback to get [Topic]'s list
  /// Throw [ErrorModel] if there is some error during the processs
  static void inAppTopicUnsubscribe(
      List<String> params,
      Function(List<String> topic)? onSuccess,
      Function(ErrorModel error)? onError) async {
    _indigitall
        .invokeMapMethod(_ACTION_INAPP_TOPICS_UNSUBSCRIBE, params)
        .then((value) => {
              if (value != null)
                {
                  value.forEach((key, valueMap) {
                    if (key == _CALLBACK_TOPIC_UNSUBSCRIBE) {
                      if (onSuccess != null) {
                        onSuccess(valueMap);
                      }
                    }
                  })
                }
            })
        .catchError((error) => {
              if (error is PlatformException)
                {
                  if (onError != null)
                    onError(ErrorModel(error.code, error.message))
                }
            });
  }

  /// addNewInAppToDismissForever
  ///
  /// Set an InApp to dismiss forever with an action
  static void addNewInAppToDismissForever(InApp inApp) {
    _indigitall.invokeMapMethod(
        _ACTION_ADD_NEW_INAPP_TO_DISMISS_FOREVER, inApp.toMap());
  }

  /// Add InApp New Click
  static void eventPrintInAppRequest(InApp inApp) {
    _indigitall.invokeMethod(_ACTION_EVENT_PRINT, inApp.toMap());
  }

  /// Add InApp New Click
  static void onClick(InApp inApp) {
    _indigitall.invokeMethod(_ACTION_ON_CLICK, inApp.toMap());
  }
}
