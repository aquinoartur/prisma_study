import 'package:flutter/material.dart';
import 'package:flutter1/partials/adicionarquiz.dart';
import 'package:flutter1/partials/addmateriais.dart';
import 'package:flutter1/partials/addpontuacao.dart';

class ProfessorPage extends StatelessWidget {
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
                  width: double.infinity,
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
                                    right: 30, bottom: 5, top: 30, left: 27),
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
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
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
                              Image.network('https://i.imgur.com/9lfLHZX.jpg'),


                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  right: 10, bottom: 5, top: 30, left: 10),
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
                              padding: EdgeInsets.only(
                                  top: 20, bottom: 30, right: 10, left: 10),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('Adicione um Quiz para os alunos.',
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
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
                                            builder: (context) => new AddQP()));
                                  },
                                  child: Text(
                                    'Adicionar Quiz',
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
                                    'Crie, edite ou veja as informações das equipes.',
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
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
                                                new AddPontuacaoPage()));
                                  },
                                  child: Text(
                                    'Ver Equipes',
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
                              padding: EdgeInsets.only(
                                  left: 10, top: 20, bottom: 30, right: 10),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                    'Adicione materiais de estudo para a turma.',
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
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
                              width: 260,
                              height: 50,
                              child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) =>
                                                new AddMateriaisPage()));
                                  },
                                  child: Text(
                                    'Adicionar Materiais',
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
