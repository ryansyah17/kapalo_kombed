part of 'pages.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  TextEditingController nomorHandphone = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.blueGrey.shade800,
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Selamat Datang \nKembali,',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Login ke Akun Anda untuk lanjut',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          'Email',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: TextField(
                      controller: nomorHandphone,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      style: blackFontStyle2,
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                        hintText: 'email',
                        hintStyle: TextStyle(
                            color: Colors.grey.shade300, fontSize: 13),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: defaultMargin * 2),
                        child: Text(
                          'Password',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: TextField(
                      controller: password,
                      style: blackFontStyle2,
                      obscureText: _obscureText,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: greyFontStyle1,
                        suffixIcon: new GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: new Icon(_obscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      minimumSize: Size(double.infinity, 50),
                    ),
                    icon: FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.red,
                    ),
                    label: Text('Sign In with google'),
                    onPressed: () {
                      final provider = Provider.of<GoogleSignInProvider>(
                          context,
                          listen: false);
                      provider.googleLogin();
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      minimumSize: Size(double.infinity, 50),
                    ),
                    icon: FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue.shade900,
                    ),
                    label: Text('Sign In with Facebook'),
                    onPressed: () {
                      // final provider = Provider.of<GoogleSignInProvider>(
                      //     context,
                      //     listen: false);
                      // provider.googleLogin();
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  RichText(
                    text: TextSpan(text: 'Belum punya akun? ', children: [
                      TextSpan(
                          text: 'Daftar Sekarang',
                          style:
                              TextStyle(decoration: TextDecoration.underline))
                    ]),
                  ),
                  Spacer()
                ],
              ),
            ),
          ],
        ),
      );
}
