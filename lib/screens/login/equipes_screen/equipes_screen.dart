import 'package:flutter/material.dart';
import 'package:flutter1/models/equipe_manager.dart';
import 'package:flutter1/models/user_manager.dart';
import 'package:flutter1/screens/login/equipes_screen/components/equipe_list_tile.dart';
import 'package:provider/provider.dart';
import 'components/search_dialog.dart';

class EquipesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar (
          title: Consumer<EquipeManager>(
            builder: (_, equipeManager, __){

              if (equipeManager.search.isEmpty){
                return const Text('Lista de Equipes' ,style: TextStyle(fontSize: 18));
              } else {
                return LayoutBuilder(
                    builder: (_, constrains){

                      return GestureDetector(
                          child: Container(
                              width: constrains.biggest.width,
                              child: Text (equipeManager.search,
                              textAlign: TextAlign.center,)),
                          onTap: () async {
                            final search = await  showDialog<String>(context: context,
                                builder: (_) => SearchDialog(equipeManager.search));

                            if (search != null){
                              equipeManager.search = search;
                            }
                          }
                      );
                    }) ;
              }
            },
          ),
          centerTitle: true,
          elevation: 0,

          actions: [
            Consumer<UserManager>(
                builder: (_, userManager, __){
                  if (userManager.adminEnabled){
                    return IconButton(
                        icon: Icon(Icons.add),
                        onPressed: (){
                          Navigator.of(context).pushNamed('/edit_equipe');
                        });
                  } else {
                    return Container ();
                  }
                }
            ),
            Consumer <EquipeManager>(
              builder: (_, equipeManager, __){
                if (equipeManager.search.isEmpty){
                 return  IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () async {
                        final search = await  showDialog<String>(context: context,
                            builder: (_) => SearchDialog(equipeManager.search));

                        if (search != null){
                          equipeManager.search = search;
                        }
                      });
                } else {
                 return  IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () async {
                        equipeManager.search = '';

                      });
                }
              }
            )
          ],
        ),
      
      body: Consumer <EquipeManager>(
        builder: (_, equipeManager, __){
          final filteredEquipes = equipeManager.filteredEquipes;
          return ListView.builder(
            padding: const EdgeInsets.all(4),
            itemCount: filteredEquipes.length,
              itemBuilder: (_, index){
              return EquipeListTile(filteredEquipes[index]);
              }

          );
        }
      ),
    );
  }
}
