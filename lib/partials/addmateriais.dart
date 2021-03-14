import 'package:flutter/material.dart';

class AddMateriaisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0),
        // body: Container(margin: EdgeInsets.all(20), child: Formulario()));
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Selecione o tipo de material que deseja adicionar.',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3, style: TextStyle(fontSize: 18, fontFamily: 'Archivo',color: Colors.white)
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  width: double.infinity,
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed('/fm1');
                        },child: Card(
                        child: Container(
                          padding: EdgeInsets.zero,
                          margin: EdgeInsets.zero,
                          height: 150,
                          width: 300,
                          color: Colors.white,
                          child: ListView(
                            shrinkWrap: true,
                            padding: EdgeInsets.all(0),
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              Container(
                                  width: 300,
                                  height: 50,
                                  color: Colors.teal,
                                  padding: EdgeInsets.all(0),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text('Notas de aula', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),))),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Adicione links de slides, arquivos .pdf, páginas da internet, etc.'
                                      , overflow: TextOverflow.ellipsis,
                                      maxLines: 5,
                                      style: TextStyle(fontSize: 14, color: Colors.black,)
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ),
                      SizedBox(height: 15),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed('/fm2');
                        },
                        child: Card(
                          child: Container(
                            height: 150,
                            width: 300,
                            color: Colors.white,
                            child: ListView(
                              shrinkWrap: true,
                              padding: EdgeInsets.all(0),
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                Container(
                                  width: 300,
                                  height: 50,
                                  color: Colors.teal,
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text('Google Drive', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),)),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Adicione o link do Google Drive para os seus alunos.'
                                        , overflow: TextOverflow.ellipsis,
                                        maxLines: 5,
                                        style: TextStyle(fontSize: 14, color: Colors.black,)
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed('/fm3');
                        },
                        child: Card(
                          child: Container(
                            height: 150,
                            width: 300,
                            color: Colors.white,
                            child: ListView(
                              shrinkWrap: true,
                              padding: EdgeInsets.all(0),
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                Container(
                                  width: 300,
                                  height: 50,
                                  color: Colors.teal,
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text('Google Classroom', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Adicione o link do Google Classroom para os seus alunos.'
                                        , overflow: TextOverflow.ellipsis,
                                        maxLines: 5,
                                        style: TextStyle(fontSize: 14, color: Colors.black,)
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
        ));
  }
}
