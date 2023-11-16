import 'package:flutter/material.dart';

class ParceirosPage extends StatelessWidget {
  ParceirosPage({super.key});

  var parceirosImage = [
    'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/02/3768ba89-bdeb-404a-8219-d0974914dd03.png',
    'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/02/9613c715-e676-4a39-ae0e-6cbb31c899a7.png',
    'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/02/0d79241f-1413-445c-af48-88c5c2286ed9.png',
    'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/02/7bfcf124-9b00-4f40-9d2c-f01fdd105a55.png',
    'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/02/6bc43b6c-00e9-4849-9b1e-5dd6c04a5d99.png',
    'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/02/f0015a60-9a32-4ffe-ab8a-a4f0c3316a15.png',
    'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/02/5f8aff71-2937-43b1-8a36-36312e1962a3.png',
    'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/02/1fe45e23-c6e3-4442-b55c-8ee7450bc53e.png',
    'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/02/58fa852e-834f-4999-9992-6a3c9cc2d4a2.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Parceiros'),
        ),
        body: SizedBox.expand(
          child: ListView.builder(
            itemCount: parceirosImage.length,
            itemBuilder: (context, index) {
              var parceiroImage = parceirosImage[index];
              return Image.network(parceiroImage);
            },
          ),
        ));

    ///
  }
}
