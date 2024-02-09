import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:weather_app/common/app_colors.dart';
import 'package:weather_app/common/app_font_weights.dart';

class ParameterTile extends StatelessWidget {
  const ParameterTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 80,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.darkBlue.withOpacity(.2),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/ic_humidity.svg',
          ),
          const Gap(12),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '67%',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 14,
                  fontWeight: AppFontWeights.semibold,
                ),
              ),
              Text(
                'Kelembaban',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
