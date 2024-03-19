// import 'package:flutter/material.dart';
// import 'package:rick_and_morty_app/common/utilities/routing/custom_route_transition/custom_route_transition.dart';

// class NavigatorServices {
//   void to({
//     required BuildContext context,
//     required Widget widget,
//   }) {
//     Navigator.of(context).push(
//       CustomTransitionPageRoute(
//         childWidget: widget,
//       ),
//     );
//   }

//   void toReplacement({
//     required BuildContext context,
//     required Widget widget,
//   }) {
//     Navigator.of(context).pushReplacement(
//       CustomTransitionPageRoute(
//         childWidget: widget,
//       ),
//     );
//   }

//   void toPushAndRemoveUntil({
//     required BuildContext context,
//     required Widget widget,
//   }) {
//     Navigator.of(context).pushAndRemoveUntil(
//         CustomTransitionPageRoute(
//           childWidget: widget,
//         ),
//         ModalRoute.withName('/'));
//   }

//   void pop({
//     required BuildContext context,
//   }) {
//     Navigator.pop(context);
//   }
// }
