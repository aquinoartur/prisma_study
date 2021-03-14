import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/models/equipe_manager.dart';
import 'package:provider/provider.dart';

class PPGEPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //iconTheme: IconThemeData(color: Colors.teal[700]),
          //backgroundColor: Colors.white,
          title: Text('Ranking', style: TextStyle(
            fontFamily: 'Archivo',
            fontSize: 30,
            color: Colors.white,
          )),
          elevation: 0,
          centerTitle: true,
        ),
        body: Consumer <EquipeManager>(
                builder: (_, equipeManager, __){
                  equipeManager.allEquipes.sort((ndata, other) => other.score.compareTo(ndata.score));
          return ListView.builder(
          itemCount: equipeManager.allEquipes.length,
          itemBuilder: (_, index){


            if (index == 0 && equipeManager.allEquipes.length >=3){
              return Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .4,
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 3 + 115,
                    top: 40,
                    child: Column(
                      children: [
                        Text(
                          "3",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_drop_up,
                          color: Colors.brown,
                          size: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            border: Border.all(
                                width: 5,
                                color: Colors.brown
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 5,
                                offset: Offset(0, 0),
                              )
                            ],
                          ),
                          child: ClipOval(
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(equipeManager.allEquipes[2].images.first)
                                  )
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          equipeManager.allEquipes[2].name,
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                          maxLines: 2,
                        ),
                        Text(
                          '${equipeManager.allEquipes[2].score.toString()} pts',
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 3 - 95,
                    top: 40,
                    child: Column(
                      children: [
                        Text(
                          "2",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: const Color(0xFFC0C0C0),
                          size: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            border: Border.all(
                              width: 5,
                              color: const Color(0xFFC0C0C0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 5,
                                offset: Offset(0, 0),
                              )
                            ],
                          ),
                          child: ClipOval(
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(equipeManager.allEquipes[1].images.first)
                                  )
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          equipeManager.allEquipes[1].name,
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                          maxLines: 2,
                        ),
                        Text(
                          '${equipeManager.allEquipes[1].score.toString()} pts',
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 3 + 10,
                    top: 25,
                    child: Column(
                      children: [
                        Text(
                          "1",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Image.network(
                          "https://i.imgur.com/MD1o2k8.png", width: 30, height: 30,),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            border: Border.all(
                              width: 5,
                              color: const Color(0xFFFFD700),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 5,
                                offset: Offset(0, 0),
                              )
                            ],
                          ),
                          child: ClipOval(
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(equipeManager.allEquipes[0].images.first)
                                  )
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          equipeManager.allEquipes[0].name,
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                          maxLines: 2,
                        ),
                        Text(
                          '${equipeManager.allEquipes[0].score.toString()} pts',
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),

                ],
              );
            }
            if (index < 3){
              return Container(

              );
            }
            return Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 25),
              child: Row(
                      children: [
                        ClipOval(
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)

                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('${index+1}', style: TextStyle(color: Colors.teal[700], fontWeight: FontWeight.bold),),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: MediaQuery.of(context).size.width * .7,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)

                          ),
                          padding: EdgeInsets.only(right: 20),
                          child: Row (
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              CircleAvatar(
                                backgroundImage: NetworkImage(equipeManager.allEquipes[index].images.first),

                              ),
                              SizedBox(width: 15,),
                              Expanded(child: Text(equipeManager.allEquipes[index].name, style:  TextStyle(color: Colors.teal[700], fontWeight: FontWeight.bold, fontSize: 14),)),
                              Text('${equipeManager.allEquipes[index].score.toString()} pts', style:  TextStyle(color: Colors.teal[700], fontWeight: FontWeight.bold, fontSize: 14))
                            ],
                          ),
                        ),
                      ],
      ),
            );
    }
    );
    }
    )


    );
  }
}
