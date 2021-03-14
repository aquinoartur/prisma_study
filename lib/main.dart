
import 'package:flutter/material.dart';
import 'package:flutter1/models/equipe.dart';
import 'package:flutter1/partials/formulario1.dart';
import 'package:flutter1/partials/formulario2.dart';
import 'package:flutter1/partials/formulario3.dart';
import 'package:flutter1/partials/formulario_materiais_1.dart';
import 'package:flutter1/partials/formulario_materiais_2.dart';
import 'package:flutter1/partials/formulario_materiais_3.dart';
import 'package:flutter1/screens/login/edit_equipe/edit_equipe_screen.dart';
import 'package:flutter1/screens/login/equipe/equipe_screen.dart';
import 'package:flutter1/screens/login/login_screen.dart';
import 'package:flutter1/screens/login/login_screenAluno.dart';
import 'package:flutter1/screens/login/signup_screen.dart';
import 'package:provider/provider.dart';
import 'models/equipe_manager.dart';
import 'models/url_manager.dart';
import 'models/url_materiais_manager.dart';
import 'models/user_manager.dart';
import 'src/home.dart';
import 'src/professor.dart';
import 'src/aluno.dart';
import 'src/about.dart';
import 'src/sequenciad.dart';
import 'src/oquizziz.dart';
import 'src/ranking.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => UserManager(),
            lazy: false,
          ),

      ChangeNotifierProvider(
        create: (_) => UrlManager(),
        lazy: false,
        ),
          ChangeNotifierProvider(
            create: (_) => UrlMateriaisManager(),
            lazy: false,
          ),
          ChangeNotifierProvider (
            create: (_) => EquipeManager(),
            lazy: false,
          )
        ],
      child: MaterialApp(
      theme: ThemeData(
          // brightness: Brightness.light,
          scaffoldBackgroundColor: Colors.teal[700],
          primaryColor: Colors.teal[700],
          backgroundColor: Colors.teal[700]),

    onGenerateRoute: (settings) {
      switch (settings.name) {
        case '/professor':
          return MaterialPageRoute(
              builder: (_) => ProfessorPage()
          );
        case '/aluno':
          return MaterialPageRoute(
              builder: (_) => AlunoPage()
          );
        case '/equipe':
          return MaterialPageRoute(
              builder: (_) =>
                  EquipeScreen(
                      settings.arguments as Equipe
                  )
          );
        case '/about':
          return MaterialPageRoute(
              builder: (_) => AboutPage()
          );
        case '/sequenciad':
          return MaterialPageRoute(
            builder: (_) => SequenciadPage(),
          );
        case '/oquizziz':
          return MaterialPageRoute(
              builder: (_) => QuizzizPage()
          );
        case '/ppge':
          return MaterialPageRoute(
              builder: (_) => PPGEPage()
          );
        case '/signup':
          return MaterialPageRoute(
              builder: (_) => SignUpScreen()
          );
        case '/loginP':
          return MaterialPageRoute(
              builder: (_) => LoginScreenP()
          );
        case '/loginA':
          return MaterialPageRoute(
              builder: (_) => LoginScreenA()
          );
        case '/f1':
          return MaterialPageRoute(
              builder: (_) => FormularioScreen1()
          );
        case '/f2':
          return MaterialPageRoute(
              builder: (_) => FormularioScreen2()
          );
        case '/f3':
          return MaterialPageRoute(
              builder: (_) => FormularioScreen3()
          );
        case '/fm1':
          return MaterialPageRoute(
              builder: (_) => FormularioMateriais1()
          );
        case '/fm2':
          return MaterialPageRoute(
              builder: (_) => FormularioMateriais2()
          );
        case '/fm3':
          return MaterialPageRoute(
              builder: (_) => FormularioMateriais3()
          );
        case '/edit_equipe':
          return MaterialPageRoute(
              builder: (_) => EditEquipeScreen(
                settings.arguments as Equipe
              )
          );
        case '/':
        default:
          return MaterialPageRoute(
              builder: (_) => HomePage()
          );
      }
    }
    )
    );
  }
}
