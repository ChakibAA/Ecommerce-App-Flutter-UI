// ignore_for_file: file_names
import 'package:ecommerce/Widget/IconShadow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../Constant.dart';
import '../../SizeConfig.dart';
import 'widget/LoginField.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(
            bottom: getProportionateScreenHeight(5),
          ),
          child: IconShadow(
            icons: CupertinoIcons.back,
            size: 25,
            onpressed: () => Get.back(),
          ),
        ),
        title: const Text(
          'Se Connecter',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.only(right: defaultpadding, left: defaultpadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: defaultpadding),
              child: const Text('Bienvenue ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 35),
                  textAlign: TextAlign.center),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultpadding * 2),
              alignment: Alignment.center,
              child: const Text(
                  'Connectez-vous avec votre email et votre mot de passe',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                  textAlign: TextAlign.center),
            ),
            SizedBox(
              height: getProportionateScreenHeight(80),
            ),
            LoginField(
              label: 'Email',
              hint: 'Entrez votre email',
              obscure: false,
              textInputType: TextInputType.emailAddress,
              icon: FontAwesomeIcons.envelope,
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            LoginField(
              label: 'Mot de passe',
              hint: 'Entrez votre passe',
              obscure: true,
              textInputType: TextInputType.text,
              icon: FontAwesomeIcons.lock,
            ),
            SizedBox(
              height: getProportionateScreenHeight(5),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () => Get.toNamed('/Forget'),
                  child: const Text(
                    'Mot de passe oublié ?',
                    style: TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.underline),
                  )),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(primaryColor),
                fixedSize: MaterialStateProperty.all(Size(
                    getProportionateScreenWidth(300),
                    getProportionateScreenHeight(50))),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18))),
              ),
              child: const Text(
                'Se connecter',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () => Get.toNamed('/Sign'),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Vous n'avez pas de compte ? ",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "Inscrivez-vous ",
                      style: TextStyle(
                        color: primaryColor,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
