import 'package:flutter/material.dart';

class SequenciadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.teal[700]),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: ListView(
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: 10, top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.teal[600],
                ),
                child: Text(
                  'CARACTERIZAÇÃO DA SEQUÊNCIA DIDÁTICA',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    '     A figura abaixo ilustra o esquema de etapas que constituem a sequência didática proposta pela pesquisa.  '),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: 10, top: 10),
                child: Image.network('https://i.imgur.com/pxJdKtR.jpg')
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    '     Seguindo o modelo de Dolz, Noverraz e Schneuwly (2004), a SD elaborada para esta pesquisa tem como etapa inicial a apresentação da pesquisa e ambientação com os investigados. Para avaliar o conhecimento prévio e avaliar a aprendizagem dos alunos será utilizada a técnica de pré-teste e pós-teste, que será implementada através de formulários do Google e disponibilizada na plataforma Prisma Study. O pré-teste ocorrerá antes dos módulos aplicados da SD, enquanto que o pós-teste será introduzido após a realização de todos os módulos aplicados da SD. '),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    '     A estruturação das atividades aplicadas da SD foi disposta em dois módulos, sendo o primeiro módulo voltado à estudos teóricos e expositivos, e o segundo às práticas virtuais na plataforma Prisma Study. A organização por módulos possibilita uma melhor divisão de atividades a medida em que os encontros acontecem.'),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    '     Para melhor representar a estruturação procedimental da SD, a figura abaixo ilustra de maneira mais detalhada os módulos propostos, bem como as tarefas as serem trabalhadas, recursos utilizados e tempo estimado de duração de cada etapa. É importante ressaltar que a apresentação da pesquisa e as avaliações de pré-teste e pós-teste compõem as atividades da SD mas não são ilustrada na figura abaixo.'),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: 10, top: 10),
                child: Image.network('https://i.imgur.com/Ax7mO9B.jpg')
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    '     Com o intuito de otimizar o tempo disponível e de trabalhar os conceitos e aplicações dos assuntos planejados a turma deve ser dividida em grupos, não ultrapassando 6 componentes por equipe. A separação das equipes não seguem uma regra pré-definida e pode ser feita por sorteio. Cada equipe deve eleger 1 líder para cada nível da atividade prática, ou seja, do Quiz. Um mesma pessoa não poderá liderar mais de um nível do Quiz, o qual possui três níveis. A partir daqui, o Quiz referido será denotado por Game Prisma para facilitar a comunicação e identificação das ferramentas.'),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    '     Nessa perspectiva, a SD foi pensada para ocupar quatro encontros obrigatórios, somando aproximadamente oito horas para seu desenvolvimento. Vale salientar que cada módulo foi planejado para ser trabalhado em encontros diferentes, sendo o Módulo I a ser aplicado nos dois primeiros momentos e o Módulo II nos dois encontros subsequentes.'),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    '     Agora, acompanhe detalhamente a descrição de cada encontro e atvidade.'),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.teal[600],
                ),
                child: Text(
                  'MÓDULO I',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment(-1, -0.75),
                    child: Text(
                      '1º Encontro',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    '     A primeira etapa proposta é, na verdade, uma socialização entre o pesquisador, os alunos e professores em um encontro virtual cujo o objetivo é introduzi-los a plataforma Prisma Study.'),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    '     O intuito desse encontro é aproximar todos os sujeitos e reafirmar o objetivo da pesquisa. Outro pontos fundamentais também devem ser definidos neste primeiro momento, como definição de regras e espaço para questionamentos.'),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment(-1, -0.75),
                    child: Text(
                      '2º Encontro',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    '     Em sequência, a segunda etapa do Módulo I propõe uma aula expositiva lecionada pelo professor da disciplina, que apresenta, resumidamente, os principais conteúdos, leis e conceitos da Óptica Geométrica. Espera-se que a aula expositiva tenha efeitos que possibilitem os discentes a associarem melhor a teoria requerida nas atividades seguintes. Para aula expositiva, faz-se uso de recursos como slides, vídeos do YouTube além da plataforma Prisma Study que contém uma cartilha que agrega um resumo geral do conteúdo a ser trabalhado.'),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    '     A plataforma Prisma Study será melhor apresentada ao longo do Capítulo 5, onde serão apresentadas a documentação e metodologias de implementação dos processos de desenvolvimento de engenharia didática para a elaboração do OA.'),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.teal[600],
                ),
                child: Text(
                  'MÓDULO II',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment(-1, -0.75),
                    child: Text(
                      '3º Encontro',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    '     No Módulo II, a primeira etapa visa a aplicação de um questionário em forma de quiz, o Game Prisma, que aborda exercícios sobre Óptica Geométrica, como conceitos de reflexão, refração e espelhos planos.'),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    '     O Game Prisma será elaborado pela plataforma Quizizz e será agregado ao Prisma Study. O quiz possui três níveis de exercícios que partem do nível mais básico até o mais avançado e possuem sistema pontuação e sistema de notas pré-definidos conforme a seção 4.2 destaca. Nessa mesma seção o leitor poderá visualizar o funcionamento da plataforma Quizizz e como ocorrerá a construção do Game Prisma.'),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    '     O sistema de notas adota pesos variáveis para cada nível de dificuldade dos exercícios abordados. Para esta etapa, também coletiva, estipulou-se um período de duas horas/aula para execução das atividades. A aplicação desta etapa será feita de forma síncrona pelo Google Meet e a utilização da plataforma Prisma Study deve ser feita por todos os alunos, no entanto, somente o líder da equipe poderá enviar a resposta final pelo aplicativo. Portanto, é dever do líder organizar sua equipe para que possam ajudá-lo durante o período de resolução do Game Prisma.'),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    '     A boa gestão por parte do líder é de extrema importância, uma vez que as atividades do Game Prisma possuem tempo de resposta e estão definidas em duas categorias denominadas de Ação de Estudo e Ação de Pesquisa, como ilustra a figura abaixo:'),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: 10, top: 10),
                child: Image.network('https://i.imgur.com/HyrARed.jpg')
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    '     As categorias tem o objetivo de impulsionar a investigação e apropriação de novos conhecimentos por partes dos discentes, bem como utilizar os conhecimentos prévios e adquiridos através da aula expositiva e materiais disponibilizados no Prisma Study.'),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment(-1, -0.75),
                    child: Text(
                      '4º Encontro',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    '     Por fim, na segunda etapa do Módulo II é proposto a aplicação de um formulário que intenciona a avaliação por partes dos alunos acerca de sua aprendizagem, da metodologia proposta por esta pesquisa e, por fim, da avaliação da plataforma Prisma Study.'),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    '     O formulário possui itens objetivos, subjetivos e de escala. É a partir dessa ferramenta que será elaborada a análise crítica da efetividade da metodologia da pesquisa, assim como do objeto de aprendizagem desenvolvido. Além disso, será possível constatar se a aprendizagem dos alunos ocorreu satisfatoriamente ou não, no momento em que forem confrontados os resultados da autoavaliação com os resultados do pré-teste e pós-teste.'),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
