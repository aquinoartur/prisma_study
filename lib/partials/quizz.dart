
import 'package:flutter/material.dart';
import 'package:flutter1/models/equipe_manager.dart';
import 'package:flutter1/models/url_manager.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

abrirUrl(txt) async {
  String url = txt;

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class QuizPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenheight = (size.height - MediaQuery.of(context).padding.top);

    return Scaffold(
        body: Consumer <UrlManager>(
            builder: (_, urlManager, __){
              return ListView.builder(
                itemCount: urlManager.allUrls.length,
                itemBuilder: (_, index){
                  return Column(
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              //padding: EdgeInsets.only( top: 10),
                                height: screenheight,
                                decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/background.png'), fit: BoxFit.cover)),
                                child: Consumer<EquipeManager>(
                                  builder: (_, equipeManager, __){
                                    return Column(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                              padding: EdgeInsets.only(top: 30, bottom: 45),
                                              child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Game Prisma',
                                                      style: TextStyle(
                                                        fontFamily: 'Archivo',
                                                        fontSize: 40,
                                                        color: Colors.white,
                                                      ),
                                                    )
                                                  ])),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Aprendiz',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold),
                                              )
                                            ],
                                          ),
                                          ClipOval(
                                              child: Container(
                                                padding: EdgeInsets.all(0),
                                                margin: EdgeInsets.only(top: 5),
                                                width: 125,
                                                height: 125,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage('assets/bottom1.png')),
                                                    borderRadius: BorderRadius.circular(300)),
                                                child: FlatButton(
                                                    padding: EdgeInsets.all(0),
                                                    onPressed: () {
                                                      abrirUrl(urlManager.allUrls[index].url1);
                                                    },
                                                    child: null),
                                              )),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              ClipOval(
                                                  child: Container(
                                                    margin: EdgeInsets.only(bottom: 5),
                                                    padding: EdgeInsets.all(0),
                                                    width: 125,
                                                    height: 125,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage('assets/bottom2.png')),
                                                        borderRadius: BorderRadius.circular(300)),
                                                    child: FlatButton(
                                                        padding: EdgeInsets.all(0),
                                                        onPressed: () {
                                                          abrirUrl(urlManager.allUrls[index].url2);
                                                        },
                                                        child: null),
                                                  )),
                                              ClipOval(
                                                  child: Container(
                                                    margin: EdgeInsets.only(bottom: 5),
                                                    padding: EdgeInsets.all(0),
                                                    width: 125,
                                                    height: 125,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage('assets/bottom3.png')),
                                                        borderRadius: BorderRadius.circular(300)),
                                                    child: FlatButton(
                                                        padding: EdgeInsets.all(0),
                                                        onPressed: () {
                                                          abrirUrl(urlManager.allUrls[index].url3);
                                                        },
                                                        child: null),
                                                  ))
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text('    Mestre',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold)),
                                              Text('     Grão-Mestre',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold))
                                            ],
                                          ),
                                        ]);
                                  }
                                )

                            )
                          ],
                        ),
                      )
                    ],
                  );
                }

              );
            }
          ),

    );
  }
}

/*

Column(
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  //padding: EdgeInsets.only( top: 10),
                                    height: screenheight,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/background.jpg'),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                              padding: EdgeInsets.only(top: 30, bottom: 45),
                                              child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Game Prisma',
                                                      style: TextStyle(
                                                        fontFamily: 'Archivo',
                                                        fontSize: 40,
                                                        color: Colors.white,
                                                      ),
                                                    )
                                                  ])),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                urlManager.allUrls[0].url1,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold),
                                              )
                                            ],
                                          ),
                                          ClipOval(
                                              child: Container(
                                                padding: EdgeInsets.all(0),
                                                margin: EdgeInsets.only(top: 5),
                                                width: 125,
                                                height: 125,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage('assets/bottom1.png')),
                                                    borderRadius: BorderRadius.circular(300)),
                                                child: FlatButton(
                                                    padding: EdgeInsets.all(0),
                                                    onPressed: () {
                                                      abrirUrl1();
                                                    },
                                                    child: null),
                                              )),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              ClipOval(
                                                  child: Container(
                                                    margin: EdgeInsets.only(bottom: 5),
                                                    padding: EdgeInsets.all(0),
                                                    width: 125,
                                                    height: 125,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage('assets/bottom2.png')),
                                                        borderRadius: BorderRadius.circular(300)),
                                                    child: FlatButton(
                                                        padding: EdgeInsets.all(0),
                                                        onPressed: () {
                                                          //abrirUrl1(txt);
                                                        },
                                                        child: null),
                                                  )),
                                              ClipOval(
                                                  child: Container(
                                                    margin: EdgeInsets.only(bottom: 5),
                                                    padding: EdgeInsets.all(0),
                                                    width: 125,
                                                    height: 125,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage('assets/bottom3.png')),
                                                        borderRadius: BorderRadius.circular(300)),
                                                    child: FlatButton(
                                                        padding: EdgeInsets.all(0),
                                                        onPressed: () {
                                                          //abrirUrl1(txt);
                                                        },
                                                        child: null),
                                                  ))
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text('    Mestre',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold)),
                                              Text('     Grão-Mestre',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold))
                                            ],
                                          ),
                                        ]))
                              ],
                            ),
                          )
                        ],
                  )
 */