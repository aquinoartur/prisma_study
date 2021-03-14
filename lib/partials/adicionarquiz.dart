import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddQP extends StatelessWidget {
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
                    child: Text('Selecione o nível desejado para adicionar um quiz.',
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
                              Navigator.of(context).pushNamed('/f1');
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
                                       color: Colors.brown,
                                       padding: EdgeInsets.all(0),
                                           child: Align(
                                               alignment: Alignment.center,
                                               child: Text('Aprendiz', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),))),
                                   SizedBox(
                                     height: 20,
                                   ),
                                   Container(
                                     padding: EdgeInsets.only(left: 10, right: 10),
                                     child: Align(
                                       alignment: Alignment.centerLeft,
                                       child: Text('O Aprendiz é o nível mais básico. Uma boa dica é adicionar conteúdos introdutórios.'
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
                          Navigator.of(context).pushNamed('/f2');
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
                                  color: const Color(0xFFC0C0C0),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text('Mestre', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),)),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('O Mestre é o nível intermediário. Uma boa dica é adicionar conteúdos mais complexos e que exigem mais tempo para resolução.'
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
                          Navigator.of(context).pushNamed('/f3');
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
                                  color: const Color(0xFFFFD700),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text('Grão-Mestre', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('O Grão-Mestre é o nível mais avançado. É conveniente que o número de problemas seja menor do que nos níveis anteriores.'
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
