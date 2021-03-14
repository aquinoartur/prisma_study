import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sobre a plataforma',style: TextStyle(fontSize: 18)),
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                    'A plataforma Prisma Study foi desenvolvida com o propósito de auxiliar o Ensino de Física, em especial, o ensino de Óptica Geométrica. Nela estão hospedados diversos materiais e ferramentas para professores e alunos. '
                    , style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ), SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                    'Uma dessas ferramentas é a Gamificação de conceitos como reflexão, refração e espelhos planos. A Gamificação desses conteúdos é feita através de outra plataforma, o Quizziz. Os estudantes podem acessar 3 quizes de níveis básico, intermediário e avançado, respectivamente.'
                  , style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ), SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                    'A Plataforma é um produto final da pesquisa de mestrado do Mndo. Adelmo Artur de Aquino, oriundo do Programa de Pós-Graduação em Ensino (PPGE) da Universidade do Estado do Rio Grande do Norte (UERN).'
                  , style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ));
  }
}
