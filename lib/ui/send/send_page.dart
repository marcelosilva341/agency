import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SendPage extends StatefulWidget {
  const SendPage({super.key});

  @override
  State<SendPage> createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  bool loading = false;
  var linkSend = TextEditingController();
  var nameSand = TextEditingController();
  var emailSend = TextEditingController();

  sendLink(String link) async {
    if (link == '') {
      return;
    }
    loading = true;
    setState(() {});
    await FirebaseFirestore.instance
        .collection('links')
        .doc(emailSend.text)
        .set({
          'link': linkSend.text,
          'nome': nameSand.text,
          'email': emailSend.text
        })
        .then((value) => showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('OK'))
                  ],
                  title: Column(children: const [
                    SizedBox(
                      height: 10,
                    ),
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 85,
                    ),
                    Text("Link enviado com sucesso!!!"),
                  ]),
                )))
        .catchError((value) => showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Tente novamente'))
                  ],
                  title: Column(children: const [
                    SizedBox(
                      height: 10,
                    ),
                    Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 85,
                    ),
                    Text("Tente novamente mais tarde"),
                  ]),
                )));

    loading = false;
    linkSend.text = '';
    nameSand.text = '';
    emailSend.text = '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox.expand(
        child: ListView(
          children: [
            const SizedBox(
              height: 260,
            ),
            const Text(
              "Nos envie seu trabalho atraves de um link no drive",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: nameSand,
              decoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Seu nome",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: emailSend,
              decoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Seu email",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: linkSend,
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Digitar link",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () async {
                      await sendLink(linkSend.text);
                    },
                    child: loading
                        ? const CircularProgressIndicator()
                        : const Text(
                            "Enviar",
                            style: TextStyle(color: Colors.black),
                          )))
          ],
        ),
      ),
    );
  }
}
