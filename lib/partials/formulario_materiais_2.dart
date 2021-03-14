import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FormularioMateriais2 extends StatefulWidget {

  @override
  _FormularioMateriais2 createState() => _FormularioMateriais2();
}

class _FormularioMateriais2 extends State<FormularioMateriais2> {
  final _formkey = GlobalKey<FormState>();
  // final Url url = Url();
  dynamic _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Só remova o termo "https://" do formulário caso o seu link já o contenha.',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3, style: TextStyle(fontSize: 14,color: Colors.white)
                ),
              ),
            ),
            Container (
            color: Colors.white,

            margin: EdgeInsets.all(20),
            child: Form(
              key: _formkey,
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(16),
                children: [
                  TextFormField(
                    initialValue: 'https://',
                    enabled: !_loading,
                    validator: (link) {
                      if (link.isEmpty) {
                        return 'Insira um link válido';
                      }
                      return null;
                    },
                    // onSaved: (link) => url.url1 = link,
                    onSaved: (link) {
                      setState(() {
                        Firestore.instance
                            .collection('materiaislinks')
                            .document('l4ZqIwJPH9FNdiux84ya')
                            .updateData({'url2': link});
                      });
                    },

                    decoration: InputDecoration(hintText: 'Insira o link'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 44,
                    child: RaisedButton(
                      color: Colors.teal[600],
                      disabledColor: Colors.teal[100],
                      child: _loading ?
                      CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      )
                          : Text(
                        'Enviar',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      onPressed: _loading ? null :  ()  {
                        if (_formkey.currentState.validate()) {
                          _formkey.currentState.save();
                          _loading = true;
                          Future.delayed(Duration(seconds: 3),(){
                            setState(() {
                              _loading = false;
                            });
                          });
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),]
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal[700],
        onPressed: (){
          Navigator.of(context).pushNamed('/');
        },
        child: Icon(Icons.home),
      ),
    );
  }
}
