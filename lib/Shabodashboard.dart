import 'package:flutter/material.dart';
import 'package:money/main.dart';
import 'comments.dart';
import 'settings.dart';
import 'profile.dart';
import 'instrumentalists.dart';

class Shabodashboard extends StatefulWidget{
  const Shabodashboard({super.key});

  @override
  ShabodashboardState createState() => ShabodashboardState();
}
class ShabodashboardState extends State<Shabodashboard>{
  @override
  Widget build(context){
    return const MaterialApp(
      home:Ribbonbar(),
    );
  }
}
class Ribbonbar extends StatelessWidget{
  const Ribbonbar({super.key});

  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      drawer:const NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(width: 10,),
            Text('SHABO',style: TextStyle(color: Colors.white)),
          ],
        ),
        actions:[
          IconButton(
            onPressed: (){
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search_off),
          ),
        ],
        backgroundColor: Colors.deepPurple,
      ),

    
//main app
      body: Center(
        child: Material(
          elevation: 8,
          borderRadius: BorderRadius.circular(28),
          clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          splashColor: Colors.black38,
         onTap: () {
           Navigator.of(context).pop(const Instrumentalists());
         },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:[
            Ink.image(
            image: const AssetImage('assets/images/instrumentals.jpg'),
            height: 250,
            width: 400,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 6),
          const Text(
            'Instrumentalist',
            style: TextStyle(fontSize: 28, color: Colors.black),
          ),
        const SizedBox(height: 6),
        ],
        ),
        ),
        ),
        ),
      );
  }
}


//search page
class CustomSearchDelegate extends SearchDelegate{
  List<String> searchTerms =[
    "Instrumentalist"
  ];
  @override
  List<Widget>? buildActions(BuildContext context){
    return[
      IconButton(onPressed: (){
        query='';
      },
          icon: const Icon(Icons.clear),)
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: (){
      close(context, null);
    },
        icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for(var eventPlanner in searchTerms){
      if(eventPlanner.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(eventPlanner);
      }
    }
    return ListView.builder(itemCount:matchQuery.length,
        itemBuilder: (context,index){
    var ans = matchQuery[index];
    return ListTile(
      title: Text(ans),
    );
    },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var eventPlanner in searchTerms) {
      if (eventPlanner.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(eventPlanner);
      }
    }
    return ListView.builder(itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var ans = matchQuery[index];
        return ListTile(
          title: Text(ans),
        );
      },
    );
  }
}

//shabo menu
class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.teal,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/menu.jpg'))),
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('Profile'),
            onTap: () => {Navigator.of(context).pop(const Profile())},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => {Navigator.of(context).pop(const Setting())},
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Comments'),
            onTap: () => {Navigator.of(context).pop(const Comments())},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {Navigator.of(context).pop(const MyStatefulWidget())},
          ),
        ],
      ),
    );
  }
}