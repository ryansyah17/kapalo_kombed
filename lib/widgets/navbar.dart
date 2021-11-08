part of 'widgets.dart';

class Navbar extends StatelessWidget {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Drawer(
      elevation: 0,
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://i0.wp.com/psykbunkern.se/wp-content/uploads/2017/09/bf-GREED-2017.00_03_14_40177.Still003.jpg?fit=1200%2C675&ssl=1'),
                    fit: BoxFit.cover),
              ),
              accountName: Text(
                user!.displayName!,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              accountEmail: Text(user.email!),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    user.photoURL!,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  title: Text(
                    'My Profil',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () => print('Set'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.help_outline_rounded,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Help',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () => print('Pol'),
                ),
                ListTile(
                    leading: Icon(
                      Icons.exit_to_app,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: () {
                      final provider = Provider.of<GoogleSignInProvider>(
                          context,
                          listen: false);
                      provider.logout();
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
