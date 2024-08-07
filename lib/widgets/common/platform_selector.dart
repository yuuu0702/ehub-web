import 'package:ehub_web/color.dart';
import 'package:ehub_web/widgets/common/labeled_input.dart';
import 'package:ehub_web/widgets/common/my_toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum GamePlatform {
  pc,
  playStation,
  nintendoSwitch,
  mobile,
}

class GamePlatformSelector extends StatefulWidget {
  const GamePlatformSelector({
    super.key,
    required this.labelText,
    this.size,
    required this.onChanged,
  });

  final String labelText;
  final double? size;
  final void Function(Set<GamePlatform>) onChanged;

  @override
  State<GamePlatformSelector> createState() => _GamePlatformSelectorState();
}

class _GamePlatformSelectorState extends State<GamePlatformSelector> {
  final Set<GamePlatform> _selected = {};

  @override
  Widget build(BuildContext context) {
    return LabeledInput(
      labelText: widget.labelText,
      child: Row(
        children: [
          for (int i = 0; i < _dataList.length; i++)
            MyToggleButton(
              width: widget.size,
              height: widget.size,
              isSelected: _selected.contains(_dataList[i].platform),
              onTap: (isSelected) {
                final platform = _dataList[i].platform;
                setState(() {
                  isSelected
                      ? _selected.remove(platform)
                      : _selected.add(platform);
                });
                widget.onChanged(_selected);
              },
              child: _dataList[i].widget,
            )
        ],
      ),
    );
  }
}

class _PlatformData {
  final GamePlatform platform;
  final Widget widget;

  _PlatformData({
    required this.platform,
    required this.widget,
  });
}

final List<_PlatformData> _dataList = [
  _PlatformData(
    platform: GamePlatform.pc,
    widget: const Icon(
      Icons.desktop_windows_outlined,
      color: MyColor.foreground,
      size: 28,
    ),
  ),
  _PlatformData(
    platform: GamePlatform.playStation,
    widget: const FaIcon(
      FontAwesomeIcons.playstation,
      color: MyColor.foreground,
      size: 28,
    ),
  ),
  _PlatformData(
    platform: GamePlatform.nintendoSwitch,
    widget: SvgPicture.asset(
      'svgs/nintendo_switch_icon_136357.svg',
      colorFilter: const ColorFilter.mode(MyColor.foreground, BlendMode.srcIn),
      height: 30,
      width: 30,
    ),
  ),
  _PlatformData(
    platform: GamePlatform.mobile,
    widget: const Icon(
      Icons.phone_iphone_outlined,
      color: MyColor.foreground,
      size: 28,
    ),
  ),
];
