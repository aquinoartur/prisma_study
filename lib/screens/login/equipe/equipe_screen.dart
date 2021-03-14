import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/models/equipe.dart';
import 'package:flutter1/models/user_manager.dart';
import 'package:provider/provider.dart';

class EquipeScreen extends StatelessWidget {

  const EquipeScreen (this.equipe);

  final Equipe equipe;

  String nivel (){

    if ((equipe.score1 + equipe.score2 + equipe.score3) <= 100){
      equipe.nivel = 'Aprendiz';
      return equipe.nivel;
    } else if ((equipe.score1 + equipe.score2 + equipe.score3) > 100 && (equipe.score1 + equipe.score2 + equipe.score3) <= 500){
      equipe.nivel = 'Mestre';
      return equipe.nivel;
    } else if ((equipe.score1 + equipe.score2 + equipe.score3) > 500 ){
      equipe.nivel = 'Grão-Mestre';
      return equipe.nivel;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        title: Text('Perfil da Equipe', style: TextStyle(fontSize: 18)),
        centerTitle: true,
        actions: [
          Consumer<UserManager>(
          builder: (_, userManager, __){
            if (userManager.adminEnabled){
              return IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: (){
                        Navigator.of(context).pushReplacementNamed('/edit_equipe', arguments: equipe);
                  });
            } else {
              return Container ();
            }
          }
          )
        ],
      ),
      body: ListView(

        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Carousel(
              images: equipe.images.map((url) {
                return NetworkImage(url);
              }).toList(),
              dotSize: 4,
              dotBgColor: Colors.transparent,
              dotColor: Colors.teal[700],
              dotSpacing: 15,
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    equipe.name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Archivo',
                        fontSize: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Pontuação Geral:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          (equipe.score1 + equipe.score2 + equipe.score3).toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Archivo',
                          ),
                        ),
                      ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            ':',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            nivel(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Archivo',
                            ),
                          ),
                        ),

                      ]
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Pontuação por nível:',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Aprendiz: ${equipe.score1.toString()}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                            ),
                        ),
                      ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Mestre: ${equipe.score2.toString()}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Grão-Mestre: ${equipe.score3.toString()}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                    ]
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Informações da equipe:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        equipe.description,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Código: ${equipe.codigo}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),

                ],
              ),
          
          )
        ],
      ),
  );
  }
}


