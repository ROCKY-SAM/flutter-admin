import 'package:admin_panel_two/styling/colors.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  String selectedLan = 'en';
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.helloWorld),
        centerTitle: false,
        elevation: 4,
        actions: [
          const Text('anonymous'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: PopupMenuButton<void>(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: ListTile(
                    leading:Icon(Theme.of(context).brightness  == Brightness.dark ? Icons.light_mode : Icons.dark_mode),
                    title: Text(Theme.of(context).brightness  == Brightness.dark ? AppLocalizations.of(context)!.lightMode : AppLocalizations.of(context)!.darkMode),
                  ),
                  onTap: () {
                    MyApp.of(context).changeTheme((Theme.of(context).brightness  == Brightness.dark) ? ThemeMode.light :ThemeMode.dark);
                  },
                ),
              ],
              child: const Icon(Icons.account_circle_outlined),
            ),
          ),          
          Padding(
            
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: PopupMenuButton<String>(
              child: Text(selectedLan),
              onSelected: (String locale) {
                MyApp.of(context).changeLanguage(locale);
                selectedLan = locale;
              },
              itemBuilder: (context) => [
                const PopupMenuItem<String>(
                  value: 'en',
                  child: Text('English'),
                ),                
                const PopupMenuItem<String>(
                  value: 'es',
                  child: Text('Spanish'),
                )
              ]              
            ),
          ),
        ],
      ),
      drawer: Drawer(
       child: Container(
          color: Theme.of(context).scaffoldBackgroundColor, 
          child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.account_box),
              title: const Text("About"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.grid_3x3_outlined),
              title: const Text("Products"),
              onTap: () {},
            ),
            Divider(
              color: (Theme.of(context).brightness  == Brightness.dark ? AppColors.light:AppColors.dark),
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text("Contact"),
              onTap: () {},
            )
          ],
        ),
      ),
       ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
