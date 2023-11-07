import 'package:dg_agency/ui/shared/app_bar_dg.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LockedAccess extends StatelessWidget {
  var login = TextEditingController();
  var password = TextEditingController();
  var keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarDg(),
      backgroundColor: Colors.black,
      body: Form(
          key: keyForm,
          child: ListView(
            children: [
              Image.asset(
                'assets/app-icon.png',
                height: 220,
              ),
              const Center(
                child: Text(
                  'Acesso restrito DG',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28, top: 50),
                child: TextFormField(
                    validator: (value) {
                      if (value == '') {
                        return 'Login invalido';
                      }
                      return null;
                    },
                    controller: login,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Digitar login",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)))),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28),
                child: TextFormField(
                    validator: (value) {
                      if (value == '') {
                        return 'Senha invalida';
                      }
                      return null;
                    },
                    controller: password,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Digitar senha",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)))),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 28.0, right: 28, bottom: 50),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        if (!keyForm.currentState!.validate()) {
                          return;
                        }
                        if (login.text != 'DG AGENCY' ||
                            password.text != '101010') {
                          return;
                        }
                        await launchUrl(Uri.parse(
                            'https://drive.google.com/drive/folders/13ELgNGTYtnzdT4KWAB-dDo_fMBSna7zl'));
                      },
                      child: const Text(
                        "Enviar",
                        style: TextStyle(color: Colors.black),
                      )),
                ),
              )
            ],
          )),
    );
  }
}
