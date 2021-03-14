import 'package:flutter/material.dart';
import 'package:flutter1/partials/quizz.dart';
import 'package:flutter1/partials/materiais.dart';

class AlunoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenheight = (size.height - MediaQuery.of(context).padding.top);

    return Scaffold(
        body: ListView(
      children: [
        Container(
          color: Colors.teal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: size.width,
                  height: screenheight,
                  color: Colors.teal,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          width: size.width,
                          height: screenheight,
                          color: Colors.teal[700],
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network('https://i.imgur.com/ysXNUT4.jpg'),
                              Container(
                                //TELA PRINCIPAL
                                padding: EdgeInsets.only(
                                    right: 30, bottom: 5, top: 30, left: 30),
                                child: Text('Olá,',
                                    style: TextStyle(
                                        fontFamily: 'Archivo',
                                        fontSize: 50,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 30, top: 20),
                                child: Text(
                                    'Selecione uma opção arrastando para o lado.',
                                    style: TextStyle(
                                        fontFamily: 'Archivo',
                                        fontSize: 14,
                                        color: Colors.white)),
                              )
                            ],
                          )),
                      Container(
                        //TELA DE GAMIFICAÇÃO
                        width: size.width,
                        height: screenheight,
                        color: Colors.teal[500],
                        child: Column(
                          children: [
                            Container(
                              width: 300,
                              padding: EdgeInsets.only(top: 50, bottom: 20),
                              child:
                                  //Image(image: AssetImage('assets/gami.jpg')),
                              Image.network('https://i.imgur.com/9lfLHZX.jpg'),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  right: 30, bottom: 5, top: 30, left: 30),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('Gamificação',
                                    style: TextStyle(
                                        fontFamily: 'Archivo',
                                        fontSize: 40,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                              //margin: EdgeInsets.only(
                              //top: 30, bottom: 30, right: 30, left: 30),
                              padding: EdgeInsets.only(
                                  left: 10, top: 20, bottom: 30, right: 10),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('Acesse a página de Quiz para jogar.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Archivo',
                                        fontSize: 14,
                                        color: Colors.white)),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              width: 200,
                              height: 50,
                              child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) =>
                                                new QuizPage()));
                                  },
                                  child: Text(
                                    'Jogar',
                                    style: TextStyle(
                                        color: Colors.teal[600],
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                            )
                          ],
                        ),
                      ),
                      Container(
                        //TELA DE PONTUAÇÃO
                        width: size.width,
                        height: screenheight,
                        color: Colors.teal[300],
                        child: Column(
                          children: [
                            Container(
                              width: 300,
                              padding: EdgeInsets.only(top: 50, bottom: 20),
                              child: 
                           //   Image( image: AssetImage('assets/pontuacao.jpg')),
                              Image.network('https://i.imgur.com/EEzWP3F.jpg')
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  right: 10, bottom: 5, top: 30, left: 10),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('Pontuação',
                                    style: TextStyle(
                                        fontFamily: 'Archivo',
                                        fontSize: 40,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 10, top: 20, bottom: 30, right: 10),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                    'Personalize sua equipe e informe as pontuações.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Archivo',
                                        fontSize: 14,
                                        color: Colors.white)),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              width: 200,
                              height: 50,
                              child: FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('/edit_equipe');
                                  },
                                  child: Text(
                                    'Criar Equipe',
                                    style: TextStyle(
                                        color: Colors.teal[600],
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                            )
                          ],
                        ),
                      ),
                      Container(
                        //TELA DE MATERIAIS
                        width: size.width,
                        height: screenheight,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              width: 300,
                              padding: EdgeInsets.only(top: 50, bottom: 20),
                              child:
                              //Image(image: AssetImage('assets/materiais.jpg')),
                              Image.network('https://i.imgur.com/6ouekOQ.jpg'),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  right: 10, bottom: 5, top: 30, left: 10),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('Materiais',
                                    style: TextStyle(
                                        fontFamily: 'Archivo',
                                        fontSize: 40,
                                        color: Colors.teal[600],
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                              //alignment: Alignment.bottomCenter,
                              padding: EdgeInsets.only(
                                  left: 10, top: 20, bottom: 30, right: 10),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                    'Consulte os materiais disponíveis.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Archivo',
                                        fontSize: 14,
                                        color: Colors.teal[600])),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.teal[600],
                                  borderRadius: BorderRadius.circular(20)),
                              width: 200,
                              height: 50,
                              child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) =>
                                                new MateriaisPage()));
                                  },
                                  child: Text(
                                    'Ver Materiais',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          ),
        )
      ],
    ),
      );
  }
}
