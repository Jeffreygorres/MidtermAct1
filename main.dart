import 'package:flutter/material.dart';

/*the purpose of this syntax is to import the flutter material design library
widgets and tools for building a material design UI(google design system)


import - is a dart keyword to include external libraries

package:flutter/material.dart - refers to the material design package include
w/ flutter, containing widgets.

This is essential for building Flutter Apps w/ a standard UI


*/

void main(){
  runApp(const MyApp());
}


/*
The entry point of the flutter app

void main() - main function, the starting point of any Dart program

runApp() - is a flutter function that initialize the app and attache the root widget (MyApp) to the screen

const MyApp() - create an instance of the MyApp class, marked as a constant

*/

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override //indicate this method override the "build" method from StatelessWidget
Widget build(BuildContext context) {
    return MaterialApp(

    title: 'Hello Flutter',
    theme: ThemeData(
          primarySwatch: Colors.blue,
),
    home: const MyHomePage(),

    );

}
}


class MyHomePage extends StatelessWidget{
const MyHomePage({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
    title: const Text('My Favorite Movie',
    style:TextStyle(fontSize:  40),
    )
  ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://tse4.mm.bing.net/th/id/OIF.b0Bh5nLOXQO5e5fMAEoLMA?r=0&cb=thfvnext&rs=1&pid=ImgDetMain&o=7&rm=3',
            width: 500,
            height: 500,
          ),
          const SizedBox(height: 20),
          const Text (
            'Twelves',
            style:TextStyle(fontSize: 40),
          ),

          const Text (
            'Twelve children, each with a unique gift,'
                ' united to defeat a great darkness threatening'
                ' their kingdom. Through their teamwork,'
                ' they became known as The Twelve, remembered as'
                ' heroes who chose unity over fear. ',
            style:TextStyle(fontSize: 19),
          ),



        ],
      ),
    ),
  );


  }
}

/*
define as a root widget or main container

class MyApp - declares a custom class taht extends StatelessWidgets

StatelessWidget - flutter base class for widget that don't change state (static UI)

const MyApp({super.key}) - constructor. w/ super.key passing an optional "key"

parameter to the parent StatelessWidget

Keys are used to identify the widgets uniquely.

const - ensure that the constructor creayes a immutable instance.


-------------------------------------------------

Widget build(BuildContext context) - provide contextual information about widgets
position in the widget tree

MaterialApp - flutter widget that sets up apps core structure, include
navigation, theme, home screen.

title: 'Hello Flutter', - sets the app title, visible on the device task switcher

 theme: ThemeData( primarySwatch: Colors.blue), - defines the apps visual theme
 w/ color blue as the primary color.

 home: const MyHomePage(), - sets the home screen to an instance of the homepage widget.


*/

