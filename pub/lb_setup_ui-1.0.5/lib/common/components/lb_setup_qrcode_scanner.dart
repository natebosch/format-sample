// Copyright 2022 Logbot SRL. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../model/license_qrcode_model.dart';

class LbSetupQrCodeScanner extends StatefulWidget {
  const LbSetupQrCodeScanner({Key? key}) : super(key: key);

  @override
  State<LbSetupQrCodeScanner> createState() => LbSetupQrCodeScannerState();
}

class LbSetupQrCodeScannerState<T extends LbSetupQrCodeScanner>
    extends State<T> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'LbSetupUiQRCode');
  Barcode? qrCode;
  QRViewController? controller;
  late String messageText;
  String? licenseToken;

  @override
  void initState() {
    super.initState();
    messageText = "Scan your Logbot license";
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void reassemble() {
    // In order to get hot reload to work we need to pause the camera if the platform
    // is android, or resume the camera if the platform is iOS.
    super.reassemble();
    if (Platform.isAndroid) {
      controller?.pauseCamera();
    } else if (Platform.isIOS) {
      controller?.resumeCamera();
    }
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((Barcode scanData) async {
      if (qrCode == null ||
          (scanData.code != null && scanData.code != qrCode!.code)) {
        try {
          LicenseQrCode response =
              LicenseQrCode.fromJson(jsonDecode(scanData.code ?? "{}"));
          setState(() {
            qrCode = scanData;
            licenseToken = response.lic!.tk;
            messageText = "License Token: ${licenseToken ?? "Unknown"}";
          });
        } catch (e) {
          setState(() {
            qrCode = scanData;
            licenseToken = null;
            messageText = "Invalid license token";
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Text(
            messageText,
            maxLines: 2,
          ),
        ),
        Expanded(
          flex: 7,
          child: QRView(
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(licenseToken),
                child: const Text("CONFIRM"),
              )
            ],
          ),
        ),
      ],
    );
  }
}
