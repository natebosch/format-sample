import 'package:flutter/material.dart';
import 'package:senior_design_system/senior_design_system.dart';

import '../widgets/page_wrapper.dart';

class ProfilePictureExample extends StatefulWidget {
  const ProfilePictureExample({Key? key}) : super(key: key);

  @override
  _ProfilePictureExampleState createState() => _ProfilePictureExampleState();
}

class _ProfilePictureExampleState extends State<ProfilePictureExample> {
  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      title: 'Profile Picture',
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SeniorProfilePicture(
              isLoading: true,
              radius: 45 / 2,
              name: 'Gustavo  Biolado   Senci',
            ),
            const SizedBox(height: 30),
            const SeniorProfilePicture(
              isLoading: true,
              radius: 45,
              name: 'Gustavo Senci',
              imageProvider: const NetworkImage(
                'https://tecnoblog.net/wp-content/uploads/2019/12/facebook-mark-zuckerberg-f8-2018-1.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
