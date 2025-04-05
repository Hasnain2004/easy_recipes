import 'package:easy_recipes/Pages/HomePage.dart';
import 'package:easy_recipes/main.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFADF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFEFADF),
        title: const Text('Settings'),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xFF6B4B3E),
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: mediaQuery.size.width * 0.6,
                  height: mediaQuery.size.height * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 9,
                            spreadRadius: 2,
                            offset: Offset(0, 4),
                            color: Colors.black.withOpacity(0.1))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(children: [
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 3, color: const Color(0xFF6B4B3E)),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    color: Colors.black.withOpacity(0.1),
                                  )
                                ],
                                shape: BoxShape.circle,
                                image: const DecorationImage(
                                    image: AssetImage('assets/images/my.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF6B4B3E),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Icon(
                                    Icons.edit,
                                    size: 20,
                                    color: Colors.white,
                                  )))
                        ]),
                        Text(
                          'Hasnain Klaar',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Text('hasnainklaar8@gmail.com')
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: mediaQuery.size.width * 0.9,
                height: mediaQuery.size.height * 0.48,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 9,
                          spreadRadius: 2,
                          offset: Offset(0, 4),
                          color: Colors.black.withOpacity(0.1))
                    ]),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 231, 223, 218),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(Icons.notifications_none)),
                        title: const Text('Notifications'),
                        trailing: Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Switch Toggled'),
                                  content: Text(isSwitched
                                      ? 'Notifications are ON!'
                                      : 'Notifications are OFF!'),
                                  actions: [
                                    TextButton(
                                      child: Text('OK'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          activeColor: const Color(0xFF6B4B3E),
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 185, 176, 173),
                        thickness: 1,
                      ),
                      ListTile(
                        leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 231, 223, 218),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(Icons.privacy_tip_outlined)),
                        title: const Text('Privacy'),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color(0xFF6B4B3E),
                              size: 20,
                            )),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 185, 176, 173),
                        thickness: 1,
                      ),
                      ListTile(
                        leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 231, 223, 218),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(Icons.language)),
                        title: const Text('Language'),
                        subtitle: const Text(
                          'English',
                          style: TextStyle(fontSize: 12),
                        ),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color(0xFF6B4B3E),
                              size: 20,
                            )),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 185, 176, 173),
                        thickness: 1,
                      ),
                      ListTile(
                        leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 231, 223, 218),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(Icons.location_on_outlined)),
                        title: const Text('Delivery Address'),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color(0xFF6B4B3E),
                              size: 20,
                            )),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 185, 176, 173),
                        thickness: 1,
                      ),
                      ListTile(
                        leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 231, 223, 218),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(Icons.payment)),
                        title: const Text('Payment Methods'),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color(0xFF6B4B3E),
                              size: 20,
                            )),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: mediaQuery.size.width * 0.9,
                height: mediaQuery.size.height * 0.19,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 9,
                          spreadRadius: 2,
                          offset: Offset(0, 4),
                          color: Colors.black.withOpacity(0.1))
                    ]),
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 231, 223, 218),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Icon(Icons.help_outline)),
                          title: const Text('Help & Support'),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color(0xFF6B4B3E),
                                size: 20,
                              )),
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 185, 176, 173),
                          thickness: 1,
                        ),
                        ListTile(
                          leading: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 231, 223, 218),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Icon(Icons.info_outline)),
                          title: const Text('About Us'),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color(0xFF6B4B3E),
                                size: 20,
                              )),
                        )
                      ],
                    )),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: mediaQuery.size.width * 0.9,
                  height: mediaQuery.size.height * 0.07,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 9,
                            spreadRadius: 2,
                            offset: Offset(0, 4),
                            color: Colors.black.withOpacity(0.1))
                      ]),
                  child: Center(
                    child: Text(
                      'Logout',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
