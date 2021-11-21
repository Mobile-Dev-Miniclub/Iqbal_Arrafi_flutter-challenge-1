part of 'widgets.dart';

class CardSongBaru extends StatelessWidget {
  final String _judul;
  final String _gambar;

  CardSongBaru(
    this._judul,
    this._gambar,
  );

  double getJarak(String judul) {
    int length = judul.length;
    double h = 76;
    print(length);
    if (length <= 15)
      return h;
    else if (length <= 30)
      return h - 12;
    else
      return h - 24;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 110,
                height: 110,
                decoration: new BoxDecoration(
                  color: blackColor,
                  image: new DecorationImage(
                    image: NetworkImage(_gambar),
                    fit: BoxFit.cover,
                    colorFilter: new ColorFilter.mode(
                        blackColor.withOpacity(0.7), BlendMode.dstIn),
                  ),
                ),
              ),
              Container(
                width: 110,
                margin: EdgeInsets.fromLTRB(2, 2, 2, 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/logowhite.png", width: 12),
                    SizedBox(
                      height: getJarak(_judul),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        _judul,
                        textAlign: TextAlign.left,
                        style: textWhiteCard,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 7),
          Container(
            width: 110,
            child: Text(
              _judul,
              style: textWhiteCard,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
