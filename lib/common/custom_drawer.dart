import 'package:flutter/material.dart';
import 'package:flutter1/models/user_manager.dart';
import 'package:flutter1/src/home.dart';
import 'package:flutter1/src/oquizziz.dart';
import 'package:flutter1/src/ranking.dart';
import 'package:flutter1/src/sequenciad.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer <UserManager>(
      builder: (_, userManager, __){
      return Drawer(

        child: ListView(
          children: [
            DrawerHeader(
                margin: EdgeInsets.all(0),
                //decoration: BoxDecoration(color: Colors.white),
                child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.zero,
                          width: 100,
                          height: 100,
                          child: Image.network('https://i.imgur.com/QmK7hmu.png')
                        ),
                        Text('Prisma Study', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17, color: Colors.teal[700])),

                      ],
                    ),
                  ),
            Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 22),
                        //decoration: new BoxDecoration(color: Colors.white),
                        child: ListTile(
                          title: Text('Olá, ${userManager.user?.name ?? ''}',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2, style: TextStyle(fontSize: 16, color: Colors.teal[700])
                              ),
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) =>
                                    new HomePage()));
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(22),
                        //decoration: new BoxDecoration(color: Colors.white),
                        child: ListTile(
                          leading: Icon(
                            Icons.widgets_outlined,
                            color: Colors.teal[700],
                          ),
                          title: Text('Metodologia',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.teal[700])),
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) =>
                                    new SequenciadPage()));
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(22),
                        //decoration: new BoxDecoration(color: Colors.white),
                        child: ListTile(
                          leading: Icon(Icons.bookmark_border_sharp,
                              color: Colors.teal[700]),
                          title: Text('O Quizziz',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.teal[700])),
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new QuizzizPage()));
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(22),
                        //decoration: new BoxDecoration(color: Colors.white),
                        child: ListTile(
                          leading: Icon(Icons.sports_esports_outlined,
                              color: Colors.teal[700]),
                          title: Text(
                              'Ranking',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.teal[700])),
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new PPGEPage()));
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(22),
                        //decoration: BoxDecoration(color: Colors.white),
                        child: ListTile(
                          leading: Icon(Icons.logout,
                              color: Colors.red),
                          title: Text(
                                userManager.isLoggedIn
                                ? 'Sair'
                                    : 'Entre ou Cadastre-se',
                                style: TextStyle(
                                color: Colors.red,
                                fontSize: 16,
                                ),
                                ),
                          onTap: () {
                            if (userManager.isLoggedIn){
                              userManager.signOut();
                            } else {
                              Navigator.of(context).pushNamed('/');
                            }

                          },
                        ),
                      ),
                    ]))
          ],
        ),
      );}
    );
  }
}
