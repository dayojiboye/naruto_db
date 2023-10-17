import 'package:equatable/equatable.dart';

class Characters extends Equatable {
  Characters({
    required this.characters,
    required this.currentPage,
    required this.pageSize,
    required this.totalCharacters,
  });

  final List<Character> characters;
  final int currentPage;
  final int pageSize;
  final int totalCharacters;

  Characters copyWith({
    List<Character>? characters,
    int? currentPage,
    int? pageSize,
    int? totalCharacters,
  }) {
    return Characters(
      characters: characters ?? this.characters,
      currentPage: currentPage ?? this.currentPage,
      pageSize: pageSize ?? this.pageSize,
      totalCharacters: totalCharacters ?? this.totalCharacters,
    );
  }

  factory Characters.fromJson(Map<String, dynamic> json) {
    return Characters(
      characters: json["characters"] == null
          ? []
          : List<Character>.from(
              json["characters"]!.map((x) => Character.fromJson(x))),
      currentPage: json["currentPage"] ?? 0,
      pageSize: json["pageSize"] ?? 0,
      totalCharacters: json["totalCharacters"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        "characters": characters.map((x) => x?.toJson()).toList(),
        "currentPage": currentPage,
        "pageSize": pageSize,
        "totalCharacters": totalCharacters,
      };

  @override
  List<Object?> get props => [
        characters,
        currentPage,
        pageSize,
        totalCharacters,
      ];
}

class Character extends Equatable {
  Character({
    required this.id,
    required this.name,
    required this.images,
    required this.debut,
    required this.jutsu,
    required this.personal,
    required this.uniqueTraits,
    required this.family,
    required this.natureType,
    required this.rank,
    required this.voiceActors,
    required this.tools,
    required this.aniki,
    required this.chikushd,
    required this.shurad,
    required this.chiyo,
    required this.daikokuTenzen,
    required this.dorGremu,
    required this.fjin,
    required this.funatoSeiren,
    required this.gama,
    required this.gantetsu,
    required this.gzu,
    required this.gozu,
    required this.guren,
    required this.hakui,
    required this.hiruko,
    required this.hki,
    required this.ningend,
    required this.kagari,
    required this.kage,
    required this.karin,
    required this.karura,
    required this.sandaimeKazekage,
    required this.kiri,
    required this.kosuke,
    required this.meizu,
    required this.jigokud,
    required this.nawaki,
    required this.gakid,
    required this.raijin,
    required this.ran,
    required this.rydinJak,
    required this.sajin,
    required this.sansh,
    required this.senkaSazanami,
    required this.shiin,
    required this.jbi,
    required this.tofu,
    required this.toki,
    required this.tsubaki,
  });

  final int id;
  final String name;
  final List<String> images;
  final Debut? debut;
  final List<String> jutsu;
  final dynamic? personal;
  final List<String> uniqueTraits;
  // final Map<String, String> family;
  final dynamic? family;
  final List<String> natureType;
  final dynamic rank;
  final VoiceActors? voiceActors;
  final List<String> tools;
  final SandaimeKazekage? aniki;
  final SandaimeKazekage? chikushd;
  final SandaimeKazekage? shurad;
  final SandaimeKazekage? chiyo;
  final SandaimeKazekage? daikokuTenzen;
  final SandaimeKazekage? dorGremu;
  final SandaimeKazekage? fjin;
  final SandaimeKazekage? funatoSeiren;
  final SandaimeKazekage? gama;
  final SandaimeKazekage? gantetsu;
  final SandaimeKazekage? gzu;
  final SandaimeKazekage? gozu;
  final SandaimeKazekage? guren;
  final SandaimeKazekage? hakui;
  final SandaimeKazekage? hiruko;
  final SandaimeKazekage? hki;
  final SandaimeKazekage? ningend;
  final SandaimeKazekage? kagari;
  final SandaimeKazekage? kage;
  final SandaimeKazekage? karin;
  final SandaimeKazekage? karura;
  final SandaimeKazekage? sandaimeKazekage;
  final SandaimeKazekage? kiri;
  final SandaimeKazekage? kosuke;
  final SandaimeKazekage? meizu;
  final SandaimeKazekage? jigokud;
  final SandaimeKazekage? nawaki;
  final SandaimeKazekage? gakid;
  final SandaimeKazekage? raijin;
  final SandaimeKazekage? ran;
  final SandaimeKazekage? rydinJak;
  final SandaimeKazekage? sajin;
  final SandaimeKazekage? sansh;
  final SandaimeKazekage? senkaSazanami;
  final SandaimeKazekage? shiin;
  final SandaimeKazekage? jbi;
  final SandaimeKazekage? tofu;
  final SandaimeKazekage? toki;
  final SandaimeKazekage? tsubaki;

  Character copyWith({
    int? id,
    String? name,
    List<String>? images,
    Debut? debut,
    List<String>? jutsu,
    dynamic? personal,
    List<String>? uniqueTraits,
    // Map<String, String>? family,
    dynamic? family,
    List<String>? natureType,
    dynamic? rank,
    VoiceActors? voiceActors,
    List<String>? tools,
    SandaimeKazekage? aniki,
    SandaimeKazekage? chikushd,
    SandaimeKazekage? shurad,
    SandaimeKazekage? chiyo,
    SandaimeKazekage? daikokuTenzen,
    SandaimeKazekage? dorGremu,
    SandaimeKazekage? fjin,
    SandaimeKazekage? funatoSeiren,
    SandaimeKazekage? gama,
    SandaimeKazekage? gantetsu,
    SandaimeKazekage? gzu,
    SandaimeKazekage? gozu,
    SandaimeKazekage? guren,
    SandaimeKazekage? hakui,
    SandaimeKazekage? hiruko,
    SandaimeKazekage? hki,
    SandaimeKazekage? ningend,
    SandaimeKazekage? kagari,
    SandaimeKazekage? kage,
    SandaimeKazekage? karin,
    SandaimeKazekage? karura,
    SandaimeKazekage? sandaimeKazekage,
    SandaimeKazekage? kiri,
    SandaimeKazekage? kosuke,
    SandaimeKazekage? meizu,
    SandaimeKazekage? jigokud,
    SandaimeKazekage? nawaki,
    SandaimeKazekage? gakid,
    SandaimeKazekage? raijin,
    SandaimeKazekage? ran,
    SandaimeKazekage? rydinJak,
    SandaimeKazekage? sajin,
    SandaimeKazekage? sansh,
    SandaimeKazekage? senkaSazanami,
    SandaimeKazekage? shiin,
    SandaimeKazekage? jbi,
    SandaimeKazekage? tofu,
    SandaimeKazekage? toki,
    SandaimeKazekage? tsubaki,
  }) {
    return Character(
      id: id ?? this.id,
      name: name ?? this.name,
      images: images ?? this.images,
      debut: debut ?? this.debut,
      jutsu: jutsu ?? this.jutsu,
      personal: personal ?? this.personal,
      uniqueTraits: uniqueTraits ?? this.uniqueTraits,
      family: family ?? this.family,
      natureType: natureType ?? this.natureType,
      rank: rank ?? this.rank,
      voiceActors: voiceActors ?? this.voiceActors,
      tools: tools ?? this.tools,
      aniki: aniki ?? this.aniki,
      chikushd: chikushd ?? this.chikushd,
      shurad: shurad ?? this.shurad,
      chiyo: chiyo ?? this.chiyo,
      daikokuTenzen: daikokuTenzen ?? this.daikokuTenzen,
      dorGremu: dorGremu ?? this.dorGremu,
      fjin: fjin ?? this.fjin,
      funatoSeiren: funatoSeiren ?? this.funatoSeiren,
      gama: gama ?? this.gama,
      gantetsu: gantetsu ?? this.gantetsu,
      gzu: gzu ?? this.gzu,
      gozu: gozu ?? this.gozu,
      guren: guren ?? this.guren,
      hakui: hakui ?? this.hakui,
      hiruko: hiruko ?? this.hiruko,
      hki: hki ?? this.hki,
      ningend: ningend ?? this.ningend,
      kagari: kagari ?? this.kagari,
      kage: kage ?? this.kage,
      karin: karin ?? this.karin,
      karura: karura ?? this.karura,
      sandaimeKazekage: sandaimeKazekage ?? this.sandaimeKazekage,
      kiri: kiri ?? this.kiri,
      kosuke: kosuke ?? this.kosuke,
      meizu: meizu ?? this.meizu,
      jigokud: jigokud ?? this.jigokud,
      nawaki: nawaki ?? this.nawaki,
      gakid: gakid ?? this.gakid,
      raijin: raijin ?? this.raijin,
      ran: ran ?? this.ran,
      rydinJak: rydinJak ?? this.rydinJak,
      sajin: sajin ?? this.sajin,
      sansh: sansh ?? this.sansh,
      senkaSazanami: senkaSazanami ?? this.senkaSazanami,
      shiin: shiin ?? this.shiin,
      jbi: jbi ?? this.jbi,
      tofu: tofu ?? this.tofu,
      toki: toki ?? this.toki,
      tsubaki: tsubaki ?? this.tsubaki,
    );
  }

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      images: json["images"] == null
          ? []
          : List<String>.from(json["images"]!.map((x) => x)),
      debut: json["debut"] == null ? null : Debut.fromJson(json["debut"]),
      jutsu: json["jutsu"] == null
          ? []
          : List<String>.from(json["jutsu"]!.map((x) => x)),
      personal: json["personal"],
      uniqueTraits: json["uniqueTraits"] == null
          ? []
          : List<String>.from(json["uniqueTraits"]!.map((x) => x)),
      // family: Map.from(json["family"])
      //     .map((k, v) => MapEntry<String, String>(k, v)),
      family: json["family"],
      natureType: json["natureType"] == null
          ? []
          : List<String>.from(json["natureType"]!.map((x) => x)),
      rank: json["rank"],
      voiceActors: json["voiceActors"] == null
          ? null
          : VoiceActors.fromJson(json["voiceActors"]),
      tools: json["tools"] == null
          ? []
          : List<String>.from(json["tools"]!.map((x) => x)),
      aniki: json["兄貴Aniki"] == null
          ? null
          : SandaimeKazekage.fromJson(json["兄貴Aniki"]),
      chikushd: json["畜生道Chikushōdō"] == null
          ? null
          : SandaimeKazekage.fromJson(json["畜生道Chikushōdō"]),
      shurad: json["修羅道Shuradō"] == null
          ? null
          : SandaimeKazekage.fromJson(json["修羅道Shuradō"]),
      chiyo: json["千代Chiyo"] == null
          ? null
          : SandaimeKazekage.fromJson(json["千代Chiyo"]),
      daikokuTenzen: json["大黒天善DaikokuTenzen"] == null
          ? null
          : SandaimeKazekage.fromJson(json["大黒天善DaikokuTenzen"]),
      dorGremu: json["土牢剛霊無DorōGōremu"] == null
          ? null
          : SandaimeKazekage.fromJson(json["土牢剛霊無DorōGōremu"]),
      fjin: json["風神Fūjin"] == null
          ? null
          : SandaimeKazekage.fromJson(json["風神Fūjin"]),
      funatoSeiren: json["舟戸青煉FunatoSeiren"] == null
          ? null
          : SandaimeKazekage.fromJson(json["舟戸青煉FunatoSeiren"]),
      gama: json["蝦蟇Gama"] == null
          ? null
          : SandaimeKazekage.fromJson(json["蝦蟇Gama"]),
      gantetsu: json["丸鉄Gantetsu"] == null
          ? null
          : SandaimeKazekage.fromJson(json["丸鉄Gantetsu"]),
      gzu: json["業頭Gōzu"] == null
          ? null
          : SandaimeKazekage.fromJson(json["業頭Gōzu"]),
      gozu: json["牛頭Gozu"] == null
          ? null
          : SandaimeKazekage.fromJson(json["牛頭Gozu"]),
      guren: json["紅蓮Guren"] == null
          ? null
          : SandaimeKazekage.fromJson(json["紅蓮Guren"]),
      hakui: json["白医Hakui"] == null
          ? null
          : SandaimeKazekage.fromJson(json["白医Hakui"]),
      hiruko: json["卑留呼Hiruko"] == null
          ? null
          : SandaimeKazekage.fromJson(json["卑留呼Hiruko"]),
      hki: json["宝亀Hōki"] == null
          ? null
          : SandaimeKazekage.fromJson(json["宝亀Hōki"]),
      ningend: json["人間道Ningendō"] == null
          ? null
          : SandaimeKazekage.fromJson(json["人間道Ningendō"]),
      kagari: json["篝Kagari"] == null
          ? null
          : SandaimeKazekage.fromJson(json["篝Kagari"]),
      kage: json["影Kage"] == null
          ? null
          : SandaimeKazekage.fromJson(json["影Kage"]),
      karin: json["香燐Karin"] == null
          ? null
          : SandaimeKazekage.fromJson(json["香燐Karin"]),
      karura: json["加流羅Karura"] == null
          ? null
          : SandaimeKazekage.fromJson(json["加流羅Karura"]),
      sandaimeKazekage: json["三代目風影SandaimeKazekage"] == null
          ? null
          : SandaimeKazekage.fromJson(json["三代目風影SandaimeKazekage"]),
      kiri: json["伎璃Kiri"] == null
          ? null
          : SandaimeKazekage.fromJson(json["伎璃Kiri"]),
      kosuke: json["小助Kosuke"] == null
          ? null
          : SandaimeKazekage.fromJson(json["小助Kosuke"]),
      meizu: json["冥頭Meizu"] == null
          ? null
          : SandaimeKazekage.fromJson(json["冥頭Meizu"]),
      jigokud: json["地獄道Jigokudō"] == null
          ? null
          : SandaimeKazekage.fromJson(json["地獄道Jigokudō"]),
      nawaki: json["縄樹Nawaki"] == null
          ? null
          : SandaimeKazekage.fromJson(json["縄樹Nawaki"]),
      gakid: json["餓鬼道Gakidō"] == null
          ? null
          : SandaimeKazekage.fromJson(json["餓鬼道Gakidō"]),
      raijin: json["雷神Raijin"] == null
          ? null
          : SandaimeKazekage.fromJson(json["雷神Raijin"]),
      ran:
          json["乱Ran"] == null ? null : SandaimeKazekage.fromJson(json["乱Ran"]),
      rydinJak: json["龍堂院邪光RyūdōinJakō"] == null
          ? null
          : SandaimeKazekage.fromJson(json["龍堂院邪光RyūdōinJakō"]),
      sajin: json["砂仁Sajin"] == null
          ? null
          : SandaimeKazekage.fromJson(json["砂仁Sajin"]),
      sansh: json["山椒Sanshō"] == null
          ? null
          : SandaimeKazekage.fromJson(json["山椒Sanshō"]),
      senkaSazanami: json["撰歌細波SenkaSazanami"] == null
          ? null
          : SandaimeKazekage.fromJson(json["撰歌細波SenkaSazanami"]),
      shiin: json["死韻Shiin"] == null
          ? null
          : SandaimeKazekage.fromJson(json["死韻Shiin"]),
      jbi: json["十尾Jūbi"] == null
          ? null
          : SandaimeKazekage.fromJson(json["十尾Jūbi"]),
      tofu: json["斗風Tofu"] == null
          ? null
          : SandaimeKazekage.fromJson(json["斗風Tofu"]),
      toki: json["土岐Toki"] == null
          ? null
          : SandaimeKazekage.fromJson(json["土岐Toki"]),
      tsubaki: json["椿Tsubaki"] == null
          ? null
          : SandaimeKazekage.fromJson(json["椿Tsubaki"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "images": images.map((x) => x).toList(),
        "debut": debut?.toJson(),
        "jutsu": jutsu.map((x) => x).toList(),
        "personal": personal,
        "uniqueTraits": uniqueTraits.map((x) => x).toList(),
        // "family":
        //     Map.from(family).map((k, v) => MapEntry<String, String>(k, v)),
        "family": family,
        "natureType": natureType.map((x) => x).toList(),
        "rank": rank,
        "voiceActors": voiceActors?.toJson(),
        "tools": tools.map((x) => x).toList(),
        "兄貴Aniki": aniki?.toJson(),
        "畜生道Chikushōdō": chikushd?.toJson(),
        "修羅道Shuradō": shurad?.toJson(),
        "千代Chiyo": chiyo?.toJson(),
        "大黒天善DaikokuTenzen": daikokuTenzen?.toJson(),
        "土牢剛霊無DorōGōremu": dorGremu?.toJson(),
        "風神Fūjin": fjin?.toJson(),
        "舟戸青煉FunatoSeiren": funatoSeiren?.toJson(),
        "蝦蟇Gama": gama?.toJson(),
        "丸鉄Gantetsu": gantetsu?.toJson(),
        "業頭Gōzu": gzu?.toJson(),
        "牛頭Gozu": gozu?.toJson(),
        "紅蓮Guren": guren?.toJson(),
        "白医Hakui": hakui?.toJson(),
        "卑留呼Hiruko": hiruko?.toJson(),
        "宝亀Hōki": hki?.toJson(),
        "人間道Ningendō": ningend?.toJson(),
        "篝Kagari": kagari?.toJson(),
        "影Kage": kage?.toJson(),
        "香燐Karin": karin?.toJson(),
        "加流羅Karura": karura?.toJson(),
        "三代目風影SandaimeKazekage": sandaimeKazekage?.toJson(),
        "伎璃Kiri": kiri?.toJson(),
        "小助Kosuke": kosuke?.toJson(),
        "冥頭Meizu": meizu?.toJson(),
        "地獄道Jigokudō": jigokud?.toJson(),
        "縄樹Nawaki": nawaki?.toJson(),
        "餓鬼道Gakidō": gakid?.toJson(),
        "雷神Raijin": raijin?.toJson(),
        "乱Ran": ran?.toJson(),
        "龍堂院邪光RyūdōinJakō": rydinJak?.toJson(),
        "砂仁Sajin": sajin?.toJson(),
        "山椒Sanshō": sansh?.toJson(),
        "撰歌細波SenkaSazanami": senkaSazanami?.toJson(),
        "死韻Shiin": shiin?.toJson(),
        "十尾Jūbi": jbi?.toJson(),
        "斗風Tofu": tofu?.toJson(),
        "土岐Toki": toki?.toJson(),
        "椿Tsubaki": tsubaki?.toJson(),
      };

  @override
  List<Object?> get props => [
        id,
        name,
        images,
        debut,
        jutsu,
        personal,
        uniqueTraits,
        family,
        natureType,
        rank,
        voiceActors,
        tools,
        aniki,
        chikushd,
        shurad,
        chiyo,
        daikokuTenzen,
        dorGremu,
        fjin,
        funatoSeiren,
        gama,
        gantetsu,
        gzu,
        gozu,
        guren,
        hakui,
        hiruko,
        hki,
        ningend,
        kagari,
        kage,
        karin,
        karura,
        sandaimeKazekage,
        kiri,
        kosuke,
        meizu,
        jigokud,
        nawaki,
        gakid,
        raijin,
        ran,
        rydinJak,
        sajin,
        sansh,
        senkaSazanami,
        shiin,
        jbi,
        tofu,
        toki,
        tsubaki,
      ];
}

class SandaimeKazekage extends Equatable {
  SandaimeKazekage({required this.json});
  final Map<String, dynamic> json;

  factory SandaimeKazekage.fromJson(Map<String, dynamic> json) {
    return SandaimeKazekage(json: json);
  }

  Map<String, dynamic> toJson() => {};

  @override
  List<Object?> get props => [];
}

class Debut extends Equatable {
  Debut({
    required this.novel,
    required this.movie,
    required this.appearsIn,
    required this.manga,
    required this.anime,
    required this.game,
    required this.ova,
  });

  final String novel;
  final String movie;
  final String appearsIn;
  final String manga;
  final String anime;
  final String game;
  final String ova;

  Debut copyWith({
    String? novel,
    String? movie,
    String? appearsIn,
    String? manga,
    String? anime,
    String? game,
    String? ova,
  }) {
    return Debut(
      novel: novel ?? this.novel,
      movie: movie ?? this.movie,
      appearsIn: appearsIn ?? this.appearsIn,
      manga: manga ?? this.manga,
      anime: anime ?? this.anime,
      game: game ?? this.game,
      ova: ova ?? this.ova,
    );
  }

  factory Debut.fromJson(Map<String, dynamic> json) {
    return Debut(
      novel: json["novel"] ?? "",
      movie: json["movie"] ?? "",
      appearsIn: json["appearsIn"] ?? "",
      manga: json["manga"] ?? "",
      anime: json["anime"] ?? "",
      game: json["game"] ?? "",
      ova: json["ova"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        "novel": novel,
        "movie": movie,
        "appearsIn": appearsIn,
        "manga": manga,
        "anime": anime,
        "game": game,
        "ova": ova,
      };

  @override
  List<Object?> get props => [
        novel,
        movie,
        appearsIn,
        manga,
        anime,
        game,
        ova,
      ];
}

class PersonalClass extends Equatable {
  PersonalClass({
    required this.species,
    required this.status,
    required this.kekkeiGenkai,
    required this.classification,
    required this.jinchriki,
    required this.titles,
    required this.affiliation,
    required this.birthdate,
    required this.sex,
    required this.height,
    required this.weight,
    required this.bloodType,
    required this.occupation,
    required this.team,
    required this.partner,
    required this.age,
    required this.clan,
    required this.tailedBeast,
    required this.kekkeiTta,
    required this.kekkeiMra,
  });

  final String species;
  final String status;
  final dynamic kekkeiGenkai;
  final dynamic classification;
  final List<String> jinchriki;
  final List<String> titles;
  final dynamic affiliation;
  final String birthdate;
  final String sex;
  final Age? height;
  final Weight? weight;
  final String bloodType;
  final dynamic occupation;
  final dynamic team;
  final dynamic partner;
  final Age? age;
  final dynamic clan;
  final String tailedBeast;
  final String kekkeiTta;
  final dynamic kekkeiMra;

  PersonalClass copyWith({
    String? species,
    String? status,
    dynamic? kekkeiGenkai,
    dynamic? classification,
    List<String>? jinchriki,
    List<String>? titles,
    dynamic? affiliation,
    String? birthdate,
    String? sex,
    Age? height,
    Weight? weight,
    String? bloodType,
    dynamic? occupation,
    dynamic? team,
    dynamic? partner,
    Age? age,
    dynamic? clan,
    String? tailedBeast,
    String? kekkeiTta,
    dynamic? kekkeiMra,
  }) {
    return PersonalClass(
      species: species ?? this.species,
      status: status ?? this.status,
      kekkeiGenkai: kekkeiGenkai ?? this.kekkeiGenkai,
      classification: classification ?? this.classification,
      jinchriki: jinchriki ?? this.jinchriki,
      titles: titles ?? this.titles,
      affiliation: affiliation ?? this.affiliation,
      birthdate: birthdate ?? this.birthdate,
      sex: sex ?? this.sex,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      bloodType: bloodType ?? this.bloodType,
      occupation: occupation ?? this.occupation,
      team: team ?? this.team,
      partner: partner ?? this.partner,
      age: age ?? this.age,
      clan: clan ?? this.clan,
      tailedBeast: tailedBeast ?? this.tailedBeast,
      kekkeiTta: kekkeiTta ?? this.kekkeiTta,
      kekkeiMra: kekkeiMra ?? this.kekkeiMra,
    );
  }

  factory PersonalClass.fromJson(Map<String, dynamic> json) {
    return PersonalClass(
      species: json["species"] ?? "",
      status: json["status"] ?? "",
      kekkeiGenkai: json["kekkeiGenkai"],
      classification: json["classification"],
      jinchriki: json["jinchūriki"] == null
          ? []
          : List<String>.from(json["jinchūriki"]!.map((x) => x)),
      titles: json["titles"] == null
          ? []
          : List<String>.from(json["titles"]!.map((x) => x)),
      affiliation: json["affiliation"],
      birthdate: json["birthdate"] ?? "",
      sex: json["sex"] ?? "",
      height: json["height"] == null ? null : Age.fromJson(json["height"]),
      weight: json["weight"] == null ? null : Weight.fromJson(json["weight"]),
      bloodType: json["bloodType"] ?? "",
      occupation: json["occupation"],
      team: json["team"],
      partner: json["partner"],
      age: json["age"] == null ? null : Age.fromJson(json["age"]),
      clan: json["clan"],
      tailedBeast: json["tailedBeast"] ?? "",
      kekkeiTta: json["kekkeiTōta"] ?? "",
      kekkeiMra: json["kekkeiMōra"],
    );
  }

  Map<String, dynamic> toJson() => {
        "species": species,
        "status": status,
        "kekkeiGenkai": kekkeiGenkai,
        "classification": classification,
        "jinchūriki": jinchriki.map((x) => x).toList(),
        "titles": titles.map((x) => x).toList(),
        "affiliation": affiliation,
        "birthdate": birthdate,
        "sex": sex,
        "height": height?.toJson(),
        "weight": weight?.toJson(),
        "bloodType": bloodType,
        "occupation": occupation,
        "team": team,
        "partner": partner,
        "age": age?.toJson(),
        "clan": clan,
        "tailedBeast": tailedBeast,
        "kekkeiTōta": kekkeiTta,
        "kekkeiMōra": kekkeiMra,
      };

  @override
  List<Object?> get props => [
        species,
        status,
        kekkeiGenkai,
        classification,
        jinchriki,
        titles,
        affiliation,
        birthdate,
        sex,
        height,
        weight,
        bloodType,
        occupation,
        team,
        partner,
        age,
        clan,
        tailedBeast,
        kekkeiTta,
        kekkeiMra,
      ];
}

class Age extends Equatable {
  Age({
    required this.partIi,
    required this.partI,
    required this.academyGraduate,
    required this.chuninPromotion,
    required this.borutoManga,
    required this.borutoMovie,
    required this.gaiden,
    required this.blankPeriod,
  });

  final String partIi;
  final String partI;
  final String academyGraduate;
  final String chuninPromotion;
  final String borutoManga;
  final String borutoMovie;
  final String gaiden;
  final String blankPeriod;

  Age copyWith({
    String? partIi,
    String? partI,
    String? academyGraduate,
    String? chuninPromotion,
    String? borutoManga,
    String? borutoMovie,
    String? gaiden,
    String? blankPeriod,
  }) {
    return Age(
      partIi: partIi ?? this.partIi,
      partI: partI ?? this.partI,
      academyGraduate: academyGraduate ?? this.academyGraduate,
      chuninPromotion: chuninPromotion ?? this.chuninPromotion,
      borutoManga: borutoManga ?? this.borutoManga,
      borutoMovie: borutoMovie ?? this.borutoMovie,
      gaiden: gaiden ?? this.gaiden,
      blankPeriod: blankPeriod ?? this.blankPeriod,
    );
  }

  factory Age.fromJson(Map<String, dynamic> json) {
    return Age(
      partIi: json["Part II"] ?? "",
      partI: json["Part I"] ?? "",
      academyGraduate: json["Academy Graduate"] ?? "",
      chuninPromotion: json["Chunin Promotion"] ?? "",
      borutoManga: json["Boruto Manga"] ?? "",
      borutoMovie: json["Boruto Movie"] ?? "",
      gaiden: json["Gaiden"] ?? "",
      blankPeriod: json["Blank Period"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        "Part II": partIi,
        "Part I": partI,
        "Academy Graduate": academyGraduate,
        "Chunin Promotion": chuninPromotion,
        "Boruto Manga": borutoManga,
        "Boruto Movie": borutoMovie,
        "Gaiden": gaiden,
        "Blank Period": blankPeriod,
      };

  @override
  List<Object?> get props => [
        partIi,
        partI,
        academyGraduate,
        chuninPromotion,
        borutoManga,
        borutoMovie,
        gaiden,
        blankPeriod,
      ];
}

class Weight extends Equatable {
  Weight({
    required this.partIi,
    required this.partI,
  });

  final String partIi;
  final String partI;

  Weight copyWith({
    String? partIi,
    String? partI,
  }) {
    return Weight(
      partIi: partIi ?? this.partIi,
      partI: partI ?? this.partI,
    );
  }

  factory Weight.fromJson(Map<String, dynamic> json) {
    return Weight(
      partIi: json["Part II"] ?? "",
      partI: json["Part I"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        "Part II": partIi,
        "Part I": partI,
      };

  @override
  List<Object?> get props => [
        partIi,
        partI,
      ];
}

class RankClass extends Equatable {
  RankClass({
    required this.ninjaRank,
    required this.ninjaRegistration,
  });

  final Age? ninjaRank;
  final String ninjaRegistration;

  RankClass copyWith({
    Age? ninjaRank,
    String? ninjaRegistration,
  }) {
    return RankClass(
      ninjaRank: ninjaRank ?? this.ninjaRank,
      ninjaRegistration: ninjaRegistration ?? this.ninjaRegistration,
    );
  }

  factory RankClass.fromJson(Map<String, dynamic> json) {
    return RankClass(
      ninjaRank:
          json["ninjaRank"] == null ? null : Age.fromJson(json["ninjaRank"]),
      ninjaRegistration: json["ninjaRegistration"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        "ninjaRank": ninjaRank?.toJson(),
        "ninjaRegistration": ninjaRegistration,
      };

  @override
  List<Object?> get props => [
        ninjaRank,
        ninjaRegistration,
      ];
}

class VoiceActors extends Equatable {
  VoiceActors({
    required this.japanese,
    required this.english,
  });

  final dynamic japanese;
  final dynamic english;

  VoiceActors copyWith({
    dynamic? japanese,
    dynamic? english,
  }) {
    return VoiceActors(
      japanese: japanese ?? this.japanese,
      english: english ?? this.english,
    );
  }

  factory VoiceActors.fromJson(Map<String, dynamic> json) {
    return VoiceActors(
      japanese: json["japanese"],
      english: json["english"],
    );
  }

  Map<String, dynamic> toJson() => {
        "japanese": japanese,
        "english": english,
      };

  @override
  List<Object?> get props => [
        japanese,
        english,
      ];
}
