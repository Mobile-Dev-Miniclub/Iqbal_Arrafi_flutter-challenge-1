part of 'widgets.dart';

class BackgroundGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [
            0,
            0.1,
            0.3,
          ],
          colors: [
            pinktop,
            pinkmid,
            blackColor,
          ],
        ),
      ),
    );
  }
}
