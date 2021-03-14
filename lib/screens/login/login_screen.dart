import 'package:flutter/material.dart';
import 'package:flutter1/helpers/validators.dart';
import 'package:flutter1/models/user.dart';
import 'package:flutter1/models/user_manager.dart';
import 'package:flutter1/src/home.dart';
import 'package:provider/provider.dart';

class LoginScreenP extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        title: const Text('Entrar', style: TextStyle(
            color: Colors.white,
          fontSize: 18
        ),),
        centerTitle: true,
        elevation: 0,
        actions: [
          FlatButton(onPressed: (){
            Navigator.of(context).pushReplacementNamed(('/signup'));
          },
              child: Text('Criar conta', style: TextStyle(fontSize: 15, color: Colors.white)))
        ],

      ),
      body: Container(
        color: Colors.teal[700],
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Card(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Form(
                    key: formKey,
                    child: Consumer<UserManager>(
                        builder: (_, userManager, child){
                          return ListView(
                            shrinkWrap: true,
                            padding: EdgeInsets.all(16),
                            children: [
                              TextFormField(
                                controller: emailController,
                                enabled: !userManager.loading,
                                decoration: InputDecoration(hintText: 'E-mail'),
                                keyboardType: TextInputType.emailAddress,
                                autocorrect: false,
                                validator: (email){
                                  if(!emailValid(email))
                                    return 'E-mail inválido';
                                  return null;
                                },
                              ),
                              const SizedBox(height: 20),
                              TextFormField(
                                controller: passController,
                                enabled: !userManager.loading,
                                decoration: InputDecoration(hintText: 'Senha'),
                                autocorrect: false,
                                obscureText: true,
                                validator: (pass){
                                  if(pass.isEmpty || pass.length < 6)
                                    return 'Senha inválida!';
                                  return null;
                                },
                              ),
                              child,
                              const SizedBox(height: 20,),
                              SizedBox(
                                height: 44,
                                child: RaisedButton(
                                  onPressed: userManager.loading ? null : (){
                                    if(formKey.currentState.validate()){
                                      userManager.signIn(
                                          user: User(
                                              email: emailController.text,
                                              password: passController.text
                                          ),
                                          onFail: (e){
                                            scaffoldkey.currentState.showSnackBar(
                                                SnackBar(
                                                  content: Text('Falha ao entrar: $e'),
                                                  backgroundColor: Colors.red,
                                                )
                                            );
                                          },
                                          onSuccess: (){
                                            if (userManager.adminEnabled){
                                              Navigator.push(
                                                  context,
                                                  new MaterialPageRoute(
                                                      builder: (context) =>
                                                      new HomePage()));
                                            } else {
                                              Navigator.push(
                                                  context,
                                                  new MaterialPageRoute(
                                                      builder: (context) =>
                                                      new HomePage()));
                                            }
                                          }
                                      );
                                    }
                                  },
                                  color: Theme.of(context).primaryColor,
                                  disabledColor: Theme.of(context).primaryColor
                                      .withAlpha(100),
                                  textColor: Colors.white,
                                  child: userManager.loading ?
                                  CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation(Colors.white),
                                  ) :
                                  const Text(
                                    'Entrar',
                                    style: TextStyle(
                                        fontSize: 18
                                    ),),),
                              ),
                            ],
                          );
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Consumer<UserManager>(
                            builder: (_, userManager, __) {
                              return FlatButton(
                                onPressed: () {
                                  if (emailController.text.isEmpty) {
                                    scaffoldkey.currentState.showSnackBar(SnackBar(
                                      content: const Text(
                                          'Insira seu e-mail para recuperação e clique novamente!'
                                      ),
                                      backgroundColor: Colors.redAccent,
                                      duration: Duration(seconds: 4),
                                    ));
                                  } else {
                                    userManager.recoverPass(emailController.text);
                                    scaffoldkey.currentState.showSnackBar(SnackBar(
                                      content: const Text(
                                        'Confira seu e-mail.', style: TextStyle(color: Colors.black),
                                      ),
                                      backgroundColor: Colors.white,
                                      duration: Duration(seconds: 4),
                                    ));
                                  }
                                },
                                padding: EdgeInsets.zero,
                                child: const Text(
                                  'Esqueci minha senha',
                                ),
                              );
                            },
                          ),
                        )
                    ),
                  ),
                ),
              ]
          ),
      ),
      );
  }
}
