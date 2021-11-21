part of 'pages.dart';

class FormLogin extends StatefulWidget {
  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _obscureText = true;
  Color buttonColor = Colors.grey;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  void initState() {
    super.initState();
    emailController.addListener(changeColor);
    passwordController.addListener(changeColor);
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void changeColor() {
    setState(() {
      if (emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty) {
        buttonColor = whiteColor;
      }else{
        buttonColor = Colors.grey;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: SingleChildScrollView(
        child: Form(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text("Email atau nama pengguna", style: textWhiteForm),
                TextFormField(
                  controller: emailController,
                  style: textWhiteLogin,
                  cursorColor: whiteColor,
                  autofocus: false,
                  decoration: InputDecoration(
                    filled: true,
                    focusColor: inputFormFocus,
                    fillColor: inputForm,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: inputForm),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text("Kata Sandi", style: textWhiteForm),
                TextFormField(
                  controller: passwordController,
                  style: textWhiteLogin,
                  cursorColor: whiteColor,
                  obscureText: _obscureText,
                  autofocus: false,
                  decoration: InputDecoration(
                    filled: true,
                    focusColor: inputFormFocus,
                    fillColor: inputForm,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: inputForm),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _toggle();
                      },
                      icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: whiteColor),
                    ),
                  ),
                ),
                SizedBox(height: 45),
                Center(
                  child: ButtonTheme(
                    minWidth: 125,
                    height: 50,
                    child: RaisedButton(
                      child: Text('Masuk', style: textBlackLogin),
                      color: buttonColor,
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {
                        if (emailController.text.isNotEmpty &&
                            passwordController.text.isNotEmpty) {
                          Navigator.pushNamed(context, 'homepage');
                        } else {}
                      },
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Center(
                  child: RaisedButton(
                    child: Text('Masuk tanpa kata sandi',
                        style: textWhiteForgetPassword),
                    color: Colors.transparent,
                    shape: new RoundedRectangleBorder(
                        side: BorderSide(color: borderForgotPassword),
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
