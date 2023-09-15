import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:shayari_app/thirdpage.dart';

class secondpage extends StatefulWidget {
  List list;
  int index;

  secondpage(this.list, this.index);

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  List Diwali = [
    "❝\n\nMay this auspicious occasion light up your life with happiness, joy and peace. Happy Diwali\n\n❞ ",
    "❝\n\nતમને અને તમારા પરિવાર ને ખૂબ જ ખુશ દિપાવલીની શુભકામના. પ્રકાશનો આ તહેવાર તમને અને તમારા પરિવારના જીવનમાં ઉત્સાહ, સુખ અને તેજ લાવે. તમારા ઘર અને હૃદયને શાંતિ મળે. આ દિવાળી પર તમને ખુબ ખુબ આનંદ અને ખુશીની શુભેચ્છાઓ ...!\n\n❞",
    "❝\n\nसुख समृधि आपको मिले इस दीवाली पर, दुख से मुक्ति मिले इस दीवाली पर, माँ लक्ष्मी का आशीर्वाद हो आपके साथ और लाखों खुशिया मिले इस दीवाली पर।” “मुस्कुराते हँसते दीप तुम जलाना, जीवन में नई खुशियों को लाना, दुख दर्द अपने भूल कर, सबको गले लगाना, और प्यार से ये दीवाली मनाना, दिवाली की हार्दिक शुभकामनाए।\n\n❞",
    "❝ \n\nLet’s celebrate the festival in the true sense by spreading joy and light up the world of others. Have a happy, safe, and blessed Diwali\n\n ❞ ",
    "❝ \n\nWith the shining of diyas and the echoes of the chants, may prosperity and happiness of this festival of lights fill our lives.\n\n❞ ",
    "❝ \n\nThis Diwali, may Goddess Lakshmi remove all the negativities from your life. May you be showered with happiness, good health, wealth and bounty.\n\n❞ ",
    "❝ \n\nMay this Diwali bring prosperity, wealth, and success for each one of our family. Wishing you all a great time on this holy night. Happy Diwali!\n\n❞ ",
    "❝ \n\nHope all the lights of this year’s Diwali enter through the darkest of rooms and bring the brightest of light into your life. I hope you achieve all your dreams. Happy Diwali!\n\n❞ "
  ];

  List Holi = [
    " Happy Holi! So grateful for your presence in my life.",
    " May your Holi celebration be beautiful and full of friends and family this year.",
    " Happy Holi! May your celebrations be as joyful as you are.",
    " Warm wishes to you and yours on Holi.",
    " Wishing you a Holi of peace and play in the beautiful colors.",
    " Holi is the time to celebrate friendship, so let’s celebrate ours! Thankful for all the years I’ve known you.",
    " Holi is such a special time of the year—enjoy this fabulous day of festivities!",
    " Celebrate this Holi by letting go of grudges and letting your playful spirit shine.",
    " Let’s celebrate the divine love of Radha Krishna this Holi.",
    " I hope that every stranger you meet this Holi becomes a lifelong friend.",
    " Wishing you and your family infinite blessings and joy on Holi.",
    " Thinking of you, especially on Holi. Although we may be far apart, you are always in my heart.",
    " As the flowers blossom for Spring, so too love blossoms in our hearts. Happy Holi!",
    " May you have a triumphant Holika Dahan around the bonfires, and a beautiful Holi filled with color.",
    " The beauty of Holi is that it doesn’t discriminate. We are all connected in the colors of the festival—rejoice!",
    " May your life be colored with the hues of happiness on Holi!"
  ];

  List MahaShivratri = [
    "May Lord Shiva shower his benign blessings on you and your family",
    "May Lord Shiva bless you with health, wealth and prosperity",
    "May Lord Shiva shower his choicest blessings on you and your family.",
    "Wishing you a blessed Maha Shivratri!",
  ];

