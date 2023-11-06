import 'package:dg_agency/ui/shared/app_bar_dg.dart';
import 'package:dg_agency/ui/shared/bottom_bar_dg.dart';
import 'package:flutter/material.dart';

class DepoimentPage extends StatefulWidget {
  const DepoimentPage({super.key});

  @override
  State<DepoimentPage> createState() => _DepoimentPageState();
}

class _DepoimentPageState extends State<DepoimentPage> {
  var depoiments = [
    Depoiment(
        'Agradecemos à todas as rádios e a logística e trabalho feito pelo Diego Gimenez que esteve conosco o tempo todo e atuou brilhantemente na construção da agenda contribuindo para colhermos os bons frutos deste trabalho para a carreira do Detonautas.',
        'Tico Santa Cruz',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/02/34ab1ac4-d923-4b17-bc51-6ea3dee85650.png'),
    Depoiment(
        'No final de 2019 fiz uma tour de mídia com o pessoal da DG Agency passando por rádios e tvs do RS e SC para divulgar o meu primeiro lançamento. O trabalho da agência foi impecável, conseguimos levar minha música para muitos lugares diferentes, tive um retorno positivo com todo esse trabalho e certamente irei repetir o processo com minhas novas músicas. A equipe toda foi muito profissional, organizada, se preocuparam com todos os detalhes para que tudo saísse da forma ideal e sem atrasos. Só tenho a agradecer o Diego e toda a equipe pelo trabalho, valeu muito a pena cada km rodado.',
        'Tuca',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/02/ad4ff7d7-fe42-4a8a-b054-0f901e03233f.jpg'),
    Depoiment(
        'O Diego é com certeza um dos caras mais capacitados aqui no Sul do Brasil, ele possui um profissionalismo tremendo com grandes artistas.',
        'Gerson Junior',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/f2a9fcf9-2dd1-4481-aadb-04579cc052f1.jpg'),
    Depoiment(
        'O que o Diego Gimenez toca vira ouro e não posso deixar de agradecê-lo por prestigiar nós da Jovem Pan e também o público do litoral norte trazendo grandes artistas aqui para nossa rádio.',
        'Lucar Filho',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/3b99808d-ba78-4094-81ff-203f3480e645.jpg'),
    Depoiment(
        'O Diego Gimenez é um cara super competente e um parceiro de longa data aqui da rádio Mix. Ele é nosso grande companheiro nos Pocket Shows que oferecemos, sempre trazendo grandes artistas para agregar música de qualidade e cultura para nossa região. Minha dica é que você atribua sua marca à DG AGENCY, pois sem dúvidas é referência na divulgação pelo Sul e no trabalho dele nós confiamos!',
        'Luan Santos',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/39a87d7e-ddd0-420b-a257-2d0f7a0c04a9.jpg'),
    Depoiment(
        'Bom, o início dessa parceria surgiu através da indicação de um amigo, e aí começa um ciclo no final de Setembro. DG Agency uma escolha que só tenho que agradecer, sempre desenvolvendo os trabalhos com atenção e dedicação, os artistas ficam a vontade e tranquilos com a condução da DG Agency só tenho agradecer a Deus por essa parceria e em breve tem lançamento pela DG Agency e Virgin music',
        'Léo Mattos',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/d177b144-9bff-432a-9b4c-aab72f8a0ade.jpg'),
    Depoiment(
        'Fechar com um escritório de gestão de carreira é o sonho de todo artista, pois temos consciência das dificuldades da carreira. Desde do meu primeiro encontro com a equipe da DG, sabia que com eles eu poderia focar no artístico e deixar o restante com eles. E assim está sendo!A amizade, parceria e carinho são genuínos e a certeza que o trabalho será feito, sem promessas mas com empenho, me passam firmeza e confiança para seguir em busca dos objetivos.',
        'Gabi Nogueira',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/c4840260-8a64-4f8c-9225-fc924038f09f-e1677636796717.jpg'),
    Depoiment(
        '''Na nossa carreira a DG foi um marco de progresso e com ela nossa música com certeza está indo mais longe, alcançando mais pessoas! Muita coisa já foi realizada com essa equipe linda!! Já tivemos alguns clipes nossos aparecendo em programas de tv conceituados como: TVZ, Bis, Music box... além de reportagens em sites, portais nacionalmente conhecidos e até aparecemos em stories de empresas incríveis como: VOGUE, Rolling Stones, Caras, Istoé, UOL, Contigo, entre outras... e tudo isso com certeza foi um marco na nossa carreira, sem contar com a equipe maravilhosa e impecável da DG! A gente ama demais!
O Diii é claro, nem se fala né ? Virou quase que um paizão pra gente, abraçou nosso sonho e batalha junto da gente pra alavancar nossa carreira pra chegarmos no próximo degrau! Não nos sentimos desamparadas e perdidas com a DG, a gente traça um rumo e vai atrás! A gente ama e somos gratas por fazer parte desse time lindo de profissionais! ''',
        'Lou',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/f9196be2-ea6a-4f47-9b09-89fe4fc493a0.jpg'),
    Depoiment(
        'DG Agency é sinônimo de comprometimento e profissionalismo. Ter uma assessoria para dar suporte ao artista faz toda a diferença para trilhar uma carreira com tranquilidade. Além disso, são pessoas do bem, com valores e princípios, que é o mais importante! Na DG Agency, nós nos sentimos em casa!!!',
        'Beto Bass',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/dfbdd95a-d5d4-4868-a745-5d72aca3d9fc-e1677637145372.jpg'),
    Depoiment('''Olá tudo bem pessoal? 
Aqui é Rafael Ferreira, sou repórter da “isto é” e quero aqui agradecer a parceria com Diego Gimenez, um cara muito gente boa e que cuida de diversos artistas sensacionais aí. Sucesso, obrigado por tudo e estamos juntos sempre. Abração''',
        'Rafael Ferreira',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/0f7d0603-6809-4593-b319-39ea146f4ebf-e1677637497767.jpg'),
    Depoiment('''Fala galera sou Rafael Godinho
 Sou repórter da Revista QUEM estou aqui para falar um pouco da parceria com Diego Gimenez aí de tantos anos, ele é um cara muito profissional e trabalhar com vários artistas e tem essa relação muito legal com a imprensa e não só comigo, mas também com vários colegas que tem feedback positivo com ele. Valeu Diego e Equipe da DG.''',
        'Rafael Godinho',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/20d934f6-5d65-4c45-841e-7dc1e4f51a62-e1677637624681.jpg'),
    Depoiment('''Fala pessoal,
Márcio Moureira da “som livre” tô passando aqui para dizer que o trabalho da DG Agency do meu amigo Digão, foi demais na semana passada, fizemos uma maratona de rádios Tom Carfi e o feedback foi muito positivo tanto nas redes sociais quanto no offline né? O público tem também respondido muito bem a essas ações. Sem dúvidas ter um parceiro desse gabarito com a gente faz toda diferença no lançamento de qualquer artista, então muito obrigado por essa parceria e esse é só o começo viu Diegão? Um abraço.''',
        'Marcio Moureira',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/1d4524ce-3bf8-4e61-81e9-615c0644d752-e1677637722908.jpg'),
    Depoiment(
        'Sou Felipe Gatto, repórter da CARAS e estou aqui para falar de Diego Gimenez da DG AGENCY, um cara sempre gentil, educado e muito bacana nas pautas que dividimos nas “caras“ é isso aí, um beijo para todo mundo e a gente está junto.',
        'Felipe Gato',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/de0a08ac-c040-4ab2-b8f7-562e70462eee-e1677637973583.jpg'),
    Depoiment('''Fala galera, como estão? Tudo bem?
Aqui quem fala é o Adriano Souza da “Music Box Brasil” falar da DG essa agência maravilhosa, uma das maiores descobridoras de talentos do Brasil, eles fazem um trabalho incrível incrível, boa parte das novidades aí que aparecem na televisão, as novidades musicais são descobrimentos da DG e cara parabéns por esse excelente atendimento que vocês fazem. É isso aí estamos juntos''',
        'Adriano Souza',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/ef0973d8-dd94-4792-b749-48eb94c9fe5e.jpg'),
    Depoiment(
        'Falar sobre a DG é fácil, a começar falar de Diego,  desse cara incrível que tenho a oportunidade de conhecer, conviver e confiar a ele o meu maior sonho que é cantar. Estamos em uma parceria, que vem a cada dia crescendo mais. Trabalhar com a DG é ter a garantia de que o seu trabalho será feito do jeitinho que vc quer, pois o carinho e amor, que todos os funcionários colocam no nosso trabalho é maravilhoso. Estou muito feliz, com tudo que vem acontecendo na minha carreira e acredito que vou me surpreender ainda mais com a DG. Palavra que me define junto a DG. FELICIDADE! Simbora pra cima, pq foguete não dá ré.',
        'Marta Santana',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/159aeef4-dbdc-42e7-ac32-b76dc8509d52-e1677638380616.jpg'),
    Depoiment('''Olá, aqui é a Vivi Lyra 
Sou artista da DG Agency desde 2018, desde então, me acolheram como uma família. Dando todo suporte na minha carreira, nos mínimos detalhes. Sou grata a DG pela confiança, pelo carinho, pela dedicação. 
Ser da DG, é um mérito, é uma honra. 
Carinhosamente 
Vivi Lyra''', 'Vivi Lyra',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/545f23e0-a058-4235-9d09-09eec5a07860-e1677638459609.jpg'),
    Depoiment(
        '''Todo artista que leva seu trabalho a sério busca exatamente uma empresa com os dotes da DG. Ainda é uma honra muito grande lembrar que faço parte de um time tão qualificado que busca o melhor para os seus artistas, sempre oferecendo suporte, idealizando os lançamentos e guiando todos os passos que envolvem uma carreira.

Todo esse empenho e cuidado com os mínimos detalhes é fruto da alma de uma figura com grande personalidade: Diego Gimenez. Sou eternamente grato por cada ação e conselho desse irmão/pai que a vida me presenteou. É uma extrema satisfação contar com alguém que dispõe de tanta experiência, sempre disposto a agir e caminhar mais longe. A DG é um porto onde a arte ganha repouso e o artista expande sua voz.''',
        'Dani Castro',
        'https://dgagency.com.br.stephenson.com.br/wp-content/uploads/2023/03/e043c258-208e-4aa4-b9d1-43f7aa40463d-e1677638548179.jpg')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const AppBarDg(),
      bottomNavigationBar: const BottomBarDg(),
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
            depoiments[16]
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
