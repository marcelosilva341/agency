import 'package:dg_agency/ui/shared/app_bar_dg.dart';
import 'package:flutter/material.dart';

class DepoimentPage extends StatefulWidget {
  const DepoimentPage({super.key});

  @override
  State<DepoimentPage> createState() => _DepoimentPageState();
}

class _DepoimentPageState extends State<DepoimentPage> {
  var depoiments = [
    const Depoiment(
        'Agradecemos à todas as rádios e a logística e trabalho feito pelo Diego Gimenez que esteve conosco o tempo todo e atuou brilhantemente na construção da agenda contribuindo para colhermos os bons frutos deste trabalho para a carreira do Detonautas.',
        'Tico Santa Cruz',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/02/34ab1ac4-d923-4b17-bc51-6ea3dee85650.png'),
    const Depoiment(
        'No final de 2019 fiz uma tour de mídia com o pessoal da DG Agency passando por rádios e tvs do RS e SC para divulgar o meu primeiro lançamento. O trabalho da agência foi impecável, conseguimos levar minha música para muitos lugares diferentes, tive um retorno positivo com todo esse trabalho e certamente irei repetir o processo com minhas novas músicas. A equipe toda foi muito profissional, organizada, se preocuparam com todos os detalhes para que tudo saísse da forma ideal e sem atrasos. Só tenho a agradecer o Diego e toda a equipe pelo trabalho, valeu muito a pena cada km rodado.',
        'Tuca',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/02/ad4ff7d7-fe42-4a8a-b054-0f901e03233f.jpg'),
    const Depoiment(
        'O Diego é com certeza um dos caras mais capacitados aqui no Sul do Brasil, ele possui um profissionalismo tremendo com grandes artistas.',
        'Gerson Junior',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/f2a9fcf9-2dd1-4481-aadb-04579cc052f1.jpg'),
    const Depoiment(
        'O que o Diego Gimenez toca vira ouro e não posso deixar de agradecê-lo por prestigiar nós da Jovem Pan e também o público do litoral norte trazendo grandes artistas aqui para nossa rádio.',
        'Lucar Filho',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/3b99808d-ba78-4094-81ff-203f3480e645.jpg'),
    const Depoiment(
        'O Diego Gimenez é um cara super competente e um parceiro de longa data aqui da rádio Mix. Ele é nosso grande companheiro nos Pocket Shows que oferecemos, sempre trazendo grandes artistas para agregar música de qualidade e cultura para nossa região. Minha dica é que você atribua sua marca à DG AGENCY, pois sem dúvidas é referência na divulgação pelo Sul e no trabalho dele nós confiamos!',
        'Luan Santos',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/39a87d7e-ddd0-420b-a257-2d0f7a0c04a9.jpg'),
    const Depoiment(
        'Bom, o início dessa parceria surgiu através da indicação de um amigo, e aí começa um ciclo no final de Setembro. DG Agency uma escolha que só tenho que agradecer, sempre desenvolvendo os trabalhos com atenção e dedicação, os artistas ficam a vontade e tranquilos com a condução da DG Agency só tenho agradecer a Deus por essa parceria e em breve tem lançamento pela DG Agency e Virgin music',
        'Léo Mattos',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/d177b144-9bff-432a-9b4c-aab72f8a0ade.jpg'),
    const Depoiment(
        'Fechar com um escritório de gestão de carreira é o sonho de todo artista, pois temos consciência das dificuldades da carreira. Desde do meu primeiro encontro com a equipe da DG, sabia que com eles eu poderia focar no artístico e deixar o restante com eles. E assim está sendo!A amizade, parceria e carinho são genuínos e a certeza que o trabalho será feito, sem promessas mas com empenho, me passam firmeza e confiança para seguir em busca dos objetivos.',
        'Gabi Nogueira',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/c4840260-8a64-4f8c-9225-fc924038f09f-e1677636796717.jpg'),
    const Depoiment(
        '''Na nossa carreira a DG foi um marco de progresso e com ela nossa música com certeza está indo mais longe, alcançando mais pessoas! Muita coisa já foi realizada com essa equipe linda!! Já tivemos alguns clipes nossos aparecendo em programas de tv conceituados como: TVZ, Bis, Music box... além de reportagens em sites, portais nacionalmente conhecidos e até aparecemos em stories de empresas incríveis como: VOGUE, Rolling Stones, Caras, Istoé, UOL, Contigo, entre outras... e tudo isso com certeza foi um marco na nossa carreira, sem contar com a equipe maravilhosa e impecável da DG! A gente ama demais!
O Diii é claro, nem se fala né ? Virou quase que um paizão pra gente, abraçou nosso sonho e batalha junto da gente pra alavancar nossa carreira pra chegarmos no próximo degrau! Não nos sentimos desamparadas e perdidas com a DG, a gente traça um rumo e vai atrás! A gente ama e somos gratas por fazer parte desse time lindo de profissionais! ''',
        'Lou',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/f9196be2-ea6a-4f47-9b09-89fe4fc493a0.jpg'),
    const Depoiment(
        'DG Agency é sinônimo de comprometimento e profissionalismo. Ter uma assessoria para dar suporte ao artista faz toda a diferença para trilhar uma carreira com tranquilidade. Além disso, são pessoas do bem, com valores e princípios, que é o mais importante! Na DG Agency, nós nos sentimos em casa!!!',
        'Beto Bass',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/dfbdd95a-d5d4-4868-a745-5d72aca3d9fc-e1677637145372.jpg'),
    const Depoiment('''Olá tudo bem pessoal? 
Aqui é Rafael Ferreira, sou repórter da “isto é” e quero aqui agradecer a parceria com Diego Gimenez, um cara muito gente boa e que cuida de diversos artistas sensacionais aí. Sucesso, obrigado por tudo e estamos juntos sempre. Abração''',
        'Rafael Ferreira',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/0f7d0603-6809-4593-b319-39ea146f4ebf-e1677637497767.jpg'),
    const Depoiment('''Fala galera sou Rafael Godinho
 Sou repórter da Revista QUEM estou aqui para falar um pouco da parceria com Diego Gimenez aí de tantos anos, ele é um cara muito profissional e trabalhar com vários artistas e tem essa relação muito legal com a imprensa e não só comigo, mas também com vários colegas que tem feedback positivo com ele. Valeu Diego e Equipe da DG.''',
        'Rafael Godinho',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/20d934f6-5d65-4c45-841e-7dc1e4f51a62-e1677637624681.jpg'),
    const Depoiment('''Fala pessoal,
Márcio Moureira da “som livre” tô passando aqui para dizer que o trabalho da DG Agency do meu amigo Digão, foi demais na semana passada, fizemos uma maratona de rádios Tom Carfi e o feedback foi muito positivo tanto nas redes sociais quanto no offline né? O público tem também respondido muito bem a essas ações. Sem dúvidas ter um parceiro desse gabarito com a gente faz toda diferença no lançamento de qualquer artista, então muito obrigado por essa parceria e esse é só o começo viu Diegão? Um abraço.''',
        'Marcio Moureira',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/1d4524ce-3bf8-4e61-81e9-615c0644d752-e1677637722908.jpg'),
    const Depoiment(
        'Sou Felipe Gatto, repórter da CARAS e estou aqui para falar de Diego Gimenez da DG AGENCY, um cara sempre gentil, educado e muito bacana nas pautas que dividimos nas “caras“ é isso aí, um beijo para todo mundo e a gente está junto.',
        'Felipe Gato',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/de0a08ac-c040-4ab2-b8f7-562e70462eee-e1677637973583.jpg'),
    const Depoiment('''Fala galera, como estão? Tudo bem?
Aqui quem fala é o Adriano Souza da “Music Box Brasil” falar da DG essa agência maravilhosa, uma das maiores descobridoras de talentos do Brasil, eles fazem um trabalho incrível incrível, boa parte das novidades aí que aparecem na televisão, as novidades musicais são descobrimentos da DG e cara parabéns por esse excelente atendimento que vocês fazem. É isso aí estamos juntos''',
        'Adriano Souza',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/ef0973d8-dd94-4792-b749-48eb94c9fe5e.jpg'),
    const Depoiment('''Olá, aqui é a Vivi Lyra 
Sou artista da DG Agency desde 2018, desde então, me acolheram como uma família. Dando todo suporte na minha carreira, nos mínimos detalhes. Sou grata a DG pela confiança, pelo carinho, pela dedicação. 
Ser da DG, é um mérito, é uma honra. 
Carinhosamente 
Vivi Lyra''', 'Vivi Lyra',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/545f23e0-a058-4235-9d09-09eec5a07860-e1677638459609.jpg'),
    const Depoiment(
        '''Todo artista que leva seu trabalho a sério busca exatamente uma empresa com os dotes da DG. Ainda é uma honra muito grande lembrar que faço parte de um time tão qualificado que busca o melhor para os seus artistas, sempre oferecendo suporte, idealizando os lançamentos e guiando todos os passos que envolvem uma carreira.

Todo esse empenho e cuidado com os mínimos detalhes é fruto da alma de uma figura com grande personalidade: Diego Gimenez. Sou eternamente grato por cada ação e conselho desse irmão/pai que a vida me presenteou. É uma extrema satisfação contar com alguém que dispõe de tanta experiência, sempre disposto a agir e caminhar mais longe. A DG é um porto onde a arte ganha repouso e o artista expande sua voz.''',
        'Dani Castro',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/e043c258-208e-4aa4-b9d1-43f7aa40463d-e1677638548179.jpg'),
    const Depoiment(
        '''A DG Agency realmente é o espelho do seu criador. Um empresa em constante processo de inovação e evolução, jamais permitindo-se fazer mais do mesmo, porque a excelência não é apenas uma palavra, mas sim um compromisso. A busca pela perfeição esta justamente em aliar talento e trabalho na medida certa, o que faz da DG a escolha perfeita para quem busca ir alcançar as estrelas e não apenas observa-las. Vida Longa a Diego Gimenez, seus colaboradores e parceiros. Mais do que uma marca, a certeza de sucesso.
Todo esse empenho e cuidado com os mínimos detalhes é fruto da alma de uma figura com grande personalidade: Diego Gimenez. Sou eternamente grato por cada ação e conselho desse irmão/pai que a vida me presenteou. É uma extrema satisfação contar com alguém que dispõe de tanta experiência, sempre disposto a agir e caminhar mais longe. A DG é um porto onde a arte ganha repouso e o artista expande sua voz.''',
        'Pepe Soares',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/7fb3e27b-8437-46d4-92bc-321cdc46f4f1-e1677638668128.jpg'),
    const Depoiment(
        '''Sou o cantor Gui Armelin, artista da DG Agency e estou aqui somente para dizer que essa equipe é maravilhosa! Tenho total confiança em todos que trabalham na empresa e ouso em dizer que minha carreira tomou caminhos bem mais assertivos depois que assinei nosso contrato. Sou totalmente feliz em dizer que sou artista DG Agency! Tamo junto e um abraço.Todo esse empenho e cuidado com os mínimos detalhes é fruto da alma de uma figura com grande personalidade: Diego Gimenez. Sou eternamente grato por cada ação e conselho desse irmão/pai que a vida me presenteou. É uma extrema satisfação contar com alguém que dispõe de tanta experiência, sempre disposto a agir e caminhar mais longe. A DG é um porto onde a arte ganha repouso e o artista expande sua voz.''',
        'Gui Armelin',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/d37bba6d-e494-4524-bd0d-afa9a43256d3-e1677638766517.jpg'),
    const Depoiment(
        'A DG é nossa parceira há alguns anos. Agradecemos por todos trabalhos que desenvolvemos em conjunto: entrevistas de artistas, pocket show, promoções, entre outros. Vem muito mais por aí”',
        'Bruna Becker',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/e6f561e4-9348-4fef-8820-7453ce11a80e-e1677638868383.jpg'),
    const Depoiment(
        'A parceria com a DG Agency é muito positiva para a nossa empresa, tendo em vista a proximidade que temos com os artistas sendo a Rádio um elo para apresentar o trabalho e atualizar as novidades aos ouvintes. Além deste aspecto, o mais importante é a forma na qual o Diego Gimenez e a equipe atuam: de forma transparente, parceira e preocupada com a nossa empresa e seus representados. Com as entrevistas formamos conteúdo, aproximamos o ouvinte do seu artista e logo estaremos começando diversas ações presenciais. Isso só é possível com boas parcerias com temos com a DG Agency!',
        'Daniel Heck',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/8f6404ad-1f7c-4cbd-81ae-16d6080bd725-e1677638989151.jpg'),
    const Depoiment(
        '''Iaê meus amores, tudo bom? Venho aqui trazer meu depoimento sobre o trabalho da “DG AGENCY”.

Eles são incríveis, me dão todo suporte que preciso para as entrevistas nas rádios e demais meios de comunicação, me orientam de como devo me portar e falar.

Foram incríveis durante a gravação do meu clipe, conseguindo me deixar relaxada, falando do clipe a equipe da DG são extremamente profissionais, trouxeram ideias incríveis que fez com que o clipe fluísse perfeitamente deixando melhor do que tinha previsto.

Sem esquecer do incrível suporto deles junto ao meu show, cuidaram de tudo no backstage, iluminação, telão, fogos, fotos, filmagem, já estava tudo pronto e organizado, o que acarretou num show incrível. Em resumo eles são simplesmente d+ ''',
        'Angélica Espíndola',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/5c632c33-3ea5-462e-8c60-27946b65bf76-e1677639150721.jpg')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const AppBarDg(),
      body: SizedBox.expand(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            depoiments[0],
            const SizedBox(
              height: 10,
            ),
            depoiments[1],
            const SizedBox(
              height: 10,
            ),
            depoiments[2],
            const SizedBox(
              height: 10,
            ),
            depoiments[3],
            const SizedBox(
              height: 10,
            ),
            depoiments[4],
            const SizedBox(
              height: 10,
            ),
            depoiments[6],
            const SizedBox(
              height: 10,
            ),
            depoiments[7],
            const SizedBox(
              height: 10,
            ),
            depoiments[8],
            const SizedBox(
              height: 10,
            ),
            depoiments[9],
            const SizedBox(
              height: 10,
            ),
            depoiments[10],
            const SizedBox(
              height: 10,
            ),
            depoiments[11],
            const SizedBox(
              height: 10,
            ),
            depoiments[12],
            const SizedBox(
              height: 10,
            ),
            depoiments[13],
            const SizedBox(
              height: 10,
            ),
            depoiments[14],
            const SizedBox(
              height: 10,
            ),
            depoiments[15],
            const SizedBox(
              height: 10,
            ),
            depoiments[16],
            const SizedBox(
              height: 10,
            ),
            depoiments[17],
            const SizedBox(
              height: 10,
            ),
            depoiments[18],
            const SizedBox(
              height: 10,
            ),
            depoiments[19],
            const SizedBox(
              height: 10,
            ),
            depoiments[20],
            const SizedBox(
              height: 10,
            ),
            depoiments[21],
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      )),
    );
  }
}

class Depoiment extends StatelessWidget {
  final String text;
  final String name;
  final String urlImage;
  const Depoiment(this.text, this.name, this.urlImage);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 200,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          Expanded(
              child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(text),
            ],
          )),
          const SizedBox(
            width: 12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          blurRadius: 5,
                          offset: Offset(1, 2))
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    image: DecorationImage(image: NetworkImage(urlImage))),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
