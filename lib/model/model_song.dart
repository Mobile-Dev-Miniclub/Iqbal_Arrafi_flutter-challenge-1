part of 'model.dart';

class SongList{
  final String judul, image, penyanyi;

  SongList({required this.judul, required this.image,required this.penyanyi}); 

  static List<SongList> baruSong = [
    SongList(judul: "Ensemble for Polaris", image: "https://cdn.aniplaylist.com/thumbnails/puonFrMBUf5EiZMip2qNwv4Kbx11DsneODbDxyoz.jpg", penyanyi: "Estella (Vo. Licca) & Elizabeth (Vo. Noa)"),
    SongList(judul: "Vivy Flourite Eye's Song Playlist", image: "https://cdn.aniplaylist.com/thumbnails/90gazm9Dzt0UpRs3okeZ0PfeF4RxAds0DHXIzaoM.jpg", penyanyi: "(Vo. 八木海莉/ Vivy)"),
    SongList(judul: "Minami Playlist", image: "https://i.scdn.co/image/ab67616d0000b273b3ffb220701ddeb35f7dfff2", penyanyi: "美波/Minami"),
    SongList(judul: "Takt op", image: "https://i.scdn.co/image/ab67616d0000b27347d5511b9fbb3b27c883de34", penyanyi: "ryo (supercell) feat. Mafumafu & gaku")
  ];

  static List<SongList> songPertama = [
    SongList(judul: "Jujutsu Kaisen (Original Motion Picture Soundtrack)", image: "https://i.scdn.co/image/ab67616d0000b273b47d8a9e844189f69d5e58a7", penyanyi: "Hiroaki Tsutsumi, Yoshimasa Terui & Alisa Okehazama"),
    SongList(judul: "Horimiya (ホリミヤ) Anime Soundtrack | Opening, Ending, similar | Iro Kousui - You Kamiyama", image: "https://i.scdn.co/image/ab67706c0000bebbf5eecff7a30e498b48ce6500", penyanyi: "Horimiya (ホリミヤ) - Hori-san to Miyamura-kun Soundtrack - \"Iro Kousui (色香水)\" by You Kamiyama, \"Yakusoku (約束)\" by Friends (フレンズ)  and similar romance anime songs!"),
    SongList(judul: "TV Anime \"K-On!\" Original Soundtrack", image: "https://i.scdn.co/image/ab67616d0000b273cbeeb2fe6bb796bc1bff133d", penyanyi: "Hajime Hyakkoku"),
    SongList(judul: "Darling in the FranXX: Anime OST, Openings & Endings", image: "https://i.scdn.co/image/ab67706c0000bebbfb99b738ff1c473a58aaa9cc", penyanyi: "Soundtracks and songs from the anime series Darling in the FranXX (ダーリン・イン・ザ・フランキス) - Openings, endings, instrumentals, insert songs, etc. <3")
  ];

  static List<SongList> songKedua = [
    SongList(judul: "月下儚美", image: "https://anime.idolypride.jp/wp-content/uploads/2021/02/song_release-moon-001-210215.png", penyanyi: "月のテンペスト"),
    SongList(judul: "Mushoku Tensei: Jobless Reincarnation 無職転生 | Mezame no Uta / Yuiko Oohara | Opening & Ending", image: "https://i.scdn.co/image/ab67706c0000bebbb3a3267dc6794d71fe31b8f8", penyanyi: "OP Theme \"Tabibito no Uta (旅人の唄)\", 2nd OP Theme \"Mezame no Uta (目覚めの唄) & ED Theme \"Only (オンリー)\" by Yuiko Oohara of Mushoku Tensei: Isekai Ittara Honki Dasu (無職転生 ～異世界行ったら本気だす～) are now available on Spotify!"),
    SongList(judul: "TV Anime \"K-On!\" Original Soundtrack", image: "https://i.scdn.co/image/ab67616d0000b273cbeeb2fe6bb796bc1bff133d", penyanyi: "Hajime Hyakkoku"),
    SongList(judul: "The Sun, Moon and Stars", image: "https://cdn.aniplaylist.com/thumbnails/1ec8e4adb274d6d9ba7147978f130a3d26330b02.jpeg", penyanyi: "星見プロダクション")
  ];
}