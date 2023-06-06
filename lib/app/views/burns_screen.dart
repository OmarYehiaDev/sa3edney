import 'package:flutter/material.dart';
import 'package:sa3edney/app/config/context_helpers.dart';

import '../../generated/assets.dart';

class BurnsScreen extends StatelessWidget {
  const BurnsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Positioned.directional(
            //   textDirection: TextDirection.rtl,
            //   top: context.height * 0.185,
            //   end: context.width * 0.2,
            //   start: context.width * 0.2,
            //   child: Image.asset(
            //     AppAssetsManager.mainTitle,
            //   ),
            // ),
            // Positioned.directional(
            //   textDirection: TextDirection.rtl,
            //   top: 24,
            //   end: 16,
            //   child: Image.asset(
            //     AppAssetsManager.logo,
            //     width: 85,
            //     height: 85,
            //   ),
            // ),
            // Positioned.directional(
            //   textDirection: TextDirection.rtl,
            //   top: 0,
            //   start: 0,
            //   child: Image.asset(
            //     AppAssetsManager.topCorner,
            //     width: context.width,
            //   ),
            // ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Image.asset(
                Asset.burnImg,
                height: context.height * 0.8,
              ),
            ),
            Positioned.directional(
              textDirection: TextDirection.rtl,
              start: 16,
              bottom: 24,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  Asset.backBurn,
                  width: context.width * 0.15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
