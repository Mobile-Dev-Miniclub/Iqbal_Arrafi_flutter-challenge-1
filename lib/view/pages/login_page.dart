part of 'pages.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                child: ShaderMask(
                  shaderCallback: (rectangle) {
                    return LinearGradient(
                      colors: [Colors.black, Colors.transparent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ).createShader(Rect.fromLTRB(0, 25, 0, 420));
                  },
                  blendMode: BlendMode.dstATop,
                  child: Image.asset('assets/login.jpeg'),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 240),
                      Image.asset('assets/logowhite.png', width: 50),
                      SizedBox(height: 10),
                      Text("Jutaan lagu.\nGratis di Spotify.",
                          style: textLoginMiddle, textAlign: TextAlign.center),
                      SizedBox(height: 45),
                      ButtonTheme(
                        minWidth: 350,
                        height: 50,
                        child: RaisedButton(
                          color: greenColor,
                          shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          onPressed: () {},
                          child: Container(
                            child: Text('Daftar gratis', style: textBlackLogin),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ButtonTheme(
                        minWidth: 100,
                        height: 50,
                        child: RaisedButton(
                          color: Colors.transparent,
                          shape: new RoundedRectangleBorder(
                            side: BorderSide(color: whiteColor),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          onPressed: () {},
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone_android,
                                color: whiteColor,
                              ),
                              SizedBox(width: 10),
                              Text('Lanjutkan dengan nomor HP',
                                  style: textWhiteLogin),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ButtonTheme(
                        minWidth: 100,
                        height: 50,
                        child: RaisedButton(
                          color: Colors.transparent,
                          shape: new RoundedRectangleBorder(
                            side: BorderSide(color: whiteColor),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          onPressed: () {},
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/google.png',
                                width: 25,
                              ),
                              SizedBox(width: 10),
                              Text('Lanjutkan dengan Google',
                                  style: textWhiteLogin),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ButtonTheme(
                        minWidth: 100,
                        height: 50,
                        child: RaisedButton(
                          color: Colors.transparent,
                          shape: new RoundedRectangleBorder(
                            side: BorderSide(color: whiteColor),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          onPressed: () {},
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/facebook.png',
                                width: 25,
                              ),
                              SizedBox(width: 10),
                              Text('Lanjutkan dengan Facebook',
                                  style: textWhiteLogin),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ButtonTheme(
                        minWidth: 100,
                        height: 50,
                        child: RaisedButton(
                          color: Colors.transparent,
                          shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          onPressed: () {Navigator.pushNamed(context, 'formlogin');},
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Masuk',
                                  style: textWhiteLogin),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
