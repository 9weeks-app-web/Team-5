import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:team5/portfolio/dropdown.dart';

class PortfolioFilter extends StatefulWidget {
  @override
  _SfaclogFilter createState() => _SfaclogFilter();
}

class _SfaclogFilter extends State<PortfolioFilter> {
  String view_type = 'assets/images/Sfaclog/One_view.svg';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 48,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              // 필터 오픈
            },
            child: Container(
              width: 34,
              height: 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1,
                  color: Color(0xFFE6E6E6),
                ),
              ),
              child: Center(
                child: SvgPicture.asset('assets/icons/filter/default.svg'),
              ),
            ),
          ),
          Container(
            width: 110,
            height: 32,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // 드롭다운 오픈
                  },
                  child: DropDown(),
                ),
                SizedBox(
                  width: 14,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (view_type == 'assets/images/Sfaclog/One_view.svg') {
                        view_type = 'assets/images/Sfaclog/Multi_view.svg';
                      } else {
                        view_type = 'assets/images/Sfaclog/One_view.svg';
                      }
                    });
                  },
                  child: Container(
                    child: SvgPicture.asset(view_type),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
