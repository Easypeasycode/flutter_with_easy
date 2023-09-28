import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const EasypeasyEntryWidget());
}

class EasypeasyEntryWidget extends StatelessWidget {
  const EasypeasyEntryWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Easypeasy Applicationz",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EasypeasyHomepage(),
    );
  }
}

class EasypeasyHomepage extends StatefulWidget {
  const EasypeasyHomepage({Key? key});

  @override
  State<EasypeasyHomepage> createState() => _EasypeasyHomepageState();
}

class _EasypeasyHomepageState extends State<EasypeasyHomepage> {
  //declare property indexcount
  int indexCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
  title: const Text("Easypeasy"),
  backgroundColor: Colors.black,
  elevation: 10,
  systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
           UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              radius: 30,
             backgroundImage: NetworkImage("https://scontent-los2-1.xx.fbcdn.net/v/t39.30808-6/358096191_786074840191232_8120482954630985532_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=5614bc&_nc_eui2=AeFMYE0dE__Fkq3jhrkbPvUJlbFiqmKupDOVsWKqYq6kMy7h67nalv7ylGZGfIxuwdnHJAc-z9VTr3YCo6dSa2nb&_nc_ohc=dEhWZPtSD8gAX_6M-P4&_nc_ht=scontent-los2-1.xx&oh=00_AfAJOr73zvBuSCrCnLPNbdy4_x-Mv7udrq99B9tytrlykA&oe=651A00C1"
             ),
             backgroundColor: Colors.white,
             ),
            accountName: Text("EASYPEASY"), 
            accountEmail: Text("easypwrites@gmail.com")
            ),
              ListTile(title: Text("Home")),
              Divider(
                color: Colors.black,
                height: 0,
              ),
              ListTile(title: Text("About us"),
              leading: Icon(Icons.info),
              ),
              Divider(
                color: Colors.black,
                height: 0,
              ),
              ListTile(title: Text("Contact"),
              leading: Icon(Icons.contact_phone),
              ),    
               Divider(
                color: Colors.black,
                height: 0,
              ),
              ListTile(title: Text("Settings"),
              leading: Icon(Icons.settings),
              ), 
               Divider(
                color: Colors.black,
                height: 0,
              ),
              ListTile(title: Text("Logout"),
              leading: Icon(Icons.exit_to_app),
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text("App Version: 1.0.0"),
              )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("I am working");
        },
        child: Icon(Icons.share),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                "Busy",
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.network(
                "https://scontent-los2-1.xx.fbcdn.net/v/t39.30808-6/358096191_786074840191232_8120482954630985532_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=5614bc&_nc_eui2=AeFMYE0dE__Fkq3jhrkbPvUJlbFiqmKupDOVsWKqYq6kMy7h67nalv7ylGZGfIxuwdnHJAc-z9VTr3YCo6dSa2nb&_nc_ohc=dEhWZPtSD8gAX_6M-P4&_nc_ht=scontent-los2-1.xx&oh=00_AfAJOr73zvBuSCrCnLPNbdy4_x-Mv7udrq99B9tytrlykA&oe=651A00C1",
                width: 500,
                height: 450,
              ),
              //input
              const TextField(
                decoration: InputDecoration(
                  labelText: "enter your name",
                  hintText: "enter your name",
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "I am not too busy; I prioritize what truly matters. In the midst of my schedule, I find time for the things and people that bring meaning to my life, for it is in these moments that I discover true fulfillment",
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Button pressed");
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Button pressed")
                      ,
                      backgroundColor: Colors.blue,
                    ),
                  );
                },
                child: Text("I Understand"),
              )
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      persistentFooterButtons: [
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           IconButton(icon: Icon(Icons.home),
        onPressed: (){
          print("Home button pressed");
        },
        ),
        IconButton(icon: Icon(Icons.settings),
        onPressed: (){
          print("Settings button pressed");
          },
        ),
        IconButton(icon: Icon(Icons.contact_phone),
        onPressed: (){
          print("Contact button pressed");
          },
        ),
        ],
       )
      ],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexCount,
        fixedColor: Colors.blue,
        items: const [
        BottomNavigationBarItem(
         icon: Icon(Icons.home),
         label: "Home",
        ),
        BottomNavigationBarItem(
         icon: Icon(Icons.settings),
         label: "Settings",
        ),
        BottomNavigationBarItem(
         icon: Icon(Icons.contact_phone),
         label: "Contact",
        )
      ],
      onTap: (int index){
        print("index: $index");
        //update indexCount state
        setState(() {
        indexCount = index;
        });
      },
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
              color: Colors.black
              ),
              child: Text("Welcome to EasyApp", style: TextStyle(
                color: Colors.white,
                fontSize: 28, 
              ))
              ),
              ListTile(title: Text("Home")),
              Divider(
                color: Colors.black,
                height: 0,
              ),
              ListTile(title: Text("About us"),
              leading: Icon(Icons.info),
              ),
              Divider(
                color: Colors.black,
                height: 0,
              ),
              ListTile(title: Text("Contact"),
              leading: Icon(Icons.contact_phone),
              ),    
               Divider(
                color: Colors.black,
                height: 0,
              ),
              ListTile(title: Text("Settings"),
              leading: Icon(Icons.settings),
              ), 
               Divider(
                color: Colors.black,
                height: 0,
              ),
              ListTile(title: Text("Logout"),
              leading: Icon(Icons.exit_to_app),
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text("App Version: 1.0.0"),
              )
          ],
        )
      ),
    );
  }
}