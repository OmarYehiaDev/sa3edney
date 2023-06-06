import 'package:flutter/material.dart';
import 'package:sa3edney/app/config/context_helpers.dart';

import '../../generated/assets.dart';

class NoseBleedScreen extends StatelessWidget {
  const NoseBleedScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
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
              alignment: AlignmentDirectional.topCenter,
              child: Image.asset(
                Asset.noseBleedImg,
                height: context.height * 0.75,
                width: context.width * 1,
              ),
            ),

            Positioned.directional(
              textDirection: TextDirection.rtl,
              end: context.width * 0.1,
              bottom: context.height * 0.2,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: Image.asset(
                  Asset.backMenu,
                  width: context.width * 0.5,
                ),
              ),
            ),
            Positioned.directional(
              textDirection: TextDirection.rtl,
              start: context.width * 0.1,
              bottom: context.height * 0.2,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  Asset.backNoseBleed,
                  width: context.width * 0.165,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
