import 'package:flutter/material.dart';
import 'package:flutter1/models/url_materiais_manager.dart';
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

class MateriaisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Materiais',style: TextStyle(fontSize: 18)),
        centerTitle: true,
        elevation: 0,
      ),
        body:  Consumer <UrlMateriaisManager>(
          builder: (_, urlMateriaisManager, __){
            return ListView.builder(
              itemCount: urlMateriaisManager.allMateriaisUrls.length,
              itemBuilder: (_, index) {
                return Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 30, right: 30, bottom: 10),
                        child: Card(
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Container(

                                child: Text(
                                  'Notas de aula',
                                  style: TextStyle(
                                      color: Colors.teal[700],
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Divider(color: Colors.teal[700],
                                endIndent: 80,
                                indent: 80,),
                              ClipOval(
                                child: Container(
                                  padding: EdgeInsets.all(0),
                                  margin: EdgeInsets.only(top: 5),
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/materialaula.jpg')),
                                      borderRadius: BorderRadius.circular(400)),
                                  child: FlatButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {
                                        abrirUrl(urlMateriaisManager.allMateriaisUrls[index].url1);
                                      },
                                      child: null),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 30, right: 30, bottom: 10),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 20,),
                              Container(
                                child: Text(
                                  'Google Drive',
                                  style: TextStyle(
                                      color: Colors.teal[700],
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Divider(color: Colors.teal[700],
                                endIndent: 80,
                                indent: 80,),
                              ClipOval(
                                child: Container(
                                  padding: EdgeInsets.all(0),
                                  margin: EdgeInsets.only(top: 5),
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/gdrive.jpg')),
                                      borderRadius: BorderRadius.circular(400)),
                                  child: FlatButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {
                                        abrirUrl(urlMateriaisManager.allMateriaisUrls[index].url2);
                                      },
                                      child: null),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 30, right: 30, bottom: 10),
                        child: Card(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 20,),
                              Container(
                                child: Text(
                                  'Google Classroom',
                                  style: TextStyle(
                                      color: Colors.teal[700],
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Divider(color: Colors.teal[700],
                                endIndent: 80,
                                indent: 80,),
                              ClipOval(
                                child: Container(
                                  padding: EdgeInsets.all(0),
                                  margin: EdgeInsets.only(top: 5),
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/materialcomp.jpg')),
                                      borderRadius: BorderRadius.circular(400)),
                                  child: FlatButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {
                                        abrirUrl(urlMateriaisManager.allMateriaisUrls[index].url3);
                                      },
                                      child: null),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
            );
          }
        ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal[700],
        onPressed: (){
          Navigator.of(context).pushNamed('/home');
        },
        child: Icon(Icons.home),
      ),);
  }
}
