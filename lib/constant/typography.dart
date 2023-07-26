import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    screenWidth = _mediaQueryData!.size.width;
    blockSizeVertical = screenHeight! / 100;
    blockSizeHorizontal = screenWidth! / 100;
  }
}
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import '../../components/color.dart';

// class CommonButton extends StatelessWidget {
//   const CommonButton({
//     super.key,
//     required this.onTap,
//     required this.buttonTitle,
//     this.margin,
//     this.buttonColor,
//   });

//   final VoidCallback onTap;
//   final String buttonTitle;
//   final EdgeInsetsGeometry? margin;
//   final Color? buttonColor;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         height: 60,
//         margin: margin ??
//             const EdgeInsets.symmetric(
//               horizontal: 25.0,
//             ),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: buttonColor ?? buttonColor ?? btnBlue,
//         ),
//         child: Row(
//           children: [
//             const Spacer(),
//             Container(
//               decoration: BoxDecoration(
//                 color: buttonColor ?? btnBlue,
//                 shape: BoxShape.circle,
//               ),
//               child: Icon(
//                 Icons.chevron_right_rounded,
//                 size: 30,
//                 color: buttonColor ?? btnBlue,
//               ),
//             ),
//             const SizedBox(
//               width: 15,
//             ),
//             Text(
//               buttonTitle,
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 18,
//               ),
//             ),
//             const Spacer(),
//             const SizedBox(
//               width: 15,
//             ),
//             Container(
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 shape: BoxShape.circle,
//               ),
//               padding: const EdgeInsets.all(4),
//               child: Icon(
//                 Icons.chevron_right_rounded,
//                 size: 35,
//                 color: buttonColor ?? btnBlue,
//               ),
//             ),
//             const SizedBox(
//               width: 15,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//  CommonButton(
//                                     onTap: () async {
//                                       if (_loginFormKey.currentState
//                                               ?.validate() ??
//                                           false) {
//                                         await myModel.login(context);
//                                       }
//                                     },