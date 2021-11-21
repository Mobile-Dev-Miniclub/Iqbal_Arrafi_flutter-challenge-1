part of 'widgets.dart';

class CardSongPertama extends StatelessWidget {
  final String _judul, _gambar, _penyanyi;

  CardSongPertama(
    this._judul,
    this._gambar,
    this._penyanyi,
  );

  double getJarak(String judul) {
    int length = judul.length;
    double h = 108;
    print(length);
    if (length <= 19)
      return h;
    else if (length <= 37)
      return h - 14;
    else
      return h - 31;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 150,
                height: 150,
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
                width: 150,
                margin: EdgeInsets.fromLTRB(2, 2, 2, 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/logowhite.png", width: 15),
                    SizedBox(
                      height: getJarak(_judul),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        _judul,
                        textAlign: TextAlign.left,
                        style: textWhiteCard2,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            width: 150,
            child: Text(
              _penyanyi,
              style: textWhiteCardPenyanyi2,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
