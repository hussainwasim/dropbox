import 'package:dropbox_ui/constant/style.dart';
import 'package:dropbox_ui/constant/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Color> textColor = [
      bluebox,
      yellowbox,
      greenbox,
      redbox,
    ];
    List<Color> folderColors = [
      lightbluebox,
      lightyellowbox,
      lightgreenbox,
      lightredbox,
    ];
    List<String> folderIconColor = [
      'bluefolder.png',
      'yellowfolder.png',
      'greenfolder.png',
      'redfolder.png',
    ];
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: khorizontalPadding),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Your dribbbox',
                    style: kQUestrialMedium.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 6,
                    ),
                  ),
                  Image.asset('assets/menu.png'),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 4,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kgrey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kgrey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kgrey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Image.asset('assets/seach.png'),
                  hintText: "Search folder",
                  hintStyle: kQUestrialMedium.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    color: darkGrey,
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Recent',
                        style: kQUestrialSemiBold.copyWith(
                          color: kBlack,
                          fontSize: SizeConfig.blockSizeHorizontal! * 4,
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 4,
                      ),
                      Image.asset('assets/arrowdown.png')
                    ],
                  ),
                  SvgPicture.asset('assets/sort.svg')
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 4,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: SizeConfig.blockSizeVertical! * 2,
                    mainAxisSpacing: SizeConfig.blockSizeHorizontal! * 2,
                  ),
                  itemCount: folderColors.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.5 * khorizontalPadding),
                      decoration: BoxDecoration(
                        color: folderColors[index],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/${folderIconColor[index]}'),
                              Image.asset('assets/more.png'),
                            ],
                          ),
                          Text(
                            'Mobile apps',
                            style: kQUestrialBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              color: textColor[index],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              SizedBox(
                height: 60,
                width: 60,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  backgroundColor: Color(0xff22215B),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
