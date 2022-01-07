// ignore_for_file: file_names
import 'package:ecommerce/Screen/Profile/widget/ProfileButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                ProfileButton(
                  iconData: FontAwesomeIcons.signInAlt,
                  title: 'Se Connecter',
                  onPressed: () {
                    Get.toNamed('/Login');
                  },
                ),
                const SizedBox(height: 20),
                ProfileButton(
                  iconData: Icons.person,
                  title: 'Mon Compte',
                  onPressed: () {},
                ),
                const SizedBox(height: 20),
                ProfileButton(
                  iconData: FontAwesomeIcons.bell,
                  title: 'Notifications',
                  onPressed: () {},
                ),
                const SizedBox(height: 20),
                ProfileButton(
                  iconData: FontAwesomeIcons.moon,
                  title: 'Mode Sombre',
                  onPressed: () {},
                  suffixIcon: CupertinoSwitch(
                    value: false,
                    onChanged: (value) {},
                  ),
                ),

                // ProfileButton(
                //   iconData: FontAwesomeIcons.signOutAlt,
                //   title: 'Se deconnecter',
                //   onPressed: () {},
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