  List RamNavmi = [
    "   May God bless you and your family with all the good in the world and the best of health. Happy Ram Navami.",
    "  This Ram Navami, may Lord Ram shower you with his blessings, love and care. I wish you and your family a very Happy Ram Navami.",
    "  Let the brightness of diyas and the echoes of the chants fill your life with happiness and contentment. Happy Ram Navami.",
    "  May the divine grace of Lord Rama always be with you. Wish you a very happy and prosperous Rama Navami.",
    " Ayodhya jinka dham hai, Ram jinka naam hai, Aise maryada Purushottam Ram ki charnon mein hamara pranam hai. Aapko Ram Navami ki hardik shubhkamnaye.",
    "  Wishing you love, health, peace, and prosperity this Ram Navami. May Lord Rama always guide you and your family on the right path. Shubh Ram Navami.",
    "  On this holy occasion of Ram Navami, I wish that the blessings of Lord Ram be with you. Your heart and home be full of happiness, peace and prosperity. Happy Ram Navami.",
    "  May the almighty bless you and your family with peace, happiness, prosperity, and contentment today. Happy Ram Navami.",
  ];

  List Navratri = [
    "Navratri-1",
    "Navratri-2",
    "Navratri-3",
    "Navratri-4",
    "Navratri-5",
    "Navratri-6"
  ];

  List DurgaAshthmii = [
    "DurgaAshthmii-1",
    "DurgaAshthmii-2",
    "DurgaAshthmii-3",
    "DurgaAshthmii-4",
    "DurgaAshthmii-5",
    "DurgaAshthmii-6"
  ];

  List NewYear = [
    "Another year has gone by that filled our life with pleasant moments and cherished memories. All the best for coming to New Year.",
    "As you celebrate the glory of this miraculous season, may your home be filled with love, peace, and joy. May these blessings follow you throughout the New Year.",
    "Cheers to a better life and a bright future. Have a prosperous New Year!",
    "During this time of faith and family, may the true meaning of festival fill you with joy. Wishing you a blessed New Year.",
    "Free yourself from sadness and frown for the New Year has finally come to town. Have a happy and healthy New Year!",
    "Have a crazy, rocking, exciting and magical New Year!",
    "Have a great New Year! Take the time to celebrate your desires, values and affections with your loved ones. Wishing you all the best.",
    "Have a joyful, prosperous, and a healthy New Year ahead.",
    "Here comes another year to fill yourself with all the happiness and prosperity of the world. I wish in this upcoming year many cheerful moments to you and your family.",
    "Hope this season ends on a joyful note and continues into a safe and prosperous New Year for you and your family.",
    "Hope you have crackling celebrations this year. Have many cheerful memories, pleasant experiences, and loveable relationships.",
    "I extend my warm wishes from the bottom of my heart for this New Year.",
    "I hope this New Year comes with a positive change in your life and fulfils all your ambitions. Take good care of yourself, and I wish you the best of health and wealth.",
    "I wish you and your family to have everlasting happiness and prosperity.",
    "I wish you to have a fabulous year ahead. Wish you all the love and luck. Happy New Year",
    "It’s not the destination, it’s the journey. May you enjoy each day of your adventure. Happy New Year!",
    "Let this year bring new joy and fun to your life. Wish you a bright and magnificent year ahead.",
    "Let us make the upcoming year equally flying with colours and successful for both of us.",
    "Let’s bid goodbye to the old year with a smile on our lips and warmth in our heart and welcome the New Year with happiness and new aspirations. Wish you a Happy New Year.",
    "May all your wishes come true and a very happy New Year to you!",
    "May every day of your New Year glow with good cheer and happiness for you and your family.",
    "May GOD bring a shine of happiness and everlasting joy in your life this year.",
    "May the dawn of New Year fill you with new hopes. All the very best from me and my family.",
    "May this New Year bring lots of good luck and success to you. Happy New Year.",
    "May this New Year bring you joy and laughter. To be happy is the greatest wish in life. Happy New Year.",
    "May this New Year bring you more courage and vigour to fight the hardships of life. May all your dreams and aims come true.",
    "May this year be a fitting ending to a successful year for you. May the New Year bring fresh hopes and bright beginnings.",
    "May this year be the best year for you. I am always with you through your tough times and happy moments. A blessed New Year to you.",
    "May true happiness, longevity, and good fortune surround your every single day of this New Year.",
    "May you always be surrounded by hope and guided by the stars. Have a prosperous New Year!",
    "May you get all the worldliness and precious moments to enjoy life in a better way and the blessings of God always be with you.",
    "May you have the sweetest Monday, marvellous Tuesday, mesmerizing Wednesday, adorable Thursday, successful Friday, enjoyable Saturday, and a blissful Sunday of this coming year.",
    "May your home be filled with the joy. Here’s wishing you a blessed and Happy New Year!",
    "More blessings are on your way this year. Have beautiful memories, treasured moments, and many blessings this coming year.",
    "New love, new do, a new purse, new adventures, new you. May the coming year be a great success for you.",
  ];

