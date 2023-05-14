import 'package:flutter/material.dart';
import 'package:flutter_application_spacex/component/text_component.dart';
import 'package:flutter_application_spacex/sample_ui/home_data.dart';
import 'package:flutter_application_spacex/sample_ui/home_ui.dart';
import 'package:flutter_application_spacex/sample_ui/launch_details.dart';
import 'package:flutter_application_spacex/utils/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<HomeData> homeData = [];
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();

    homeData.addAll([
      HomeData(
          missionName:'Thaicom 6',
          missionId: '9D1B7E0',
          missionDetails:
              'Second GTO launch for Falcon 9. The USAF evaluated launch data from this flight as part of a separate certification program for SpaceX to qualify to fly U.S. Total payload mass was 2,034 kg (4,484 lb) : 11 satellites weighing 172 kg each, plus a 142-kg mass simulator. This was the first launch of the upgraded v1.1 variant (later called Falcon 9 Full Thrust), with a 30 percent power increase. Orbcomm had originally agreed to be the third flight of the enhanced-thrust rocket, but the change to the maiden flight position was announced in October 2015. SpaceX received a permit from the FAA to land the booster on solid ground at Cape Canaveral, and succeeded.',
          date: DateTime.now(),
          isSuccess: true,
          image: "assets/images/launch.png"),
      HomeData(
          missionName: 'AsiaSat 6',
          missionId: '593B499',
          missionDetails:
              'Second GTO launch for Falcon 9. The USAF evaluated launch data from this flight as part of a separate certification program for SpaceX to qualify to fly U.S. Total payload mass was 2,034 kg (4,484 lb) : 11 satellites weighing 172 kg each, plus a 142-kg mass simulator. This was the first launch of the upgraded v1.1 variant (later called Falcon 9 Full Thrust), with a 30 percent power increase. Orbcomm had originally agreed to be the third flight of the enhanced-thrust rocket, but the change to the maiden flight position was announced in October 2015. SpaceX received a permit from the FAA to land the booster on solid ground at Cape Canaveral, and succeeded..',
          date: DateTime.now(),
          isSuccess: false,
          image: "assets/images/launch.png"),
      HomeData(
          missionName: 'OG-2 Mission 2',
          missionId: 'CE91D46',
          missionDetails:
              'Second GTO launch for Falcon 9. The USAF evaluated launch data from this flight as part of a separate certification program for SpaceX to qualify to fly U.S. Total payload mass was 2,034 kg (4,484 lb) : 11 satellites weighing 172 kg each, plus a 142-kg mass simulator. This was the first launch of the upgraded v1.1 variant (later called Falcon 9 Full Thrust), with a 30 percent power increase. Orbcomm had originally agreed to be the third flight of the enhanced-thrust rocket, but the change to the maiden flight position was announced in October 2015. SpaceX received a permit from the FAA to land the booster on solid ground at Cape Canaveral, and succeeded.',
          date: DateTime.now(),
          isSuccess: true,
          image: "assets/images/launch.png"),
      HomeData(
          missionName: 'CRS-1',
          missionId: 'EE86F74',
          missionDetails:
              'Second GTO launch for Falcon 9. The USAF evaluated launch data from this flight as part of a separate certification program for SpaceX to qualify to fly U.S. Total payload mass was 2,034 kg (4,484 lb) : 11 satellites weighing 172 kg each, plus a 142-kg mass simulator. This was the first launch of the upgraded v1.1 variant (later called Falcon 9 Full Thrust), with a 30 percent power increase. Orbcomm had originally agreed to be the third flight of the enhanced-thrust rocket, but the change to the maiden flight position was announced in October 2015. SpaceX received a permit from the FAA to land the booster on solid ground at Cape Canaveral, and succeeded.',
          date: DateTime.now(),
          isSuccess: false,
          image: "assets/images/launch.png"),
      HomeData(
          missionName: 'FALCON-SET',
          missionId: 'EE86F74',
          missionDetails:
              'Second GTO launch for Falcon 9. The USAF evaluated launch data from this flight as part of a separate certification program for SpaceX to qualify to fly Total payload mass was 2,034 kg (4,484 lb) : 11 satellites weighing 172 kg each, plus a 142-kg mass simulator. This was the first launch of the upgraded v1.1 variant (later called Falcon 9 Full Thrust), with a 30 percent power increase. Orbcomm had originally agreed to be the third flight of the enhanced-thrust rocket, but the change to the maiden flight position was announced in October 2015. SpaceX received a permit from the FAA to land the booster on solid ground at Cape Canaveral, and succeeded.',
          date: DateTime.now(),
          isSuccess: true,
          image: "assets/images/launch.png"),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const TextComponents(
          title: "LAUNCHES",
          fontColor: AppColors.btnColor,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home1.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 120),
          child: Container(
            child: ListView.builder(
                itemCount: homeData.length,
                padding: const EdgeInsets.all(10),
                itemBuilder: (context, index) {
                  return InkResponse(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LaunchPage(homeData[index])),
                      );
                    },
                    child: HomeUI(
                      homeData: homeData[index],
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
