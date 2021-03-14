import 'package:flutter/material.dart';
import 'package:flutter1/common/custom_drawer.dart';
import 'package:flutter1/models/user_manager.dart';
import 'package:flutter1/screens/login/login_screen.dart';
import 'package:flutter1/screens/login/login_screenAluno.dart';
import 'package:flutter1/screens/login/signup_screen.dart';
import 'package:flutter1/src/about.dart';
import 'package:flutter1/src/aluno.dart';
import 'package:flutter1/src/professor.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {

  final  scaffoldkey = GlobalKey<ScaffoldState>();

  void onClickSnackBar() {
    final snackbar = SnackBar(content: Text ('Você não é um docente!'));
    scaffoldkey.currentState.showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text('Plataforma Prisma', style: TextStyle(fontSize: 18),),
          centerTitle: true,
          elevation: 0,

        ),
        body: SafeArea(
            child:  Consumer <UserManager>(
                builder: (_, userManager, __){
                  if (userManager.adminEnabled || !userManager.isLoggedIn){
                    return Container(
                      color: Colors.teal[700],
                      child: Stack(
                        children: [
                          Image.network('https://i.imgur.com/0rFl0Il.jpg'),                          //Image(image: AssetImage('assets/sofiall.jpg')),
                          ListView(
                            padding: EdgeInsets.zero,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.teal[700],
                                ),
                                margin: EdgeInsets.only(top: 305),
                                //height: 550,
                                child: Column(
                                  children: [
                                    Container(
                                        padding: EdgeInsets.all(15),
                                        margin: EdgeInsets.only(top: 25),
                                        child: Text(
                                          'Prisma Study',
                                          style: TextStyle(
                                            fontFamily: 'Archivo',
                                            fontSize: 40,
                                            color: Colors.white,
                                          ),
                                        )),
                                    Container(
                                      //BOTAO PROFESSOR
                                        child: Column(children: [
                                          Container(
                                            padding: EdgeInsets.only(bottom: 5),
                                            margin: EdgeInsets.only(top: 20),
                                            child: Text(
                                              userManager.isLoggedIn
                                                  ? 'Acessar conteúdo:'
                                                  : 'Entrar como:',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(20)),
                                            margin: EdgeInsets.only(top: 10),
                                            width: 200,
                                            height: 50,
                                            child: FlatButton(
                                                onPressed: () {

                                                  if (userManager.isLoggedIn && userManager.adminEnabled){
                                                    Navigator.push(
                                                        context,
                                                        new MaterialPageRoute(
                                                            builder: (context) =>
                                                            new ProfessorPage()));
                                                  } else {
                                                    if(userManager.isLoggedIn && !userManager.adminEnabled){
                                                      onClickSnackBar();
                                                    } else {
                                                      Navigator.push(
                                                          context,
                                                          new MaterialPageRoute(
                                                              builder: (context) =>
                                                              new LoginScreenP()));
                                                    }
                                                  }


                                                },
                                                child: Text(
                                                  userManager.isLoggedIn
                                                      ? 'Menu Docente'
                                                      : 'Docente',
                                                  style: TextStyle(
                                                      color: Colors.teal[700],
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold),
                                                )),
                                          )
                                        ])),
                                    Container(
                                      //BOTAO ALUNO
                                        padding: EdgeInsets.all(10),
                                        child: Column(children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 5),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(20)),
                                            width: 200,
                                            height: 50,
                                            child: FlatButton(
                                                onPressed: () {
                                                  if (userManager.isLoggedIn ){
                                                    Navigator.push(
                                                        context,
                                                        new MaterialPageRoute(
                                                            builder: (context) =>
                                                            new AlunoPage()));
                                                  } else {
                                                    Navigator.push(
                                                        context,
                                                        new MaterialPageRoute(
                                                            builder: (context) =>
                                                            new LoginScreenA()));
                                                  }
                                                },
                                                child: Text(
                                                  userManager.isLoggedIn
                                                      ? 'Menu Discente'
                                                      : 'Discente',
                                                  style: TextStyle(
                                                      color: Colors.teal[700],
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold),
                                                )),
                                          )
                                        ])),
                                    Container(
                                      // Cadastrar
                                        margin: EdgeInsets.only(top: 10),
                                        child: Center(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  userManager.isLoggedIn
                                                      ? ''
                                                      : 'Não possui cadastro?',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                GestureDetector(
                                                    child: Text(
                                                      userManager.isLoggedIn
                                                          ? ''
                                                          : '  Cadastre-se aqui.',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                    onTap: () {

                                                      if (userManager.isLoggedIn){

                                                      } else {
                                                        Navigator.push(
                                                            context,
                                                            new MaterialPageRoute(
                                                                builder: (context) =>
                                                                new SignUpScreen()));
                                                      }


                                                    }),
                                              ],
                                            ))),
                                    Container(
                                      // SOBRE A PLATAFORMA
                                        margin: EdgeInsets.only(top: 10),
                                        child: Center(
                                          child: FlatButton(
                                              child: Text('SOBRE A PLATAFORMA',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12)),
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    new MaterialPageRoute(
                                                        builder: (context) =>
                                                        new AboutPage()));
                                              }),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  } else {
                    return Container(
                      color: Colors.teal[700],
                      child: Stack(
                        children: [
                          Image.network('https://i.imgur.com/0rFl0Il.jpg'),
                          //Image(image: AssetImage('assets/sofiall.jpg')),
                          ListView(
                            padding: EdgeInsets.zero,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.teal[700],
                                ),
                                margin: EdgeInsets.only(top: 305),
                                //height: 550,
                                child: Column(
                                  children: [
                                    Container(
                                        padding: EdgeInsets.all(15),
                                        margin: EdgeInsets.only(top: 25),
                                        child: Text(
                                          'Prisma Study',
                                          style: TextStyle(
                                            fontFamily: 'Archivo',
                                            fontSize: 40,
                                            color: Colors.white,
                                          ),
                                        )),
                                    Container(
                                      padding: EdgeInsets.only(bottom: 5),
                                      margin: EdgeInsets.only(top: 20),
                                      child: Text(
                                        userManager.isLoggedIn
                                            ? 'Acessar conteúdo:'
                                            : 'Entrar como:',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),),
                                    Container(
                                      //BOTAO ALUNO
                                        padding: EdgeInsets.all(10),
                                        child: Column(children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 5),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(20)),
                                            width: 200,
                                            height: 50,
                                            child: FlatButton(
                                                onPressed: () {
                                                  if (userManager.isLoggedIn ){
                                                    Navigator.push(
                                                        context,
                                                        new MaterialPageRoute(
                                                            builder: (context) =>
                                                            new AlunoPage()));
                                                  } else {
                                                    Navigator.push(
                                                        context,
                                                        new MaterialPageRoute(
                                                            builder: (context) =>
                                                            new LoginScreenA()));
                                                  }
                                                },
                                                child: Text(
                                                  userManager.isLoggedIn
                                                      ? 'Menu Discente'
                                                      : 'Discente',
                                                  style: TextStyle(
                                                      color: Colors.teal[700],
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold),
                                                )),
                                          )
                                        ])),
                                    Container(
                                      // Cadastrar
                                        margin: EdgeInsets.only(top: 10),
                                        child: Center(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  userManager.isLoggedIn
                                                      ? ''
                                                      : 'Não possui cadastro?',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                GestureDetector(
                                                    child: Text(
                                                      userManager.isLoggedIn
                                                          ? ''
                                                          : '  Cadastre-se aqui.',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                    onTap: () {

                                                      if (userManager.isLoggedIn){

                                                      } else {
                                                        Navigator.push(
                                                            context,
                                                            new MaterialPageRoute(
                                                                builder: (context) =>
                                                                new SignUpScreen()));
                                                      }


                                                    }),
                                              ],
                                            ))),
                                    Container(
                                      // SOBRE A PLATAFORMA
                                        margin: EdgeInsets.only(top: 10),
                                        child: Center(
                                          child: FlatButton(
                                              child: Text('SOBRE A PLATAFORMA',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12)),
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    new MaterialPageRoute(
                                                        builder: (context) =>
                                                        new AboutPage()));
                                              }),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }
                }
            )
        ),
        drawer: CustomDrawer()
    );
  }
}