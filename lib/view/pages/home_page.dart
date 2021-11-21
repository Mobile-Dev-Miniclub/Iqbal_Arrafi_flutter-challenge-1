part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: greenColor,
      body: Stack(
        children: [
          BackgroundGradient(),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 50, left: 17, right: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Good Evening", style: textWhiteHome),
                      Row(
                        children: [
                          Image.asset("assets/icon_bell.png", width: 20),
                          SizedBox(width: 25),
                          Image.asset("assets/icon_recent.png", width: 20),
                          SizedBox(width: 25),
                          Image.asset("assets/icon_setting.png", width: 20),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 25),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CardSongBaru(
                          SongList.baruSong[index].judul,
                          SongList.baruSong[index].image),
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.transparent,
                        indent: 10,
                      ),
                      itemCount: SongList.baruSong.length,
                    ),
                  ),
                  SizedBox(height: 25),
                  Text("Untuk membantu kamu mulai mendengarkan",
                      style: textWhiteHome),
                  SizedBox(height: 15),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CardSongPertama(
                        SongList.songPertama[index].judul,
                        SongList.songPertama[index].image,
                        SongList.songPertama[index].penyanyi,
                      ),
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.transparent,
                        indent: 10,
                      ),
                      itemCount: SongList.baruSong.length,
                    ),
                  ),
                  SizedBox(height: 25),
                  Text("Mix teratasmu",
                      style: textWhiteHome),
                  SizedBox(height: 15),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CardSongPertama(
                        SongList.songKedua[index].judul,
                        SongList.songKedua[index].image,
                        SongList.songKedua[index].penyanyi,
                      ),
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.transparent,
                        indent: 10,
                      ),
                      itemCount: SongList.baruSong.length,
                    ),
                  ),
                  SizedBox(height: 75),
                ],
              ),
            ),
          ),
        ],
      ),
      
    );
  }
}
