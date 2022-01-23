import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffF90716),
        title: Text(
          'Circle Avater',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white54,
                child: CircleAvatar(
                  backgroundColor: Color(0xffC8C8C8),

                  radius: 60,
                  backgroundImage: AssetImage('images/pic2.png'),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60.0, top: 0),
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Positioned(
                          bottom: -5,
                          top: 50,
                          right: -5,
                          child: CircleAvatar(
                            radius: 19,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 18,
                              child: Icon(
                                Icons.camera_alt_rounded,
                                color: Colors.black,
                                size: 23,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Card(
                  child: ListTile(
                    title: Center(
                      child: Text(
                        'Hi Sir David',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            letterSpacing: 1),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                          child: Text(
                        'Wildlife Advocate',
                        style: TextStyle(fontSize: 16, letterSpacing: 1),
                      )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ActionChip(
                    backgroundColor: Color(0xffF90716),
                    label: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            letterSpacing: 1),
                      ),
                    ),
                    onPressed: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
