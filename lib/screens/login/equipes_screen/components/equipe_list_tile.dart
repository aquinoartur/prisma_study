import 'package:flutter/material.dart';
import 'package:flutter1/models/equipe.dart';

class EquipeListTile extends StatelessWidget {

  const EquipeListTile(this.equipe);

  final Equipe equipe;



  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed('/equipe', arguments: equipe);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)
        ),
        child: Container(
          height: 120,
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Image.network(equipe.images.first),
              ),
              const SizedBox(width: 16,),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(equipe.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style:TextStyle(fontSize: 18,fontWeight: FontWeight.w800,),),
                      Padding(
                        padding: const EdgeInsets.only(top:4),
                        child: Text(
                          'Código: ${equipe.codigo}', style: TextStyle(color: Colors.black, fontSize: 15),
                        ),

                      ),

                    ],
                  )
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Pontos:', style: TextStyle(color: Colors.teal[700], fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      (equipe.score1 + equipe.score2 + equipe.score3).toString(), style: TextStyle(color: Colors.teal[700], fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
