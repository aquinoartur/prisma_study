import 'package:flutter/material.dart';

class QuizzizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.teal[700]),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: ListView(children: [
      Container(
        color: Colors.white,
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10, top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.teal[600],
            ),
            child: Text(
              'A PLATAFORMA QUIZIZZ',
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     A plataforma funciona sob duas óticas: a construção de um quiz e a sua aplicação, sendo a primeira responsabilidade do professor ou pesquisador e a segunda do estudante ou investigado.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     Para facilitar a visualização desses cenários, esta seção possuirá três subseções para explicar a ótica do professor, do aluno e também o sistema de notas adotado pelo autor para a transformação da pontuação do Game Prisma em um sistema de notas válidas para a avaliação da disciplina.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10, top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.teal[600],
            ),
            child: Text(
              'A CRIAÇÃO DO QUIZ NA ÓTICA DO PROFESSOR',
              style: TextStyle(
                  color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     A elaboração do Game Prisma tem como ponto de partida a tela principal da plataforma Quizizz após a ação do login. Nessa tela, o usuário pode selecionar a opção Create, destacada em vermelho na figura a seguir.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10, top: 10),
            child: Image.network('https://i.imgur.com/3SFvOAC.jpg')
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     Após selecionar a opção de criar um novo quiz, basta selecionar a opção quiz e em sequência definir o nome e outros detalhes para personaliza-lo, como imagem de capa, disciplina na qual o quiz será aplica, a unidade de medida do SI, dentre outros (Figura 9). A partir daqui, destaques em vermelhos serão feitos nas imagens para que o leitor possa identificar as principais funções de cada tela.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10, top: 10),
            child: Image.network('https://i.imgur.com/w50Ffnj.jpg')
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     Além disso, também é possível configurar a privacidade do questionário. Neste caso, o indicado é deixar como Public para que todas as pessoas possam acessar sem que sejam necessárias muitas requisições. Note que, nessa mesma tela, é possível selecionar o idioma do quiz.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     Após salvar as configurações das telas anteriores, é hora de criar uma questão e escolher qual o seu tipo. As principais opções de tipo disponíveis são de múltipla escolha, caixa de seleção, questão aberta para respostas e questão com resposta única (mas que aceita variações ou respostas semelhantes). '),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     Na figura abaixo atente para as caixas de destaque para criação de uma nova questão e o seu tipo.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10, top: 10),
            child: Image.network('https://i.imgur.com/sU7px9Q.jpg')
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     A opção Multiple Choice selecionada corresponde a múltipla escolha e a elaboração da questão pode ser acompanhada pela figura a seguir.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10, top: 10),
            child: Image.network('https://i.imgur.com/yfEFCpt.jpg')
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     A opção de caixa de seleção oferece mais flexibilidade para combinar respostas. Neste caso, ela foi utilizada para completar uma reposta que foi separada em duas partes. Na visualização em tempo real, atente para a imagem adicionada indicando uma Ação de Estudo.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     Após a criação do número de problemas desejado, basta selecionar a opção de finalizar o quiz. Uma nova tela com o quiz finalizado irá aparecer, onde nela será possível escolher como o ele será aplicado. Existem duas opções possíveis, a primeira é a de aplicar em tempo real com os investigados e a segunda é a aplicação individual e com prazo determinado.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     Para esta pesquisa, a opção utilizada é a aplicação em tempo real. Optou-se por esta modalidade uma vez que as atividades da SD proposta será em equipe e aplicada de forma remota no Google Meet. Esse cenário é ideal para a utilização da aplicação em tempo real, pois no encontro destinado a essa atividade será possível acompanhar o desempenho das equipes. Essa etapa é detalhada na subseção seguinte.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10, top: 10),
            child: Image.network('https://i.imgur.com/5T9Wffi.jpg')
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     A opção Start a live quiz indica que o usuário pode dar início a transmissão do quiz em tempo real. Para tanto, ainda é necessário selecionar a modalidade da aplicação do quiz, que pode ser em formato de teste competitivo, em equipe mas no ritmo dos alunos ou ainda individual mas no ritmo dos alunos. A opção utilizada aqui é a de teste competitivo, pois nesta modalidade também é possível trabalhar em equipes, basta apenas que na realização sejam indicados os nomes das equipes.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     A figura seguinte mostra a opção a ser setada, assim como ilustra a tela de configurações avançadas que é disponibilizada ao usuário para que este personalize a transmissão do quiz.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10, top: 10),
            child: Image.network('https://i.imgur.com/tUyPNSf.jpg')
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     Opções como quantidade de participantes e até visualização de resposta correta para os estudantes no ato de resolução do problema podem ser configuradas nesta tela.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     Finalmente, na próxima figura é mostrada a tela inicial da transmissão do quiz em tempo real. Nessa tela são gerados o código da sala e o link para compartilhamento.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10, top: 10),
            child: Image.network('https://i.imgur.com/Okhcc8W.jpg')
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     Nesta modalidade, a plataforma exige que os alunos façam login no sistema para que possam fazer uso da sala inserindo o código gerado ou o link compartilhado. Nesse ponto, a medida com que os alunos acessam a sala o professor poderá notar, no canto esquerdo da tela, a quantidade de alunos ou, neste caso, equipes disponíveis. A opção de Start fica habilitada quando pelo menos um aluno ou equipe está na sala, como mostra a figura.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     Durante a realização do quiz, é possível acompanhar o desempenho das equipes questão a questão. Veja:'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10, top: 10),
            child: Image.network('https://i.imgur.com/u6X2J2v.jpg')
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     As áreas destacadas correspondem ao placar de acertos e erros, mas também da pontuação por questão. A pontuação pode ser vista individualmente em cada questão ou em somatório. Para definir a pontuação, a plataforma calcula o tempo gasto para a resolução daquele item e atribui uma pontuação de 0 a 1000 pontos e que depende do tempo gasto para resolvê-la.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     Ao final do quiz, a opção de download de um arquivo Excel dessas informações é habilitada. A partir desses dados fornecidos é que será feita a conversão da pontuação do jogo para o sistema de notas válidas para a avaliação da disciplina.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     Além disso, com essas informações fornecidas, o professor terá acesso instantâneo ao desempenho de cada equipe e poderá anunciar qual equipe atingiu a pontuação mínima para poder ter acesso próximo nível do Game Prisma. Para cada nível do Game Prisma, foi elaborado um quiz contendo problemas correspondente àquele nível de dificuldade.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10, top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.teal[600],
            ),
            child: Text(
              'A REALIZAÇÃO DO QUIZ NA ÓTICA DO ALUNO',
              style: TextStyle(
                  color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     Neste ponto, o aluno já deve ter baixado o aplicativo do Quizizz ou acessado a plataforma web para realizar o login e para que esteja apto a entrar em uma sala. Lembrando que a necessidade de fazer login só é exigida na modalidade de transmissão em tempo real para teste competitivo.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     A figura seguinte resume o processo de aderir a uma sala e como se identificar para entrar no quiz.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10, top: 10),
            child: Image.network('https://i.imgur.com/xKCqaZd.jpg')
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     Na tela da esquerda, em destaque, fica localizado o campo para inserir o código da sala e na tela da direita o campo para identificação da equipe, assim como outras configurações práticas de som e imagem.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     As ações na perspectiva do aluno são mais simples, uma vez que este somente terá telas correspondentes aos problemas do Game Prisma. Para visualizar essa atividade, a próxima figura mostra a perspectiva do aluno no ato de resposta e pós-resposta de uma questão do tipo checkbox.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10, top: 10),
            child: Image.network('https://i.imgur.com/sgQr6H3.jpg')
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     A imagem representa o momento de selecionar a e o momento após o ato de confirmação da resposta, ou seja, o feedback imediato, que neste caso indica o êxito do aluno. Quando o problema é respondido corretamente a cor verde indica êxito, do contrário a cor vermelha indica que a resposta estava incorreta.'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                '     Ao fim da gameplay, o aluno terá acesso a tela de resultados que mostra o desempenho de sua equipe.'),
          ),
        ]),
      )
    ]));
  }
}
