import 'package:flutter/material.dart';
import 'package:sa3edney/app/config/context_helpers.dart';

import '../../generated/assets.dart';
import 'nose_bleed_screen.dart';

class BleedScreen extends StatelessWidget {
  const BleedScreen({super.key});
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
                Asset.bleedImg,
                height: context.height,
                width: context.width * 1,
              ),
            ),
            Positioned.directional(
              textDirection: TextDirection.rtl,
              bottom: context.height * 0.15,
              end: context.width * 0.2,
              start: context.width * 0.2,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const NoseBleedScreen(),
                    ),
                  );
                },
                child: Image.asset(
                  Asset.noseBleed,
                  height: context.height * 0.085,
                ),
              ),
            ),
            Positioned.directional(
              textDirection: TextDirection.rtl,
              start: 24,
              bottom: 24,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  Asset.backBleed,
                  width: context.width * 0.2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