  List bhaiduj = [
    "bhaiduj-1",
    "bhaiduj-2",
    "bhaiduj-3",
    "bhaiduj-4",
    "bhaiduj-5",
    "bhaiduj-6"
  ];

  List Makarsankranti = [
    "Makarsankranti-1",
    "Makarsankranti-2",
    "Makarsankranti-3",
    "Makarsankranti-4",
    "Makarsankranti-5",
    "Makarsankranti-6"
  ];
  List Janmashtmi = [
    "Janmashtmi-1",
    "Janmashtmi-2",
    "Janmashtmi-3",
    "Janmashtmi-4",
    "Janmashtmi-5",
    "Janmashtmi-6"
  ];
  List RakshaBandhan = [
    "RakshaBandhan-1",
    "RakshaBandhan-2",
    "RakshaBandhan-3",
    "RakshaBandhan-4",
    "RakshaBandhan-5",
    "RakshaBandhan-6"
  ];
  List GaneshChaturthi = [
    "GaneshChaturthi-1",
    "GaneshChaturthi-2",
    "GaneshChaturthi-3",
    "GaneshChaturthi-4",
    "GaneshChaturthi-5",
    "GaneshChaturthi-6"
  ];
  List temp = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.index == 0) {
      temp = Diwali;
    } else if (widget.index == 1) {
      temp = Holi;
    } else if (widget.index == 2) {
      temp = MahaShivratri;
    } else if (widget.index == 3) {
      temp = RamNavmi;
    } else if (widget.index == 4) {
      temp = Navratri;
    } else if (widget.index == 5) {
      temp = DurgaAshthmii;
    } else if (widget.index == 6) {
      temp = NewYear;
    } else if (widget.index == 7) {
      temp = bhaiduj;
    } else if (widget.index == 8) {
      temp = Makarsankranti;
    } else if (widget.index == 9) {
      temp = Janmashtmi;
    } else if (widget.index == 10) {
      temp = RakshaBandhan;
    } else if (widget.index == 11) {
      temp = GaneshChaturthi;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFFFD3A5),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title:
            Text("${widget.list[widget.index]}", textAlign: TextAlign.center),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/1014.jpg"), fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: temp.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return thirdpage(temp, index);
                  },
                ));
              },
              title: Opacity(
                opacity: 0.7,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GlassmorphicContainer(
                      width: 800,
                      height: 200,
                      borderRadius: 10,
                      linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white.withOpacity(0.3),
                            Colors.white.withOpacity(0.1)
                          ],
                          stops: [
                            0.0,
                            1.0
                          ]),
                      border: 5,
                      blur: 5,
                      borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.grey.withOpacity(0.1),
                            Colors.grey.withOpacity(0.1)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text("${temp[index]}",
                              style: TextStyle(
                                  fontFamily: "fontspring",
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal)),
                        ),
                      )),
                ),
              ),
            );

            return ListTile(
              title: Text("${temp[index]}"),
            );
          },
        ),
      ),
    );
  }
}
