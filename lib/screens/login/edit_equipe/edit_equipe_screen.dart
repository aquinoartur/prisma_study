import 'package:flutter/material.dart';
import 'package:flutter1/models/equipe.dart';
import 'package:flutter1/models/equipe_manager.dart';
import 'package:provider/provider.dart';

import 'components/images_form.dart';

class EditEquipeScreen extends StatelessWidget {
   EditEquipeScreen(Equipe e) :
         editing = e != null,
         equipe = e != null ? e : Equipe();

  final Equipe equipe;
  final bool editing;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
    return ChangeNotifierProvider.value(
      value: equipe,
      child: Scaffold(
        appBar: AppBar(
          title: Text( editing ? 'Editar Equipe' : 'Criar Equipe', style: TextStyle(fontSize: 18),),
          centerTitle: true,
          elevation: 0,
          actions: <Widget>[
            if(editing)
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: (){
                  context.read<EquipeManager>().delete(equipe);
                  Navigator.of(context).pop();
                },
              )
          ],
        ),
        body: Form (
          key: formKey,
          child: ListView(
            children: <Widget>[
              ImagesForm(equipe),
              Padding(padding: const EdgeInsets.all(16),
                child: Theme(
                  data: new ThemeData(
                    primaryColor: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 280,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            initialValue: equipe.name,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                hintText: 'Título',
                            ),
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Archivo',
                              fontSize: 25,
                            ),
                            validator: (name){
                              if (name.length < 3 || name.length > 15)
                                return 'O título deve ter de 3 até 15 caracteres.';
                              return null;
                            },
                            onSaved: (name) => equipe.name = name,
                          ),
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
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: 150,
                                child: Text(
                                  equipe.score.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Archivo',
                                  ),
                                ),
                              ),
                            ),


                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: 150,
                                child: Text(
                                  nivel(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Archivo',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
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
                        padding: EdgeInsets.only(top: 10, left: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: 100,
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  initialValue:  equipe.score1.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    hintText: 'Aprendiz',
                                  ),
                                  keyboardType: const TextInputType.numberWithOptions(decimal: false),
                                  validator: (score1){
                                    if (int.tryParse(score1) == null && score1.isEmpty)
                                      return 'Inválido';
                                    return null;

                                  },
                                  onSaved: (score1) {
                                    equipe.score1 = int.tryParse(score1);
                                  },
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: 100,
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  initialValue:  equipe.score2.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    hintText: 'Mestre',
                                  ),
                                  keyboardType: const TextInputType.numberWithOptions(decimal: false),
                                  validator: (aprendiz){
                                    if (int.tryParse(aprendiz) == null && aprendiz.isEmpty)
                                      return 'Inválido';
                                    return null;

                                  },
                                  onSaved: (score2) {
                                    equipe.score2 = int.tryParse(score2);

                                  },
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: 100,
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  initialValue:  equipe.score3.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    hintText: 'Grão-Mestre',
                                  ),
                                  keyboardType: const TextInputType.numberWithOptions(decimal: false),
                                  validator: (aprendiz){
                                    if (int.tryParse(aprendiz) == null && aprendiz.isEmpty)
                                      return 'Inválido';
                                    return null;

                                  },
                                  onSaved: (score3) {
                                    equipe.score3 = int.tryParse(score3);

                                  },
                                ),
                              ),
                            ),

                          ],
                        ),
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
                      TextFormField(
                        textAlign: TextAlign.center,
                        initialValue:  equipe.description,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                          hintText: 'Descrição',
                        ),
                        onSaved: (descricao) => equipe.description = descricao,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Código:',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 100,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            initialValue:  equipe.codigo,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                              hintText: 'Código',
                            ),
                            onSaved: (cod) => equipe.codigo = cod,
                          ),
                        ),
                      ),
                    SizedBox(
                      height: 20,
                    ),
                    Consumer<Equipe>(
                        builder: (_, equipe, __){
                          return SizedBox(
                            height: 40,
                            child: RaisedButton(
                              onPressed: !equipe.loading ? () async {
                                if(formKey.currentState.validate()){
                                  formKey.currentState.save();
                                   await equipe.save();
                                  await equipe.save2();

                                   context.read<EquipeManager>().update(equipe);
                                   Navigator.of(context).pop();
                                }
                              }: null,
                              child: equipe.loading
                                ? CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation(Colors.teal[700]),
                              ) :
                              Text('Salvar'),

                            ),
                          );
                        }

                    )
                  ],
              ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
