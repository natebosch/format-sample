// Copyright (C) 2021 Yaroslav Pronin <proninyaroslav@mail.ru>
// Copyright (C) 2021 Insurgo Inc. <insurgo@riseup.net>
//
// This file is part of LibreTrack.
//
// LibreTrack is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// LibreTrack is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with LibreTrack.  If not, see <http://www.gnu.org/licenses/>.

import 'package:libretrack/core/crash_report/crash_report_manager.dart';
import 'package:libretrack/core/notification_manager.dart';
import 'package:libretrack/injector.dart';

import '../crash_catcher.dart';

class NotificationCrashHandler implements CrashHandler {
  @override
  Future<void> handle(Object error, StackTrace? stackTrace) async {
    final notifyManager = getIt<NotificationManager>();

    await notifyManager.crashReportNotify(
      CrashInfo(error: error, stackTrace: stackTrace),
    );
  }
}
