import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'design_config.dart';

void main() {
  runApp(const LysTingApp());
}

class LysTingApp extends StatelessWidget {
  const LysTingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LysTing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5F8FF),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E66FF),
          brightness: Brightness.light,
        ),
        fontFamily: 'sans-serif',
      ),
      home: const LandingPage(),
    );
  }
}

class _DesignTuning {
  const _DesignTuning({
    this.heroHeightDesktop = AppDesign.heroHeightDesktop,
    this.heroHeightTablet = AppDesign.heroHeightTablet,
    this.heroHeightMobile = AppDesign.heroHeightMobile,
    this.heroArtworkTop = AppDesign.heroArtworkTop,
    this.heroArtworkTopMobile = AppDesign.heroArtworkTopMobile,
    this.sunLeft = AppDesign.sunLeft,
    this.sunTop = AppDesign.sunTop,
    this.sunSize = AppDesign.sunSize,
    this.orbitCenterY = AppDesign.orbitCenterY,
    this.solutionPhoneMaxWidth = AppDesign.solutionPhoneMaxWidth,
    this.solutionPhoneGap = AppDesign.solutionPhoneGap,
    this.solutionPhoneOuterRadius = AppDesign.solutionPhoneOuterRadius,
    this.solutionPhoneInnerRadius = AppDesign.solutionPhoneInnerRadius,
    this.solutionPhoneBorderWidth = AppDesign.solutionPhoneBorderWidth,
    this.solutionPhoneShellColor = AppDesign.solutionPhoneShellColor,
    this.solutionPhoneScreenTopAlpha = AppDesign.solutionPhoneScreenTopAlpha,
    this.solutionIconSize = AppDesign.solutionIconSize,
    this.solutionIconRadius = AppDesign.solutionIconRadius,
    this.solutionTitleSize = AppDesign.solutionTitleSize,
    this.solutionTitleColor = AppDesign.solutionTitleColor,
    this.solutionSubtitleSize = AppDesign.solutionSubtitleSize,
    this.solutionBulletSize = AppDesign.solutionBulletSize,
    this.solutionBulletColor = AppDesign.solutionBulletColor,
    this.solutionLearnMoreSize = AppDesign.solutionLearnMoreSize,
    this.solutionArrowButtonSize = AppDesign.solutionArrowButtonSize,
    this.solutionArrowButtonRadius = AppDesign.solutionArrowButtonRadius,
    this.solutionArrowButtonBgAlpha = AppDesign.solutionArrowButtonBgAlpha,
    this.solutionArrowIconSize = AppDesign.solutionArrowIconSize,
  });

  final double heroHeightDesktop;
  final double heroHeightTablet;
  final double heroHeightMobile;
  final double heroArtworkTop;
  final double heroArtworkTopMobile;
  final double sunLeft;
  final double sunTop;
  final double sunSize;
  final double orbitCenterY;
  final double solutionPhoneMaxWidth;
  final double solutionPhoneGap;
  final double solutionPhoneOuterRadius;
  final double solutionPhoneInnerRadius;
  final double solutionPhoneBorderWidth;
  final Color solutionPhoneShellColor;
  final double solutionPhoneScreenTopAlpha;
  final double solutionIconSize;
  final double solutionIconRadius;
  final double solutionTitleSize;
  final Color solutionTitleColor;
  final double solutionSubtitleSize;
  final double solutionBulletSize;
  final Color solutionBulletColor;
  final double solutionLearnMoreSize;
  final double solutionArrowButtonSize;
  final double solutionArrowButtonRadius;
  final double solutionArrowButtonBgAlpha;
  final double solutionArrowIconSize;

  _DesignTuning copyWith({
    double? heroHeightDesktop,
    double? heroHeightTablet,
    double? heroHeightMobile,
    double? heroArtworkTop,
    double? heroArtworkTopMobile,
    double? sunLeft,
    double? sunTop,
    double? sunSize,
    double? orbitCenterY,
    double? solutionPhoneMaxWidth,
    double? solutionPhoneGap,
    double? solutionPhoneOuterRadius,
    double? solutionPhoneInnerRadius,
    double? solutionPhoneBorderWidth,
    Color? solutionPhoneShellColor,
    double? solutionPhoneScreenTopAlpha,
    double? solutionIconSize,
    double? solutionIconRadius,
    double? solutionTitleSize,
    Color? solutionTitleColor,
    double? solutionSubtitleSize,
    double? solutionBulletSize,
    Color? solutionBulletColor,
    double? solutionLearnMoreSize,
    double? solutionArrowButtonSize,
    double? solutionArrowButtonRadius,
    double? solutionArrowButtonBgAlpha,
    double? solutionArrowIconSize,
  }) {
    return _DesignTuning(
      heroHeightDesktop: heroHeightDesktop ?? this.heroHeightDesktop,
      heroHeightTablet: heroHeightTablet ?? this.heroHeightTablet,
      heroHeightMobile: heroHeightMobile ?? this.heroHeightMobile,
      heroArtworkTop: heroArtworkTop ?? this.heroArtworkTop,
      heroArtworkTopMobile: heroArtworkTopMobile ?? this.heroArtworkTopMobile,
      sunLeft: sunLeft ?? this.sunLeft,
      sunTop: sunTop ?? this.sunTop,
      sunSize: sunSize ?? this.sunSize,
      orbitCenterY: orbitCenterY ?? this.orbitCenterY,
      solutionPhoneMaxWidth:
          solutionPhoneMaxWidth ?? this.solutionPhoneMaxWidth,
      solutionPhoneGap: solutionPhoneGap ?? this.solutionPhoneGap,
      solutionPhoneOuterRadius:
          solutionPhoneOuterRadius ?? this.solutionPhoneOuterRadius,
      solutionPhoneInnerRadius:
          solutionPhoneInnerRadius ?? this.solutionPhoneInnerRadius,
      solutionPhoneBorderWidth:
          solutionPhoneBorderWidth ?? this.solutionPhoneBorderWidth,
      solutionPhoneShellColor:
          solutionPhoneShellColor ?? this.solutionPhoneShellColor,
      solutionPhoneScreenTopAlpha:
          solutionPhoneScreenTopAlpha ?? this.solutionPhoneScreenTopAlpha,
      solutionIconSize: solutionIconSize ?? this.solutionIconSize,
      solutionIconRadius: solutionIconRadius ?? this.solutionIconRadius,
      solutionTitleSize: solutionTitleSize ?? this.solutionTitleSize,
      solutionTitleColor: solutionTitleColor ?? this.solutionTitleColor,
      solutionSubtitleSize: solutionSubtitleSize ?? this.solutionSubtitleSize,
      solutionBulletSize: solutionBulletSize ?? this.solutionBulletSize,
      solutionBulletColor: solutionBulletColor ?? this.solutionBulletColor,
      solutionLearnMoreSize:
          solutionLearnMoreSize ?? this.solutionLearnMoreSize,
      solutionArrowButtonSize:
          solutionArrowButtonSize ?? this.solutionArrowButtonSize,
      solutionArrowButtonRadius:
          solutionArrowButtonRadius ?? this.solutionArrowButtonRadius,
      solutionArrowButtonBgAlpha:
          solutionArrowButtonBgAlpha ?? this.solutionArrowButtonBgAlpha,
      solutionArrowIconSize:
          solutionArrowIconSize ?? this.solutionArrowIconSize,
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  _DesignTuning _design = const _DesignTuning();
  bool _showDesignPanel = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFF7FAFF), Color(0xFFE8F0FF)],
          ),
        ),
        child: Stack(
          children: [
            SafeArea(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return ClipRect(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: constraints.maxWidth,
                        child: _LandingContent(
                          design: _design,
                          onCategorySelected: (category) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => FeatureDetailScreen(
                                  category: category,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            _DesignPanel(
              design: _design,
              expanded: _showDesignPanel,
              onToggle: () {
                setState(() => _showDesignPanel = !_showDesignPanel);
              },
              onReset: () {
                setState(() => _design = const _DesignTuning());
              },
              onChanged: (design) {
                setState(() => _design = design);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _LandingContent extends StatelessWidget {
  const _LandingContent({
    required this.design,
    required this.onCategorySelected,
  });

  final _DesignTuning design;
  final ValueChanged<FeatureCategory> onCategorySelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: _responsivePagePadding(context, vertical: 16),
          child: const _TopNavigation(),
        ),
        Padding(
          padding: _responsivePagePadding(context, vertical: 0),
          child: _SectionShell(
            child: Column(
              children: [
                _HeroSection(design: design),
                const SizedBox(height: AppDesign.sectionGap),
                _SolutionsSection(
                  design: design,
                  onCategorySelected: onCategorySelected,
                ),
                SizedBox(height: _bottomCardsTopGap(context)),
                const _DownloadSection(),
                SizedBox(height: _downloadStatsGap(context)),
                const _StatsSection(),
                const SizedBox(height: AppDesign.pageBottomGap),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

EdgeInsets _responsivePagePadding(
  BuildContext context, {
  required double vertical,
}) {
  final width = MediaQuery.sizeOf(context).width;
  final horizontal = width < 420
      ? AppDesign.pagePaddingMobile
      : width < 760
          ? AppDesign.pagePaddingTablet
          : AppDesign.pagePaddingDesktop;
  return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
}

double _bottomCardsTopGap(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < 640) {
    return 10;
  }
  if (width < 900) {
    return 12;
  }
  return 16;
}

double _downloadStatsGap(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < 640) {
    return 8;
  }
  if (width < 900) {
    return 10;
  }
  return 12;
}

enum FeatureCategory { iot, ecommerce, b2b }

class _FeatureCategoryContent {
  const _FeatureCategoryContent({
    required this.category,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.kicker,
    required this.summary,
    required this.heroPoints,
    required this.featureGroups,
    this.platformGroups = const [],
    this.contentSections = const [],
  });

  final FeatureCategory category;
  final IconData icon;
  final Color iconColor;
  final String title;
  final String kicker;
  final String summary;
  final List<String> heroPoints;
  final List<_FeatureGroupData> featureGroups;
  final List<_FeatureGroupData> platformGroups;
  final List<_ContentSectionData> contentSections;
}

class _FeatureGroupData {
  const _FeatureGroupData({
    required this.title,
    required this.items,
  });

  final String title;
  final List<String> items;
}

class _ContentSectionData {
  const _ContentSectionData({
    required this.icon,
    required this.title,
    required this.description,
    required this.items,
  });

  final IconData icon;
  final String title;
  final String description;
  final List<String> items;
}

const _featureCategoryContent = {
  FeatureCategory.iot: _FeatureCategoryContent(
    category: FeatureCategory.iot,
    icon: Icons.wifi_rounded,
    iconColor: Color(0xFF195FFF),
    title: 'IoT Powerful Features',
    kicker: 'Home Automation',
    summary:
        'A practical IoT platform plan for smart spaces, device onboarding, automation workflows, and future service expansion.',
    heroPoints: [
      'Smart automation for homes, shops, offices.',
      'Easy Plug & Play',
      'Mobile and web control automation workflows.',
    ],
    featureGroups: [
      _FeatureGroupData(
        title: 'Platform Foundation',
        items: [
          'Smart home, office, and shop automation base',
          'Plug-and-play smart devices and retrofit controls',
          'Mobile-first control for rooms, devices, and scenes',
        ],
      ),
      _FeatureGroupData(
        title: 'Core Experience',
        items: [
          'Live device status and basic alerts',
          'Schedules, scenes, and simple automation rules',
          'Energy usage visibility for selected devices',
        ],
      ),
      _FeatureGroupData(
        title: 'Service Layer',
        items: [
          'Installation request and setup flow',
          'Customer support and maintenance handoff',
          'Device health, history, and upgrade planning',
        ],
      ),
    ],
    platformGroups: [
      _FeatureGroupData(
        title: 'Development Phases',
        items: [
          'Phase 1: Smart home controls, plug devices, and room grouping',
          'Phase 2: Monitoring, alerts, schedules, and automation scenes',
          'Phase 3: Energy reports, service support, and device health',
          'Phase 4: Business IoT for shops, offices, rentals, and buildings',
        ],
      ),
      _FeatureGroupData(
        title: 'Expansion Areas',
        items: [
          'Security and safety automation',
          'Energy optimization and billing insights',
          'Commercial space monitoring',
          'Partner device onboarding and marketplace support',
        ],
      ),
    ],
    contentSections: [],
  ),
  FeatureCategory.ecommerce: _FeatureCategoryContent(
    category: FeatureCategory.ecommerce,
    icon: Icons.shopping_cart_outlined,
    iconColor: Color(0xFFFF7A00),
    title: 'Page Under Construction',
    kicker: 'Lysting App',
    summary: 'This page is under construction.',
    heroPoints: [],
    featureGroups: [],
  ),
  FeatureCategory.b2b: _FeatureCategoryContent(
    category: FeatureCategory.b2b,
    icon: Icons.groups_2_outlined,
    iconColor: Color(0xFF265BFF),
    title: 'Page Under Construction',
    kicker: 'Lysmart',
    summary: 'This page is under construction.',
    heroPoints: [],
    featureGroups: [],
  ),
};

_FeatureCategoryContent _contentFor(FeatureCategory category) {
  return _featureCategoryContent[category]!;
}

class _SectionShell extends StatelessWidget {
  const _SectionShell({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: AppDesign.maxContentWidth),
        child: child,
      ),
    );
  }
}

class _DesignPanel extends StatelessWidget {
  const _DesignPanel({
    required this.design,
    required this.expanded,
    required this.onToggle,
    required this.onReset,
    required this.onChanged,
  });

  final _DesignTuning design;
  final bool expanded;
  final VoidCallback onToggle;
  final VoidCallback onReset;
  final ValueChanged<_DesignTuning> onChanged;

  @override
  Widget build(BuildContext context) {
    final compact = MediaQuery.sizeOf(context).width < 640;

    return Positioned(
      right: compact ? 10 : 16,
      bottom: compact ? 8 : 16,
      child: SafeArea(
        child: Material(
          color: Colors.transparent,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 180),
            width: expanded ? (compact ? 300 : 320) : (compact ? 48 : 132),
            constraints: BoxConstraints(
              maxHeight: MediaQuery.sizeOf(context).height - 48,
            ),
            decoration: BoxDecoration(
              color: const Color(0xF7FFFFFF),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: const Color(0xFFD9E5FF)),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x260B1F52),
                  blurRadius: 24,
                  offset: Offset(0, 12),
                ),
              ],
            ),
            child:
                expanded ? _expandedPanel(context) : _collapsedButton(compact),
          ),
        ),
      ),
    );
  }

  Widget _collapsedButton(bool compact) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onToggle,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: compact ? 12 : 14,
          vertical: compact ? 10 : 12,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.tune_rounded, color: Color(0xFF1D63FF), size: 20),
            if (!compact) ...[
              const SizedBox(width: 8),
              const Text(
                'Design',
                style: TextStyle(
                  color: Color(0xFF17233F),
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _expandedPanel(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(14),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.tune_rounded,
                  color: Color(0xFF1D63FF),
                  size: 20,
                ),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    'Design controls',
                    style: TextStyle(
                      color: Color(0xFF17233F),
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                IconButton(
                  visualDensity: VisualDensity.compact,
                  tooltip: 'Reset',
                  onPressed: onReset,
                  icon: const Icon(Icons.restart_alt_rounded, size: 19),
                ),
                IconButton(
                  visualDensity: VisualDensity.compact,
                  tooltip: 'Close',
                  onPressed: onToggle,
                  icon: const Icon(Icons.close_rounded, size: 19),
                ),
              ],
            ),
            const SizedBox(height: 8),
            _PanelGroup(
              label: 'Hero',
              children: [
                _DesignSlider(
                  label: 'Hero height',
                  value: design.heroHeightDesktop,
                  min: 300,
                  max: 520,
                  onChanged: (value) {
                    onChanged(
                      design.copyWith(
                        heroHeightDesktop: value,
                        heroHeightTablet: value - 50,
                        heroHeightMobile: value - 90,
                      ),
                    );
                  },
                ),
                _DesignSlider(
                  label: 'Artwork top',
                  value: design.heroArtworkTop,
                  min: 40,
                  max: 130,
                  onChanged: (value) {
                    onChanged(
                      design.copyWith(
                        heroArtworkTop: value,
                        heroArtworkTopMobile: value - 8,
                      ),
                    );
                  },
                ),
                _DesignSlider(
                  label: 'Orbit Y',
                  value: design.orbitCenterY,
                  min: 0.35,
                  max: 0.75,
                  fractionDigits: 2,
                  onChanged: (value) {
                    onChanged(design.copyWith(orbitCenterY: value));
                  },
                ),
              ],
            ),
            _PanelGroup(
              label: 'Sun dot',
              children: [
                _DesignSlider(
                  label: 'Sun X',
                  value: design.sunLeft,
                  min: 210,
                  max: 270,
                  onChanged: (value) {
                    onChanged(design.copyWith(sunLeft: value));
                  },
                ),
                _DesignSlider(
                  label: 'Sun Y',
                  value: design.sunTop,
                  min: -8,
                  max: 24,
                  onChanged: (value) {
                    onChanged(design.copyWith(sunTop: value));
                  },
                ),
                _DesignSlider(
                  label: 'Sun size',
                  value: design.sunSize,
                  min: 10,
                  max: 28,
                  onChanged: (value) {
                    onChanged(design.copyWith(sunSize: value));
                  },
                ),
              ],
            ),
            _PanelGroup(
              label: 'Phone cards',
              children: [
                _DesignSlider(
                  label: 'Phone width',
                  value: design.solutionPhoneMaxWidth,
                  min: 210,
                  max: 340,
                  onChanged: (value) {
                    onChanged(design.copyWith(solutionPhoneMaxWidth: value));
                  },
                ),
                _DesignSlider(
                  label: 'Phone gap',
                  value: design.solutionPhoneGap,
                  min: 0,
                  max: 32,
                  onChanged: (value) {
                    onChanged(design.copyWith(solutionPhoneGap: value));
                  },
                ),
                _DesignSlider(
                  label: 'Outer radius',
                  value: design.solutionPhoneOuterRadius,
                  min: 18,
                  max: 56,
                  onChanged: (value) {
                    onChanged(
                      design.copyWith(solutionPhoneOuterRadius: value),
                    );
                  },
                ),
                _DesignSlider(
                  label: 'Screen radius',
                  value: design.solutionPhoneInnerRadius,
                  min: 14,
                  max: 44,
                  onChanged: (value) {
                    onChanged(
                      design.copyWith(solutionPhoneInnerRadius: value),
                    );
                  },
                ),
                _DesignSlider(
                  label: 'Border width',
                  value: design.solutionPhoneBorderWidth,
                  min: 0,
                  max: 10,
                  onChanged: (value) {
                    onChanged(
                      design.copyWith(solutionPhoneBorderWidth: value),
                    );
                  },
                ),
                _DesignSlider(
                  label: 'Top tint',
                  value: design.solutionPhoneScreenTopAlpha,
                  min: 0,
                  max: 0.28,
                  fractionDigits: 2,
                  onChanged: (value) {
                    onChanged(
                      design.copyWith(solutionPhoneScreenTopAlpha: value),
                    );
                  },
                ),
                _DesignColorChips(
                  label: 'Shell color',
                  value: design.solutionPhoneShellColor,
                  colors: const [
                    Color(0xFF111827),
                    Color(0xFF0B1F52),
                    Color(0xFF213047),
                    Color(0xFFFFFFFF),
                  ],
                  onChanged: (value) {
                    onChanged(design.copyWith(solutionPhoneShellColor: value));
                  },
                ),
              ],
            ),
            _PanelGroup(
              label: 'Phone content',
              children: [
                _DesignSlider(
                  label: 'Icon size',
                  value: design.solutionIconSize,
                  min: 42,
                  max: 76,
                  onChanged: (value) {
                    onChanged(design.copyWith(solutionIconSize: value));
                  },
                ),
                _DesignSlider(
                  label: 'Icon radius',
                  value: design.solutionIconRadius,
                  min: 8,
                  max: 28,
                  onChanged: (value) {
                    onChanged(design.copyWith(solutionIconRadius: value));
                  },
                ),
                _DesignSlider(
                  label: 'Title size',
                  value: design.solutionTitleSize,
                  min: 18,
                  max: 30,
                  onChanged: (value) {
                    onChanged(design.copyWith(solutionTitleSize: value));
                  },
                ),
                _DesignColorChips(
                  label: 'Title color',
                  value: design.solutionTitleColor,
                  colors: const [
                    Color(0xFF17233F),
                    Color(0xFF0B1F52),
                    Color(0xFF111827),
                    Color(0xFF1D63FF),
                  ],
                  onChanged: (value) {
                    onChanged(design.copyWith(solutionTitleColor: value));
                  },
                ),
                _DesignSlider(
                  label: 'Subtitle size',
                  value: design.solutionSubtitleSize,
                  min: 11,
                  max: 20,
                  onChanged: (value) {
                    onChanged(design.copyWith(solutionSubtitleSize: value));
                  },
                ),
                _DesignSlider(
                  label: 'Bullet size',
                  value: design.solutionBulletSize,
                  min: 11,
                  max: 18,
                  onChanged: (value) {
                    onChanged(design.copyWith(solutionBulletSize: value));
                  },
                ),
                _DesignColorChips(
                  label: 'Bullet color',
                  value: design.solutionBulletColor,
                  colors: const [
                    Color(0xFF34415D),
                    Color(0xFF64708B),
                    Color(0xFF17233F),
                    Color(0xFF1D63FF),
                  ],
                  onChanged: (value) {
                    onChanged(design.copyWith(solutionBulletColor: value));
                  },
                ),
              ],
            ),
            _PanelGroup(
              label: 'Learn more button',
              children: [
                _DesignSlider(
                  label: 'Text size',
                  value: design.solutionLearnMoreSize,
                  min: 11,
                  max: 18,
                  onChanged: (value) {
                    onChanged(design.copyWith(solutionLearnMoreSize: value));
                  },
                ),
                _DesignSlider(
                  label: 'Pill size',
                  value: design.solutionArrowButtonSize,
                  min: 28,
                  max: 52,
                  onChanged: (value) {
                    onChanged(design.copyWith(solutionArrowButtonSize: value));
                  },
                ),
                _DesignSlider(
                  label: 'Pill radius',
                  value: design.solutionArrowButtonRadius,
                  min: 6,
                  max: 999,
                  onChanged: (value) {
                    onChanged(
                      design.copyWith(solutionArrowButtonRadius: value),
                    );
                  },
                ),
                _DesignSlider(
                  label: 'Pill color alpha',
                  value: design.solutionArrowButtonBgAlpha,
                  min: 0,
                  max: 0.3,
                  fractionDigits: 2,
                  onChanged: (value) {
                    onChanged(
                      design.copyWith(solutionArrowButtonBgAlpha: value),
                    );
                  },
                ),
                _DesignSlider(
                  label: 'Icon size',
                  value: design.solutionArrowIconSize,
                  min: 14,
                  max: 28,
                  onChanged: (value) {
                    onChanged(design.copyWith(solutionArrowIconSize: value));
                  },
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () async {
                  await Clipboard.setData(
                    ClipboardData(text: _configSnippet(design)),
                  );
                  if (!context.mounted) return;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Design values copied'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                icon: const Icon(Icons.content_copy_rounded, size: 18),
                label: const Text('Copy values'),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Paste copied values into chat and say "save these values".',
              style: TextStyle(
                color: Color(0xFF64708B),
                fontSize: 12,
                height: 1.35,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _configSnippet(_DesignTuning design) {
    String fixed(double value) => value.toStringAsFixed(2);
    String colorValue(Color color) {
      int channel(double value) => (value * 255).round().clamp(0, 255);
      final value = (channel(color.a) << 24) |
          (channel(color.r) << 16) |
          (channel(color.g) << 8) |
          channel(color.b);
      final hex = value.toRadixString(16).padLeft(8, '0').toUpperCase();
      return 'Color(0x$hex)';
    }

    return '''
static const heroHeightDesktop = ${fixed(design.heroHeightDesktop)};
static const heroHeightTablet = ${fixed(design.heroHeightTablet)};
static const heroHeightMobile = ${fixed(design.heroHeightMobile)};
static const heroArtworkTop = ${fixed(design.heroArtworkTop)};
static const heroArtworkTopMobile = ${fixed(design.heroArtworkTopMobile)};
static const sunLeft = ${fixed(design.sunLeft)};
static const sunTop = ${fixed(design.sunTop)};
static const sunSize = ${fixed(design.sunSize)};
static const orbitCenterY = ${fixed(design.orbitCenterY)};
static const solutionPhoneMaxWidth = ${fixed(design.solutionPhoneMaxWidth)};
static const solutionPhoneGap = ${fixed(design.solutionPhoneGap)};
static const solutionPhoneOuterRadius = ${fixed(design.solutionPhoneOuterRadius)};
static const solutionPhoneInnerRadius = ${fixed(design.solutionPhoneInnerRadius)};
static const solutionPhoneBorderWidth = ${fixed(design.solutionPhoneBorderWidth)};
static const solutionPhoneShellColor = ${colorValue(design.solutionPhoneShellColor)};
static const solutionPhoneScreenTopAlpha = ${fixed(design.solutionPhoneScreenTopAlpha)};
static const solutionIconSize = ${fixed(design.solutionIconSize)};
static const solutionIconRadius = ${fixed(design.solutionIconRadius)};
static const solutionTitleSize = ${fixed(design.solutionTitleSize)};
static const solutionTitleColor = ${colorValue(design.solutionTitleColor)};
static const solutionSubtitleSize = ${fixed(design.solutionSubtitleSize)};
static const solutionBulletSize = ${fixed(design.solutionBulletSize)};
static const solutionBulletColor = ${colorValue(design.solutionBulletColor)};
static const solutionLearnMoreSize = ${fixed(design.solutionLearnMoreSize)};
static const solutionArrowButtonSize = ${fixed(design.solutionArrowButtonSize)};
static const solutionArrowButtonRadius = ${fixed(design.solutionArrowButtonRadius)};
static const solutionArrowButtonBgAlpha = ${fixed(design.solutionArrowButtonBgAlpha)};
static const solutionArrowIconSize = ${fixed(design.solutionArrowIconSize)};
''';
  }
}

class _PanelGroup extends StatelessWidget {
  const _PanelGroup({required this.label, required this.children});

  final String label;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFF17233F),
              fontSize: 12,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 4),
          ...children,
        ],
      ),
    );
  }
}

class _DesignSlider extends StatelessWidget {
  const _DesignSlider({
    required this.label,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    this.fractionDigits = 0,
  });

  final String label;
  final double value;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;
  final int fractionDigits;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  label,
                  style: const TextStyle(
                    color: Color(0xFF34415D),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Text(
                value.toStringAsFixed(fractionDigits),
                style: const TextStyle(
                  color: Color(0xFF1D63FF),
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 3,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 7),
            ),
            child: Slider(
              value: value.clamp(min, max),
              min: min,
              max: max,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}

class _DesignColorChips extends StatelessWidget {
  const _DesignColorChips({
    required this.label,
    required this.value,
    required this.colors,
    required this.onChanged,
  });

  final String label;
  final Color value;
  final List<Color> colors;
  final ValueChanged<Color> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                color: Color(0xFF34415D),
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Wrap(
            spacing: 7,
            children: [
              for (final color in colors)
                InkWell(
                  customBorder: const CircleBorder(),
                  onTap: () => onChanged(color),
                  child: Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: color == value
                            ? const Color(0xFF1D63FF)
                            : const Color(0xFFD9E5FF),
                        width: color == value ? 3 : 1,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TopNavigation extends StatelessWidget {
  const _TopNavigation();

  @override
  Widget build(BuildContext context) {
    return _SectionShell(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final compact = constraints.maxWidth < AppDesign.navCompactBreakpoint;

          return Container(
            padding: EdgeInsets.symmetric(
              horizontal: compact
                  ? AppDesign.navCompactPaddingX
                  : AppDesign.navPaddingX,
              vertical: compact
                  ? AppDesign.navCompactPaddingY
                  : AppDesign.navPaddingY,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.74),
              borderRadius: BorderRadius.circular(
                compact ? AppDesign.navCompactRadius : AppDesign.navRadius,
              ),
              border: Border.all(color: Colors.white.withValues(alpha: 0.88)),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x120B1F52),
                  blurRadius: 28,
                  offset: Offset(0, 14),
                ),
              ],
            ),
            child: compact
                ? Row(
                    children: [
                      const Expanded(child: _BrandLockup()),
                      const _PrimaryButton(label: 'Contact Us'),
                    ],
                  )
                : Row(
                    children: [
                      const _BrandLockup(),
                      const Spacer(),
                      const _PrimaryButton(label: 'Contact Us'),
                    ],
                  ),
          );
        },
      ),
    );
  }
}

class _BrandLockup extends StatelessWidget {
  const _BrandLockup();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: AppDesign.brandIconSize,
          height: AppDesign.brandIconSize,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDesign.brandIconRadius),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF2E7BFF), Color(0xFF0A3DAD)],
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x331D63FF),
                blurRadius: 16,
                offset: Offset(0, 8),
              ),
            ],
          ),
          child: const Icon(
            Icons.menu_rounded,
            color: Colors.white,
            size: AppDesign.brandIconGlyphSize,
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          'LysTing',
          style: TextStyle(
            fontSize: AppDesign.brandTitleSize,
            fontWeight: FontWeight.w900,
            letterSpacing: 0,
            color: AppDesign.brandTitleColor,
            shadows: [
              Shadow(
                color: Color(0x22000000),
                blurRadius: 4,
                offset: Offset(0, 1),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PrimaryButton extends StatelessWidget {
  const _PrimaryButton({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDesign.primaryButtonRadius),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: AppDesign.primaryButtonGradient,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x401D63FF),
            blurRadius: 18,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDesign.primaryButtonPaddingX,
          vertical: AppDesign.primaryButtonPaddingY,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: AppDesign.primaryButtonTextSize,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HeroSection extends StatelessWidget {
  const _HeroSection({required this.design});

  final _DesignTuning design;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final compact = constraints.maxWidth < AppDesign.heroCompactBreakpoint;
        final radius =
            compact ? AppDesign.heroMobileRadius : AppDesign.heroRadius;
        final heroHeight = compact
            ? design.heroHeightMobile
            : constraints.maxWidth < AppDesign.heroTabletBreakpoint
                ? design.heroHeightTablet
                : design.heroHeightDesktop;
        return Container(
          padding: EdgeInsets.fromLTRB(
            compact ? 18 : 34,
            compact ? 12 : 18,
            compact ? 18 : 34,
            compact ? 14 : 18,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF08112A), Color(0xFF071D4B), Color(0xFF050B1B)],
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x3204132E),
                blurRadius: 36,
                offset: Offset(0, 22),
              ),
            ],
          ),
          child: SizedBox(
            height: heroHeight,
            child: Stack(
              children: [
                Positioned.fill(
                  top: compact
                      ? design.heroArtworkTopMobile
                      : design.heroArtworkTop,
                  child: _HeroArtwork(design: design),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: _HeroCopy(design: design),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _HeroCopy extends StatelessWidget {
  const _HeroCopy({required this.design});

  final _DesignTuning design;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _BigWordmark(design: design),
          const SizedBox(height: 10),
          const _HeroSunTitle(),
        ],
      ),
    );
  }
}

class _BigWordmark extends StatelessWidget {
  const _BigWordmark({required this.design});

  final _DesignTuning design;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final available = constraints.maxWidth;
        final markWidth = available.clamp(
          AppDesign.wordmarkMinWidth,
          AppDesign.wordmarkMaxWidth,
        );
        final scale = markWidth / AppDesign.wordmarkMaxWidth;

        return SizedBox(
          width: markWidth,
          height: AppDesign.wordmarkBaseHeight * scale,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Center(
                child: Text(
                  'LysTıng',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: AppDesign.wordmarkBaseFontSize * scale,
                    fontWeight: FontWeight.w900,
                    height: 0.95,
                    color: AppDesign.wordmarkColor,
                    shadows: const [
                      Shadow(
                        color: Color(0x77000000),
                        blurRadius: 18,
                        offset: Offset(0, 5),
                      ),
                      Shadow(
                        color: Color(0x55FFFFFF),
                        blurRadius: 10,
                        offset: Offset(0, -1),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: design.sunLeft * scale,
                top: design.sunTop * scale,
                child: Icon(
                  Icons.wb_sunny_rounded,
                  size: design.sunSize * scale,
                  color: AppDesign.sunColor,
                  shadows: const [
                    Shadow(
                      color: Color(0x66FFB938),
                      blurRadius: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _HeroSunTitle extends StatelessWidget {
  const _HeroSunTitle();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: AppDesign.heroSubtitleWidth,
        child: ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFFFE8B8), Color(0xFFF0C56D), Color(0xFFD89A3D)],
          ).createShader(bounds),
          child: const Text(
            'Your local solution hub',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: AppDesign.heroSubtitleFontSize,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              letterSpacing: AppDesign.heroSubtitleLetterSpacing,
              height: 1.0,
              shadows: [
                Shadow(
                  color: Color(0x77000000),
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _HeroArtwork extends StatelessWidget {
  const _HeroArtwork({required this.design});

  final _DesignTuning design;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, _) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: FittedBox(
              fit: BoxFit.contain,
              child: SizedBox(
                width: AppDesign.orbitArtworkWidth,
                height: AppDesign.orbitArtworkHeight,
                child: Stack(
                  children: [
                    Positioned.fill(
                      top: AppDesign.orbitGlowTop,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: RadialGradient(
                            center: const Alignment(0.0, -0.1),
                            radius: 1.0,
                            colors: [
                              const Color(0xFF10388E).withValues(alpha: 0.32),
                              const Color(0xFF081227).withValues(alpha: 0.0),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: CustomPaint(
                        painter: _OrbitPainter(centerY: design.orbitCenterY),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _OrbitPainter extends CustomPainter {
  const _OrbitPainter({required this.centerY});

  final double centerY;

  @override
  void paint(Canvas canvas, Size size) {
    final gridPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..color = const Color(0xFF1E7FFF).withValues(alpha: 0.2);

    final glowPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.6
      ..color = const Color(0xFF3AA1FF).withValues(alpha: 0.18);

    final center = Offset(size.width * 0.5, size.height * centerY);
    for (var i = 0; i < 4; i++) {
      canvas.drawOval(
        Rect.fromCenter(
          center: center,
          width: size.width * (0.92 + i * 0.24),
          height: size.height * (0.18 + i * 0.1),
        ),
        i.isEven ? glowPaint : gridPaint,
      );
    }

    final path = Path();
    path.moveTo(size.width * 0.0, size.height * AppDesign.orbitPathStartY);
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height * AppDesign.orbitPathControlY,
      size.width,
      size.height * AppDesign.orbitPathEndY,
    );
    canvas.drawPath(path, gridPaint);
  }

  @override
  bool shouldRepaint(covariant _OrbitPainter oldDelegate) {
    return oldDelegate.centerY != centerY;
  }
}

class _SolutionsSection extends StatelessWidget {
  const _SolutionsSection({
    required this.design,
    required this.onCategorySelected,
  });

  final _DesignTuning design;
  final ValueChanged<FeatureCategory> onCategorySelected;

  @override
  Widget build(BuildContext context) {
    final items = [
      _SolutionCardData(
        category: FeatureCategory.iot,
        icon: Icons.wifi_rounded,
        iconBg: const Color(0xFF1C5EFF),
        title: 'LysTing Smart IoT',
        subtitle: 'Smart automation for connected spaces',
        bullets: [
          'Plug & Play Devices',
          'Real-time Monitoring',
          'Energy Dashboard',
        ],
        accent: const Color(0xFF0E5EFF),
        visual: const _DeviceVisual(),
      ),
      _SolutionCardData(
        category: FeatureCategory.ecommerce,
        icon: Icons.shopping_cart_outlined,
        iconBg: const Color(0xFFFF8B1E),
        title: 'Lysting App',
        subtitle: 'Your local solution hub driven by customer reviews',
        bullets: [
          'Food',
          'Products',
          'Services',
          'All A to Z Service',
        ],
        accent: const Color(0xFFFF7A00),
        visual: const _CartVisual(),
      ),
      _SolutionCardData(
        category: FeatureCategory.b2b,
        icon: Icons.groups_2_outlined,
        iconBg: const Color(0xFF275AE5),
        title: 'Lysmart',
        subtitle: 'Pure B2B',
        bullets: [
          'Digital Showroom',
          'AI A to Z Service',
          'Pure B2B',
          'For Wholesalers',
        ],
        accent: const Color(0xFF2B5BFF),
        visual: const _TowerVisual(),
      ),
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        const columns = 3;

        return Wrap(
          alignment: WrapAlignment.center,
          spacing: design.solutionPhoneGap,
          runSpacing: AppDesign.solutionPhoneRunGap,
          children: items
              .map(
                (item) => SizedBox(
                  width: _gridWidth(
                    constraints.maxWidth,
                    columns,
                    design.solutionPhoneGap,
                  ),
                  child: _SolutionCard(
                    data: item,
                    design: design,
                    onTap: () => onCategorySelected(item.category),
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}

double _gridWidth(double totalWidth, int columns, double gap) {
  if (columns <= 1) return totalWidth;
  return (totalWidth - gap * (columns - 1)) / columns;
}

class _SolutionCardData {
  const _SolutionCardData({
    required this.category,
    required this.icon,
    required this.iconBg,
    required this.title,
    this.subtitle,
    required this.bullets,
    required this.accent,
    required this.visual,
  });

  final FeatureCategory category;
  final IconData icon;
  final Color iconBg;
  final String title;
  final String? subtitle;
  final List<String> bullets;
  final Color accent;
  final Widget visual;
}

class _SolutionCard extends StatelessWidget {
  const _SolutionCard({
    required this.data,
    required this.design,
    required this.onTap,
  });

  final _SolutionCardData data;
  final _DesignTuning design;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final scale = (constraints.maxWidth / design.solutionPhoneMaxWidth)
            .clamp(0.5, 1.0);

        return Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: design.solutionPhoneMaxWidth),
            child: AspectRatio(
              aspectRatio: AppDesign.solutionPhoneAspectRatio,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(
                    design.solutionPhoneOuterRadius * scale,
                  ),
                  onTap: onTap,
                  child: Ink(
                    padding: AppDesign.solutionPhonePadding * scale,
                    decoration: BoxDecoration(
                      color: design.solutionPhoneShellColor,
                      borderRadius: BorderRadius.circular(
                        design.solutionPhoneOuterRadius * scale,
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: design.solutionPhoneBorderWidth * scale,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: data.accent.withValues(alpha: 0.18),
                          blurRadius: 30 * scale,
                          offset: Offset(0, 18 * scale),
                        ),
                        BoxShadow(
                          color: const Color(0x120E2B73),
                          blurRadius: 20 * scale,
                          offset: Offset(0, 8 * scale),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        design.solutionPhoneInnerRadius * scale,
                      ),
                      child: DecoratedBox(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFFFFFFFF), Color(0xFFF4F8FF)],
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              right: 0,
                              top: 0,
                              child: Container(
                                height:
                                    AppDesign.solutionPhoneStatusHeight * scale,
                                decoration: BoxDecoration(
                                  color: data.iconBg.withValues(
                                    alpha: design.solutionPhoneScreenTopAlpha,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 8 * scale,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: Container(
                                  width: AppDesign.solutionPhoneSpeakerWidth *
                                      scale,
                                  height: AppDesign.solutionPhoneSpeakerHeight *
                                      scale,
                                  decoration: BoxDecoration(
                                    color: design.solutionPhoneShellColor
                                        .withValues(
                                      alpha: 0.18,
                                    ),
                                    borderRadius: BorderRadius.circular(999),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  AppDesign.solutionPhoneContentPadding * scale,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: design.solutionIconSize * scale,
                                    height: design.solutionIconSize * scale,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          data.iconBg,
                                          data.iconBg.withValues(alpha: 0.72),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        design.solutionIconRadius * scale,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: data.iconBg
                                              .withValues(alpha: 0.24),
                                          blurRadius: 18 * scale,
                                          offset: Offset(0, 8 * scale),
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      data.icon,
                                      color: Colors.white,
                                      size: 23 * scale,
                                    ),
                                  ),
                                  SizedBox(height: 12 * scale),
                                  Text(
                                    data.title,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: design.solutionTitleColor,
                                      fontSize: data.title.length > 12
                                          ? (design.solutionTitleSize - 2) *
                                              scale
                                          : design.solutionTitleSize * scale,
                                      fontWeight: FontWeight.w900,
                                      height: 1.16,
                                    ),
                                  ),
                                  if (data.subtitle != null) ...[
                                    SizedBox(height: 4 * scale),
                                    Text(
                                      data.subtitle!,
                                      maxLines: scale < 0.7 ? 2 : 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: data.accent,
                                        fontSize: data.subtitle!.length > 18
                                            ? (design.solutionSubtitleSize -
                                                    2) *
                                                scale
                                            : design.solutionSubtitleSize *
                                                scale,
                                        fontWeight: FontWeight.w700,
                                        height: 1.22,
                                      ),
                                    ),
                                  ],
                                  SizedBox(height: 7 * scale),
                                  ...data.bullets.map(
                                    (bullet) => Padding(
                                      padding:
                                          EdgeInsets.only(bottom: 5 * scale),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 6 * scale,
                                            height: 6 * scale,
                                            margin:
                                                EdgeInsets.only(top: 6 * scale),
                                            decoration: BoxDecoration(
                                              color: data.accent,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          SizedBox(width: 8 * scale),
                                          Expanded(
                                            child: Text(
                                              bullet,
                                              maxLines: scale < 0.7 ? 1 : 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                color:
                                                    design.solutionBulletColor,
                                                fontSize:
                                                    design.solutionBulletSize *
                                                        scale,
                                                height: 1.25,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Learn More',
                                          style: TextStyle(
                                            color: data.accent,
                                            fontSize:
                                                design.solutionLearnMoreSize *
                                                    scale,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: design.solutionArrowButtonSize *
                                            scale,
                                        height: design.solutionArrowButtonSize *
                                            scale,
                                        decoration: BoxDecoration(
                                          color: data.accent.withValues(
                                            alpha: design
                                                .solutionArrowButtonBgAlpha,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            design.solutionArrowButtonRadius *
                                                scale,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.arrow_forward_rounded,
                                          color: data.accent,
                                          size: design.solutionArrowIconSize *
                                              scale,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _DeviceVisual extends StatelessWidget {
  const _DeviceVisual();

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 36,
            height: 54,
            decoration: BoxDecoration(
              color: const Color(0xFFF6F8FF),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: const Color(0xFFDDE7FF)),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            width: 46,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFFF6F8FF),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFDDE7FF)),
            ),
          ),
        ),
      ],
    );
  }
}

class _CartVisual extends StatelessWidget {
  const _CartVisual();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68,
      height: 76,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              _CartDot(color: Color(0xFFFF5A5A)),
              SizedBox(width: 4),
              _CartDot(color: Color(0xFFFFD24D)),
              SizedBox(width: 4),
              _CartDot(color: Color(0xFF63D471)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              _CartDot(color: Color(0xFF5AA5FF)),
              SizedBox(width: 4),
              _CartDot(color: Color(0xFFFF9E39)),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Transform.rotate(
              angle: -0.1,
              child: const Icon(
                Icons.shopping_cart_rounded,
                size: 36,
                color: Color(0xFFFF9E39),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CartDot extends StatelessWidget {
  const _CartDot({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}

class _TowerVisual extends StatelessWidget {
  const _TowerVisual();

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()..rotateZ(-0.08),
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            colors: [Color(0xFF65A8FF), Color(0xFF2B5BFF)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: List.generate(
              3,
              (index) => Container(
                margin: EdgeInsets.only(bottom: index == 2 ? 0 : 6),
                height: 14,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white.withValues(alpha: 0.24),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FeatureDetailScreen extends StatefulWidget {
  const FeatureDetailScreen({super.key, required this.category});

  final FeatureCategory category;

  @override
  State<FeatureDetailScreen> createState() => _FeatureDetailScreenState();
}

class _FeatureDetailScreenState extends State<FeatureDetailScreen> {
  late FeatureCategory _selectedCategory;
  final ScrollController _contentScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _selectedCategory = widget.category;
  }

  @override
  void dispose() {
    _contentScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final content = _contentFor(_selectedCategory);
    final narrow = MediaQuery.sizeOf(context).width < 430;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFF7FAFF), Color(0xFFE8F0FF)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: _responsivePagePadding(
                  context,
                  vertical: narrow ? 10 : 16,
                ),
                child: _SectionShell(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _DetailTopBar(content: content),
                      SizedBox(height: narrow ? 10 : 18),
                      _CategoryDock(
                        selectedCategory: _selectedCategory,
                        onSelected: (category) {
                          if (category == _selectedCategory) {
                            Navigator.of(context).pop();
                            return;
                          }
                          setState(() => _selectedCategory = category);
                          _contentScrollController.jumpTo(0);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: _contentScrollController,
                  primary: false,
                  padding: _responsivePagePadding(
                    context,
                    vertical: 0,
                  ),
                  child: _SectionShell(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 280),
                          switchInCurve: Curves.easeOutCubic,
                          switchOutCurve: Curves.easeInCubic,
                          transitionBuilder: (child, animation) {
                            final offset = Tween<Offset>(
                              begin: const Offset(0.035, 0),
                              end: Offset.zero,
                            ).animate(animation);
                            return FadeTransition(
                              opacity: animation,
                              child: SlideTransition(
                                position: offset,
                                child: child,
                              ),
                            );
                          },
                          child: _DetailCategoryBody(
                            key: ValueKey(content.category),
                            content: content,
                          ),
                        ),
                        const SizedBox(height: AppDesign.pageBottomGap),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DetailTopBar extends StatelessWidget {
  const _DetailTopBar({required this.content});

  final _FeatureCategoryContent content;

  @override
  Widget build(BuildContext context) {
    final narrow = MediaQuery.sizeOf(context).width < 430;
    final title = content.category == FeatureCategory.iot
        ? 'LysTing Smart IoT'
        : content.kicker;
    final icon = content.category == FeatureCategory.iot
        ? Icons.settings_suggest_rounded
        : content.icon;
    return Row(
      children: [
        IconButton.filledTonal(
          tooltip: 'Back',
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        SizedBox(width: narrow ? 8 : 12),
        Container(
          width: narrow ? 38 : 42,
          height: narrow ? 38 : 42,
          decoration: BoxDecoration(
            color: content.iconColor.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(narrow ? 13 : 14),
          ),
          child: Icon(icon, color: content.iconColor, size: narrow ? 22 : 24),
        ),
        SizedBox(width: narrow ? 10 : 12),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              color: Color(0xFF17233F),
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    );
  }
}

class _CategoryDock extends StatelessWidget {
  const _CategoryDock({
    required this.selectedCategory,
    required this.onSelected,
  });

  final FeatureCategory selectedCategory;
  final ValueChanged<FeatureCategory> onSelected;

  @override
  Widget build(BuildContext context) {
    const categories = [
      FeatureCategory.iot,
      FeatureCategory.ecommerce,
      FeatureCategory.b2b,
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        final compact = constraints.maxWidth < 620;
        final narrow = constraints.maxWidth < 390;
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: narrow
                ? 6
                : compact
                    ? 8
                    : 14,
            vertical: narrow
                ? 6
                : compact
                    ? 8
                    : 10,
          ),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.72),
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.white.withValues(alpha: 0.9)),
            boxShadow: const [
              BoxShadow(
                color: Color(0x100B1F52),
                blurRadius: 18,
                offset: Offset(0, 8),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final category in categories) ...[
                Expanded(
                  child: Center(
                    child: _DockPhoneButton(
                      content: _contentFor(category),
                      selected: selectedCategory == category,
                      compact: compact,
                      narrow: narrow,
                      onTap: () => onSelected(category),
                    ),
                  ),
                ),
                if (category != categories.last)
                  SizedBox(
                      width: narrow
                          ? 4
                          : compact
                              ? 6
                              : 12),
              ],
            ],
          ),
        );
      },
    );
  }
}

class _DockPhoneButton extends StatelessWidget {
  const _DockPhoneButton({
    required this.content,
    required this.selected,
    required this.compact,
    required this.narrow,
    required this.onTap,
  });

  final _FeatureCategoryContent content;
  final bool selected;
  final bool compact;
  final bool narrow;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      selected: selected,
      label: content.kicker,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onTap,
          child: AnimatedScale(
            duration: const Duration(milliseconds: 220),
            curve: Curves.easeOutCubic,
            scale: selected ? 1.02 : 1,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 220),
              curve: Curves.easeOutCubic,
              width: narrow
                  ? 64
                  : compact
                      ? 66
                      : 86,
              padding: EdgeInsets.fromLTRB(
                narrow
                    ? 4
                    : compact
                        ? 5
                        : 6,
                narrow
                    ? 5
                    : compact
                        ? 6
                        : 7,
                narrow
                    ? 4
                    : compact
                        ? 5
                        : 6,
                narrow
                    ? 4
                    : compact
                        ? 5
                        : 6,
              ),
              decoration: BoxDecoration(
                color: selected
                    ? content.iconColor.withValues(alpha: 0.92)
                    : const Color(0xFF111827),
                borderRadius: BorderRadius.circular(narrow
                    ? 16
                    : compact
                        ? 18
                        : 22),
                border: Border.all(
                  color: selected
                      ? content.iconColor.withValues(alpha: 0.5)
                      : Colors.white,
                  width: selected ? 3 : 2.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: content.iconColor.withValues(
                      alpha: selected ? 0.18 : 0.1,
                    ),
                    blurRadius: selected ? 14 : 10,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: AspectRatio(
                aspectRatio: 0.64,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(compact ? 17 : 21),
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFFFFFFFF), Color(0xFFF4F8FF)],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                        narrow
                            ? 5
                            : compact
                                ? 6
                                : 7,
                        narrow
                            ? 7
                            : compact
                                ? 8
                                : 9,
                        narrow
                            ? 5
                            : compact
                                ? 6
                                : 7,
                        narrow
                            ? 5
                            : compact
                                ? 6
                                : 7,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              width: compact ? 26 : 34,
                              height: narrow
                                  ? 2.2
                                  : compact
                                      ? 2.5
                                      : 3,
                              decoration: BoxDecoration(
                                color: const Color(0xFFCBD4E8),
                                borderRadius: BorderRadius.circular(999),
                              ),
                            ),
                          ),
                          SizedBox(
                              height: narrow
                                  ? 6
                                  : compact
                                      ? 7
                                      : 8),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: narrow
                                    ? 18
                                    : compact
                                        ? 20
                                        : 24,
                                height: narrow
                                    ? 18
                                    : compact
                                        ? 20
                                        : 24,
                                decoration: BoxDecoration(
                                  color: content.iconColor,
                                  borderRadius: BorderRadius.circular(9),
                                  boxShadow: [
                                    BoxShadow(
                                      color: content.iconColor.withValues(
                                        alpha: 0.24,
                                      ),
                                      blurRadius: 12,
                                      offset: const Offset(0, 5),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  content.icon,
                                  color: Colors.white,
                                  size: narrow
                                      ? 11
                                      : compact
                                          ? 12
                                          : 14,
                                ),
                              ),
                              const Spacer(),
                              AnimatedOpacity(
                                duration: const Duration(milliseconds: 180),
                                opacity: selected ? 1 : 0,
                                child: Icon(
                                  Icons.check_circle_rounded,
                                  color: content.iconColor,
                                  size: narrow
                                      ? 11
                                      : compact
                                          ? 12
                                          : 14,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            content.kicker,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: const Color(0xFF17233F),
                              fontSize: narrow
                                  ? 7.2
                                  : compact
                                      ? 8.5
                                      : 9.5,
                              fontWeight: FontWeight.w900,
                              height: 1.08,
                              letterSpacing: 0,
                            ),
                          ),
                          SizedBox(height: narrow ? 1 : 2),
                          Text(
                            _dockSubtitle(content.category),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: content.iconColor,
                              fontSize: narrow
                                  ? 6.8
                                  : compact
                                      ? 7.5
                                      : 8.5,
                              fontWeight: FontWeight.w800,
                              height: 1.1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

String _dockSubtitle(FeatureCategory category) {
  return switch (category) {
    FeatureCategory.iot => 'Smart IoT',
    FeatureCategory.ecommerce => 'Local hub',
    FeatureCategory.b2b => 'Pure B2B',
  };
}

class _DetailCategoryBody extends StatelessWidget {
  const _DetailCategoryBody({super.key, required this.content});

  final _FeatureCategoryContent content;

  @override
  Widget build(BuildContext context) {
    final narrow = MediaQuery.sizeOf(context).width < 430;
    if (content.category == FeatureCategory.ecommerce ||
        content.category == FeatureCategory.b2b) {
      return _UnderConstructionPanel(color: content.iconColor);
    }

    return Column(
      children: [
        _DetailHero(content: content),
        SizedBox(height: narrow ? 8 : 14),
        if (content.category == FeatureCategory.iot)
          _AutomationCarousel(color: content.iconColor)
        else
          _DetailFeatureGrid(content: content),
        if (content.contentSections.isNotEmpty) ...[
          const SizedBox(height: 24),
          _DetailContentSections(content: content),
        ],
      ],
    );
  }
}

class _UnderConstructionPanel extends StatelessWidget {
  const _UnderConstructionPanel({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final compact = constraints.maxWidth < 560;
        return Container(
          constraints: BoxConstraints(
            minHeight: compact ? 420 : 560,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFEAF2FF).withValues(alpha: 0.72),
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.white.withValues(alpha: 0.72)),
          ),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 430),
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: compact ? 18 : 24,
                  vertical: 32,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: compact ? 22 : 30,
                  vertical: compact ? 24 : 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.92),
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(
                    color: color.withValues(alpha: 0.18),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF183A72).withValues(alpha: 0.12),
                      blurRadius: 28,
                      offset: const Offset(0, 16),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: compact ? 52 : 58,
                      height: compact ? 52 : 58,
                      decoration: BoxDecoration(
                        color: color.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Icon(
                        Icons.construction_rounded,
                        color: color,
                        size: 30,
                      ),
                    ),
                    const SizedBox(height: 18),
                    Text(
                      'Page under construction',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF17233F),
                        fontSize: compact ? 22 : 26,
                        fontWeight: FontWeight.w900,
                        height: 1.1,
                        letterSpacing: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _DetailHero extends StatelessWidget {
  const _DetailHero({required this.content});

  final _FeatureCategoryContent content;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final compact = constraints.maxWidth < 760;
        final narrow = constraints.maxWidth < 390;
        final tight = constraints.maxWidth < 430;
        final heroText = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              content.category == FeatureCategory.iot
                  ? 'LysTing Smart IoT'
                  : content.title,
              style: TextStyle(
                color: const Color(0xFF17233F),
                fontSize: tight ? 20 : 24,
                fontWeight: FontWeight.w900,
                height: 1.08,
                letterSpacing: 0,
              ),
            ),
            if (content.category != FeatureCategory.iot) ...[
              SizedBox(height: tight ? 4 : 7),
              Text(
                content.summary,
                maxLines: tight ? 2 : null,
                overflow: tight ? TextOverflow.ellipsis : TextOverflow.visible,
                style: TextStyle(
                  color: const Color(0xFF4C5873),
                  fontSize: tight ? 11.2 : 12.5,
                  height: tight ? 1.22 : 1.32,
                ),
              ),
            ],
          ],
        );

        final highlights = _DetailHighlights(
          content: content,
          singleRow: content.category == FeatureCategory.iot,
        );

        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: narrow
                ? 10
                : compact
                    ? 14
                    : 18,
            vertical: narrow
                ? 8
                : compact
                    ? 12
                    : 14,
          ),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.82),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white.withValues(alpha: 0.82)),
            boxShadow: [
              BoxShadow(
                color: content.iconColor.withValues(alpha: 0.055),
                blurRadius: 18,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: compact
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    heroText,
                    SizedBox(height: tight ? 6 : 10),
                    highlights,
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(flex: 6, child: heroText),
                    const SizedBox(width: 16),
                    Expanded(flex: 4, child: highlights),
                  ],
                ),
        );
      },
    );
  }
}

class _DetailHighlights extends StatelessWidget {
  const _DetailHighlights({
    required this.content,
    this.singleRow = false,
  });

  final _FeatureCategoryContent content;
  final bool singleRow;

  @override
  Widget build(BuildContext context) {
    final highlights = _detailHighlightItems(content.category);
    final tight = MediaQuery.sizeOf(context).width < 430;

    if (singleRow) {
      return Row(
        children: highlights
            .map(
              (item) => Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: item == highlights.last ? 0 : (tight ? 5 : 8),
                  ),
                  child: _DetailHighlightTile(
                    item: item,
                    color: content.iconColor,
                    singleRow: true,
                  ),
                ),
              ),
            )
            .toList(),
      );
    }

    return Column(
      children: highlights
          .map(
            (item) => Padding(
              padding: EdgeInsets.only(bottom: tight ? 4 : 6),
              child: _DetailHighlightTile(
                item: item,
                color: content.iconColor,
              ),
            ),
          )
          .toList(),
    );
  }
}

class _DetailHighlightItem {
  const _DetailHighlightItem({
    required this.icon,
    required this.label,
    required this.supporting,
  });

  final IconData icon;
  final String label;
  final String supporting;
}

List<_DetailHighlightItem> _detailHighlightItems(FeatureCategory category) {
  return switch (category) {
    FeatureCategory.iot => const [
        _DetailHighlightItem(
          icon: Icons.maps_home_work_rounded,
          label: 'Smart Spaces',
          supporting: 'Homes, shops, and offices',
        ),
        _DetailHighlightItem(
          icon: Icons.power_settings_new_rounded,
          label: 'Plug & Play',
          supporting: 'Quick device setup',
        ),
        _DetailHighlightItem(
          icon: Icons.phone_iphone_rounded,
          label: 'Mobile Control',
          supporting: 'App and web workflows',
        ),
      ],
    FeatureCategory.ecommerce => const [
        _DetailHighlightItem(
          icon: Icons.restaurant_menu_rounded,
          label: 'Food & Products',
          supporting: 'Local catalog listings',
        ),
        _DetailHighlightItem(
          icon: Icons.photo_library_rounded,
          label: 'Showroom',
          supporting: 'Gallery-first browsing',
        ),
        _DetailHighlightItem(
          icon: Icons.insights_rounded,
          label: 'Sales Insights',
          supporting: 'Agent performance view',
        ),
      ],
    FeatureCategory.b2b => const [
        _DetailHighlightItem(
          icon: Icons.business_center_rounded,
          label: 'Pure B2B',
          supporting: 'Wholesale workflows',
        ),
        _DetailHighlightItem(
          icon: Icons.inventory_2_rounded,
          label: 'Catalogs',
          supporting: 'Supplier showcases',
        ),
        _DetailHighlightItem(
          icon: Icons.groups_2_rounded,
          label: 'Agent Search',
          supporting: 'Product-based matching',
        ),
      ],
  };
}

class _DetailHighlightTile extends StatelessWidget {
  const _DetailHighlightTile({
    required this.item,
    required this.color,
    this.singleRow = false,
  });

  final _DetailHighlightItem item;
  final Color color;
  final bool singleRow;

  @override
  Widget build(BuildContext context) {
    final tight = MediaQuery.sizeOf(context).width < 430;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: singleRow ? (tight ? 5 : 7) : (tight ? 8 : 10),
        vertical: singleRow ? (tight ? 6 : 7) : (tight ? 5 : 8),
      ),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: color.withValues(alpha: 0.14),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: singleRow ? (tight ? 20 : 24) : (tight ? 24 : 30),
            height: singleRow ? (tight ? 20 : 24) : (tight ? 24 : 30),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              item.icon,
              color: color,
              size: singleRow ? (tight ? 12 : 14) : (tight ? 14 : 16),
            ),
          ),
          SizedBox(width: singleRow ? (tight ? 4 : 6) : (tight ? 7 : 8)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: const Color(0xFF24314F),
                    fontSize: singleRow
                        ? (tight ? 9.2 : 10.2)
                        : (tight ? 11.4 : 12.5),
                    height: tight ? 1.05 : 1.1,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: tight ? 0 : 1),
                Text(
                  item.supporting,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: const Color(0xFF52617F),
                    fontSize:
                        singleRow ? (tight ? 7.8 : 8.8) : (tight ? 9.6 : 10.5),
                    height: tight ? 1.05 : 1.1,
                    fontWeight: FontWeight.w700,
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

class _DetailFeatureGrid extends StatelessWidget {
  const _DetailFeatureGrid({required this.content});

  final _FeatureCategoryContent content;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final columns = constraints.maxWidth >= 980
            ? 3
            : constraints.maxWidth >= 640
                ? 2
                : 1;

        return Wrap(
          spacing: 18,
          runSpacing: 18,
          children: content.featureGroups
              .map(
                (group) => SizedBox(
                  width: _gridWidth(constraints.maxWidth, columns, 18),
                  child: _DetailFeatureCard(
                    group: group,
                    color: content.iconColor,
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}

class _AutomationCarousel extends StatefulWidget {
  const _AutomationCarousel({required this.color});

  final Color color;

  @override
  State<_AutomationCarousel> createState() => _AutomationCarouselState();
}

class _AutomationCarouselState extends State<_AutomationCarousel> {
  late final PageController _controller;
  int _currentPage = 0;
  int _selectedAutomationIndex = 0;

  static const _items = [
    _AutomationCarouselItem(
      icon: Icons.home_work_rounded,
      title: 'Smart Home Automation',
      subtitle: '',
    ),
    _AutomationCarouselItem(
      icon: Icons.apartment_rounded,
      title: 'Commercial Building',
      subtitle: '',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: 0.98);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _goTo(int page) {
    final target = page.clamp(0, _items.length - 1);
    _controller.animateToPage(
      target,
      duration: const Duration(milliseconds: 260),
      curve: Curves.easeOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final compact = constraints.maxWidth < 720;
        final narrow = constraints.maxWidth < 390;

        return Container(
          padding: EdgeInsets.all(narrow
              ? 12
              : compact
                  ? 14
                  : 16),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.72),
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.white.withValues(alpha: 0.94)),
            boxShadow: [
              BoxShadow(
                color: widget.color.withValues(alpha: 0.08),
                blurRadius: 22,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Automation areas',
                      style: TextStyle(
                        color: widget.color,
                        fontSize: narrow ? 12.5 : 13,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.8,
                      ),
                    ),
                  ),
                  _CarouselIconButton(
                    icon: Icons.arrow_back_rounded,
                    enabled: _currentPage > 0,
                    onTap: () => _goTo(_currentPage - 1),
                  ),
                  SizedBox(width: narrow ? 6 : 8),
                  _CarouselIconButton(
                    icon: Icons.arrow_forward_rounded,
                    enabled: _currentPage < _items.length - 1,
                    onTap: () => _goTo(_currentPage + 1),
                  ),
                ],
              ),
              SizedBox(height: narrow ? 8 : 10),
              SizedBox(
                height: narrow
                    ? 74
                    : compact
                        ? 88
                        : 108,
                child: PageView.builder(
                  controller: _controller,
                  itemCount: _items.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                      _selectedAutomationIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return AnimatedPadding(
                      duration: const Duration(milliseconds: 220),
                      curve: Curves.easeOutCubic,
                      padding: EdgeInsets.symmetric(
                        horizontal: narrow
                            ? 5
                            : compact
                                ? 7
                                : 10,
                        vertical: index == _currentPage ? 0 : 8,
                      ),
                      child: _AutomationCarouselCard(
                        item: _items[index],
                        color: widget.color,
                        selected: index == _currentPage,
                        compact: compact,
                        narrow: narrow,
                        onTap: () {
                          setState(() {
                            _currentPage = index;
                            _selectedAutomationIndex = index;
                          });
                          _goTo(index);
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: narrow ? 8 : 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _items.asMap().entries.map((entry) {
                  final selected = entry.key == _currentPage;
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 180),
                    width: selected ? 24 : 8,
                    height: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      color: selected
                          ? widget.color
                          : widget.color.withValues(alpha: 0.18),
                      borderRadius: BorderRadius.circular(999),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: narrow ? 12 : 16),
              _AutomationImagePanel(
                color: widget.color,
                assetPath: _assetForAutomationIndex(_selectedAutomationIndex),
              ),
            ],
          ),
        );
      },
    );
  }
}

String _assetForAutomationIndex(int index) {
  return switch (index) {
    0 => 'assets/images/smart_home_automation_table.png',
    _ => 'assets/images/facility_automation_requirements.png',
  };
}

class _AutomationCarouselItem {
  const _AutomationCarouselItem({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;
}

class _AutomationCarouselCard extends StatelessWidget {
  const _AutomationCarouselCard({
    required this.item,
    required this.color,
    required this.selected,
    required this.compact,
    required this.narrow,
    required this.onTap,
  });

  final _AutomationCarouselItem item;
  final Color color;
  final bool selected;
  final bool compact;
  final bool narrow;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: item.title,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(24),
          onTap: onTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 220),
            curve: Curves.easeOutCubic,
            padding: EdgeInsets.symmetric(
              horizontal: narrow ? 12 : 16,
              vertical: narrow ? 10 : 14,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: selected
                    ? [color, const Color(0xFF0A1D4A)]
                    : [Colors.white, const Color(0xFFF4F8FF)],
              ),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: selected ? color.withValues(alpha: 0.25) : Colors.white,
              ),
              boxShadow: [
                BoxShadow(
                  color: color.withValues(alpha: selected ? 0.2 : 0.08),
                  blurRadius: selected ? 18 : 12,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: narrow
                      ? 36
                      : compact
                          ? 40
                          : 44,
                  height: narrow
                      ? 36
                      : compact
                          ? 40
                          : 44,
                  decoration: BoxDecoration(
                    color: selected
                        ? Colors.white.withValues(alpha: 0.16)
                        : color.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Icon(
                    item.icon,
                    color: selected ? Colors.white : color,
                    size: narrow
                        ? 19
                        : compact
                            ? 21
                            : 23,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    item.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: selected ? Colors.white : const Color(0xFF17233F),
                      fontSize: narrow
                          ? 17
                          : compact
                              ? 18
                              : 20,
                      fontWeight: FontWeight.w900,
                      height: 1.08,
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _AutomationImagePanel extends StatelessWidget {
  const _AutomationImagePanel({
    required this.color,
    required this.assetPath,
  });

  final Color color;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.94),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0xFFDCE8FF)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x140E2B73),
            blurRadius: 22,
            offset: Offset(0, 12),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: _NativeAutomationTable(
          showFacilities: assetPath.contains('facility_automation'),
          color: color,
        ),
      ),
    );
  }
}

class _NativeAutomationTable extends StatelessWidget {
  const _NativeAutomationTable({
    required this.showFacilities,
    required this.color,
  });

  final bool showFacilities;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return showFacilities
        ? Column(
            children: [
              _FacilityAutomationTable(color: color),
              const SizedBox(height: 16),
              _AutomationEstimatorCard(
                key: const ValueKey('commercial-estimator'),
                color: color,
                commercial: true,
              ),
            ],
          )
        : Column(
            children: [
              _SmartHomeNativeTable(color: color),
              const SizedBox(height: 16),
              _AutomationEstimatorCard(
                key: const ValueKey('home-estimator'),
                color: color,
              ),
            ],
          );
  }
}

class _AutomationButtonData {
  const _AutomationButtonData({
    required this.icon,
    required this.label,
    this.supporting,
    this.detail,
    this.sensors = const [],
  });

  final IconData icon;
  final String label;
  final String? supporting;
  final String? detail;
  final List<String> sensors;
}

class _FacilityAutomationRowData {
  const _FacilityAutomationRowData({
    required this.icon,
    required this.facility,
    required this.items,
  });

  final IconData icon;
  final String facility;
  final List<_AutomationButtonData> items;
}

class _AutomationElevatedButton extends StatelessWidget {
  const _AutomationElevatedButton({
    required this.item,
    required this.color,
    this.compact = false,
  });

  final _AutomationButtonData item;
  final Color color;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: item.supporting == null
          ? item.label
          : '${item.label}\n${item.supporting}',
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: () {
            debugPrint('Automation selected: ${item.label}');
          },
          child: Ink(
            width: compact ? 92 : null,
            padding: EdgeInsets.symmetric(
              horizontal: compact ? 8 : 10,
              vertical: compact ? 9 : 10,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: color.withValues(alpha: 0.12)),
              boxShadow: [
                BoxShadow(
                  color: color.withValues(alpha: 0.08),
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(item.icon, color: color, size: compact ? 22 : 24),
                const SizedBox(height: 6),
                Text(
                  item.label,
                  maxLines: compact ? 3 : 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF0C1D4A),
                    fontSize: compact ? 9.5 : 12,
                    height: 1.15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SmartHomeNativeTable extends StatefulWidget {
  const _SmartHomeNativeTable({required this.color});

  final Color color;

  @override
  State<_SmartHomeNativeTable> createState() => _SmartHomeNativeTableState();
}

class _SmartHomeNativeTableState extends State<_SmartHomeNativeTable> {
  _AutomationButtonData? _selectedItem;

  static const _rows = [
    _AutomationButtonData(
      icon: Icons.lightbulb_outline_rounded,
      label: 'Smart Lighting Control',
      supporting: 'Lights, dimming, schedules, scenes',
      detail:
          'Controls room lights with schedules, dimming, scenes, and automatic responses to movement or daylight.',
      sensors: [
        'Motion sensor',
        'Ambient light / LDR sensor',
        'Smart switch / relay module',
        'Dimmer module',
      ],
    ),
    _AutomationButtonData(
      icon: Icons.mode_fan_off_outlined,
      label: 'Fan & Appliance Control',
      supporting: 'Fans, AC, TV, geyser, water motor, appliances',
      detail:
          'Turns fans and appliances on or off from the app, remote rules, room conditions, or power usage.',
      sensors: [
        'Smart relay module',
        'IR blaster for AC / TV',
        'Temperature sensor',
        'Current / power monitoring sensor',
      ],
    ),
    _AutomationButtonData(
      icon: Icons.home_outlined,
      label: 'Room-Wise Automation',
      supporting: 'Hall, bedroom, kitchen, office, parking groups',
      detail:
          'Groups devices by room so each space can run its own lights, fans, AC, scenes, and safety rules.',
      sensors: [
        'Motion / occupancy sensor',
        'Door sensor',
        'Temperature sensor',
        'Smart switches / relays per room',
      ],
    ),
    _AutomationButtonData(
      icon: Icons.grid_view_rounded,
      label: 'Scenes & Modes',
      supporting: 'Morning, Night, Custom modes',
      detail:
          'Runs multiple devices together as one mode, like morning, night, movie, away, or custom routines.',
      sensors: [
        'Motion sensor',
        'Light sensor',
        'Time / schedule trigger',
        'Smart switches, dimmers, curtains, and AC modules',
      ],
    ),
    _AutomationButtonData(
      icon: Icons.calendar_month_outlined,
      label: 'Schedule-Based Automation',
      supporting: 'Time and routine based actions',
      detail:
          'Uses time-based routines to control lights, appliances, pumps, AC, and other devices automatically.',
      sensors: [
        'Timer / app scheduler',
        'Smart relay module',
        'Power monitoring sensor',
        'Optional motion sensor for override',
      ],
    ),
    _AutomationButtonData(
      icon: Icons.curtains_outlined,
      label: 'Curtain & Gate Automation',
      supporting: 'Main gate, garage door, sliding doors',
      detail:
          'Automates curtains, main gates, garage doors, and sliding doors with safety limits and remote control.',
      sensors: [
        'Motor controller',
        'Limit switch sensor',
        'Door / gate magnetic sensor',
        'IR obstacle sensor',
        'Remote / RF / Wi-Fi control module',
      ],
    ),
    _AutomationButtonData(
      icon: Icons.device_thermostat_rounded,
      label: 'Climate Control',
      supporting: 'AC, thermostat, air purifier, ventilation',
      detail:
          'Maintains comfortable room conditions by controlling AC, fans, air purifiers, and ventilation.',
      sensors: [
        'Temperature sensor',
        'Humidity sensor',
        'Air quality sensor',
        'IR blaster or thermostat module',
        'Fan / AC relay controller',
      ],
    ),
    _AutomationButtonData(
      icon: Icons.water_drop_outlined,
      label: 'Water Motor / Pump Automation',
      supporting: 'Tank/time/manual motor control',
      detail:
          'Controls water pumps using tank level, flow, pressure, time schedules, and dry-run protection.',
      sensors: [
        'Water level sensor',
        'Flow sensor',
        'Pressure sensor',
        'Dry-run protection sensor',
        'Smart relay / contactor module',
      ],
    ),
    _AutomationButtonData(
      icon: Icons.directions_run_rounded,
      label: 'Motion Sensing Automation',
      supporting: 'Movement-based actions',
      detail:
          'Triggers lights, alerts, devices, and scenes when movement or presence is detected in a space.',
      sensors: [
        'PIR motion sensor',
        'Microwave motion sensor',
        'mmWave presence sensor',
        'Door sensor for entry detection',
      ],
    ),
    _AutomationButtonData(
      icon: Icons.settings_remote_outlined,
      label: 'Proximity Sensing Automation',
      supporting: 'Nearby presence-based actions',
      detail:
          'Detects nearby users, tags, or devices to run entry, access, lighting, and welcome automations.',
      sensors: [
        'Bluetooth / BLE beacon',
        'RFID / NFC reader',
        'Ultrasonic proximity sensor',
        'mmWave presence sensor',
        'Wi-Fi / mobile presence detection',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final tight = constraints.maxWidth < 430;
        return Container(
          padding: EdgeInsets.all(tight ? 10 : 18),
          decoration: BoxDecoration(
            color: const Color(0xFFF8FBFF),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            children: [
              Text(
                'Smart Home Automation',
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: const Color(0xFF0C1D4A),
                  fontSize: tight ? 20 : 28,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Connected controls, routines, and sensor-ready automation for smart spaces',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF52617F),
                  fontSize: tight ? 11 : 13,
                ),
              ),
              SizedBox(height: tight ? 10 : 18),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 220),
                switchInCurve: Curves.easeOutCubic,
                switchOutCurve: Curves.easeInCubic,
                child: _selectedItem == null
                    ? _SmartHomeAutomationGrid(
                        key: const ValueKey('smart-home-grid'),
                        items: _rows,
                        color: widget.color,
                        onSelected: (item) {
                          setState(() => _selectedItem = item);
                        },
                      )
                    : _AutomationSensorDetailPanel(
                        key: ValueKey(_selectedItem!.label),
                        item: _selectedItem!,
                        color: widget.color,
                        onBack: () {
                          setState(() => _selectedItem = null);
                        },
                      ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _SmartHomeAutomationGrid extends StatelessWidget {
  const _SmartHomeAutomationGrid({
    super.key,
    required this.items,
    required this.color,
    required this.onSelected,
  });

  final List<_AutomationButtonData> items;
  final Color color;
  final ValueChanged<_AutomationButtonData> onSelected;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final compact = constraints.maxWidth < 430;
        final columns = compact
            ? 3
            : constraints.maxWidth >= 980
                ? 5
                : constraints.maxWidth >= 700
                    ? 4
                    : 2;
        return Wrap(
          spacing: compact ? 7 : 12,
          runSpacing: compact ? 7 : 12,
          children: items
              .map(
                (row) => SizedBox(
                  width: _gridWidth(
                    constraints.maxWidth,
                    columns,
                    compact ? 7 : 12,
                  ),
                  child: _AutomationHomeButton(
                    item: row,
                    color: color,
                    compact: compact,
                    onTap: () => onSelected(row),
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}

class _AutomationHomeButton extends StatelessWidget {
  const _AutomationHomeButton({
    required this.item,
    required this.color,
    required this.compact,
    required this.onTap,
  });

  final _AutomationButtonData item;
  final Color color;
  final bool compact;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Ink(
          padding: EdgeInsets.symmetric(
            horizontal: compact ? 6 : 14,
            vertical: compact ? 8 : 14,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: color.withValues(alpha: 0.12)),
            boxShadow: [
              BoxShadow(
                color: color.withValues(alpha: 0.08),
                blurRadius: 14,
                offset: const Offset(0, 7),
              ),
            ],
          ),
          child: compact
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(item.icon, color: color, size: 22),
                    const SizedBox(height: 5),
                    Text(
                      item.label,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFF0C1D4A),
                        fontSize: 10,
                        height: 1.05,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    if (item.supporting != null) ...[
                      const SizedBox(height: 3),
                      Text(
                        item.supporting!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFF52617F),
                          fontSize: 8.5,
                          height: 1.05,
                        ),
                      ),
                    ],
                  ],
                )
              : Row(
                  children: [
                    Icon(item.icon, color: color, size: 28),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.label,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Color(0xFF0C1D4A),
                              fontSize: 13,
                              height: 1.15,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          if (item.supporting != null) ...[
                            const SizedBox(height: 5),
                            Text(
                              item.supporting!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Color(0xFF52617F),
                                fontSize: 11.5,
                                height: 1.25,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

class _AutomationSensorDetailPanel extends StatelessWidget {
  const _AutomationSensorDetailPanel({
    super.key,
    required this.item,
    required this.color,
    required this.onBack,
  });

  final _AutomationButtonData item;
  final Color color;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    final tight = MediaQuery.sizeOf(context).width < 430;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(tight ? 10 : 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: color.withValues(alpha: 0.12)),
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.08),
            blurRadius: 18,
            offset: const Offset(0, 9),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton.filledTonal(
                tooltip: 'Back to automation list',
                onPressed: onBack,
                icon: const Icon(Icons.arrow_back_rounded),
              ),
              const SizedBox(width: 12),
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(item.icon, color: color, size: 26),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  item.label,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFF0C1D4A),
                    fontSize: 20,
                    height: 1.1,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          if (item.detail != null)
            Text(
              item.detail!,
              style: const TextStyle(
                color: Color(0xFF52617F),
                fontSize: 13,
                height: 1.35,
                fontWeight: FontWeight.w600,
              ),
            ),
          const SizedBox(height: 18),
          const Text(
            'Sensors / Devices Used',
            style: TextStyle(
              color: Color(0xFF0C1D4A),
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 12),
          LayoutBuilder(
            builder: (context, constraints) {
              final columns = constraints.maxWidth >= 760 ? 2 : 1;
              return Wrap(
                spacing: 10,
                runSpacing: 10,
                children: item.sensors
                    .map(
                      (sensor) => SizedBox(
                        width: _gridWidth(constraints.maxWidth, columns, 10),
                        child: _SensorChip(label: sensor, color: color),
                      ),
                    )
                    .toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _SensorChip extends StatelessWidget {
  const _SensorChip({required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FBFF),
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: color.withValues(alpha: 0.1)),
      ),
      child: Row(
        children: [
          Icon(Icons.sensors_rounded, color: color, size: 20),
          const SizedBox(width: 9),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: Color(0xFF0C1D4A),
                    fontSize: 12.5,
                    height: 1.2,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  _sensorDescription(label),
                  style: const TextStyle(
                    color: Color(0xFF52617F),
                    fontSize: 11,
                    height: 1.25,
                    fontWeight: FontWeight.w600,
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

String _sensorDescription(String sensor) {
  return switch (sensor) {
    'Motion sensor' => 'Detects movement in a room or area.',
    'PIR motion sensor' =>
      'Detects body heat movement for lighting and security actions.',
    'Microwave motion sensor' =>
      'Uses microwave signals to detect movement across wider coverage.',
    'mmWave presence sensor' =>
      'Detects fine human presence, even when someone is sitting still.',
    'Motion / occupancy sensor' =>
      'Detects whether a room is active or occupied.',
    'Ambient light / LDR sensor' =>
      'Measures surrounding light level for automatic brightness control.',
    'Light sensor' =>
      'Reads daylight or room brightness to trigger lighting scenes.',
    'Smart switch / relay module' =>
      'Switches electrical devices on or off through automation.',
    'Smart switches / relays per room' =>
      'Gives each room independent automated control points.',
    'Smart switches, dimmers, curtains, and AC modules' =>
      'Runs multiple connected devices together for one scene or mode.',
    'Smart relay module' => 'Controls appliances and loads through app rules.',
    'Smart relay / contactor module' =>
      'Safely switches higher-load equipment like pumps.',
    'Dimmer module' => 'Controls light brightness instead of only on or off.',
    'IR blaster for AC / TV' =>
      'Sends remote-control signals to AC, TV, and similar devices.',
    'IR blaster or thermostat module' =>
      'Controls AC or thermostat settings from automation rules.',
    'Temperature sensor' => 'Measures room or device temperature.',
    'Humidity sensor' => 'Measures moisture level in the air.',
    'Air quality sensor' =>
      'Checks air condition such as dust, smoke, VOC, or CO2 by model.',
    'Current / power monitoring sensor' =>
      'Tracks electricity use and confirms whether a device is running.',
    'Power monitoring sensor' =>
      'Measures energy use for schedules, reports, and safety checks.',
    'Door sensor' => 'Detects whether a door or window is open or closed.',
    'Door sensor for entry detection' =>
      'Confirms entry or exit when a door opens.',
    'Door / gate magnetic sensor' =>
      'Detects open or closed status using a magnetic contact.',
    'Limit switch sensor' =>
      'Stops a motor when the curtain, gate, or door reaches its end.',
    'IR obstacle sensor' =>
      'Detects objects in the path of a gate, curtain, or door.',
    'Motor controller' =>
      'Drives and controls curtain, gate, or shutter motors.',
    'Remote / RF / Wi-Fi control module' =>
      'Adds remote, wireless, or app-based control to motorized devices.',
    'Fan / AC relay controller' =>
      'Switches fans or AC circuits based on climate rules.',
    'Water level sensor' => 'Measures tank water level.',
    'Flow sensor' => 'Detects water movement through a pipe.',
    'Pressure sensor' => 'Measures pressure in a water or air line.',
    'Dry-run protection sensor' =>
      'Protects a pump when water supply is missing.',
    'Timer / app scheduler' =>
      'Runs automations at selected times or routines.',
    'Time / schedule trigger' =>
      'Starts scenes automatically by time, day, or routine.',
    'Optional motion sensor for override' =>
      'Lets movement temporarily change or cancel a scheduled action.',
    'Bluetooth / BLE beacon' =>
      'Detects nearby phones or tags for presence-based automation.',
    'RFID / NFC reader' =>
      'Identifies cards, tags, or phones for access and actions.',
    'Ultrasonic proximity sensor' =>
      'Measures distance to nearby objects using sound waves.',
    'Wi-Fi / mobile presence detection' =>
      'Uses phone network presence to trigger home or away actions.',
    _ => 'Supports this automation with device status or trigger input.',
  };
}

class _EstimateOptionData {
  const _EstimateOptionData({
    required this.id,
    required this.icon,
    required this.title,
    required this.unitLabel,
    required this.defaultRoom,
    required this.defaultPrice,
    required this.included,
  });

  final String id;
  final IconData icon;
  final String title;
  final String unitLabel;
  final String defaultRoom;
  final int defaultPrice;
  final List<String> included;
}

class _EstimateLineItem {
  const _EstimateLineItem({
    required this.option,
    required this.room,
    required this.quantity,
    required this.unitPrice,
  });

  final _EstimateOptionData option;
  final String room;
  final int quantity;
  final int unitPrice;

  int get total => quantity * unitPrice;
}

class _EstimateDraftControllers {
  _EstimateDraftControllers({
    required this.option,
    required int price,
  })  : roomController = TextEditingController(text: option.defaultRoom),
        quantityController = TextEditingController(text: '1'),
        unitPriceController = TextEditingController(text: '$price');

  final _EstimateOptionData option;
  final TextEditingController roomController;
  final TextEditingController quantityController;
  final TextEditingController unitPriceController;

  void dispose() {
    roomController.dispose();
    quantityController.dispose();
    unitPriceController.dispose();
  }
}

class _AutomationEstimatorCard extends StatefulWidget {
  const _AutomationEstimatorCard({
    super.key,
    required this.color,
    this.commercial = false,
  });

  final Color color;
  final bool commercial;

  @override
  State<_AutomationEstimatorCard> createState() =>
      _AutomationEstimatorCardState();
}

class _AutomationEstimatorCardState extends State<_AutomationEstimatorCard> {
  static const _homeOptions = [
    _EstimateOptionData(
      id: 'lighting',
      icon: Icons.lightbulb_outline_rounded,
      title: 'Smart Lighting',
      unitLabel: 'light points',
      defaultRoom: 'Living Room',
      defaultPrice: 1200,
      included: [
        'Smart switch / relay module',
        'Motion sensor optional',
        'Ambient light sensor optional',
        'Mobile and web app control',
        'Basic fitting estimate',
      ],
    ),
    _EstimateOptionData(
      id: 'fan',
      icon: Icons.mode_fan_off_outlined,
      title: 'Fan & Appliance',
      unitLabel: 'appliance points',
      defaultRoom: 'Bedroom',
      defaultPrice: 1500,
      included: [
        'Smart relay module',
        'Power monitoring optional',
        'IR control optional for AC / TV',
        'Mobile and web app control',
        'Basic fitting estimate',
      ],
    ),
    _EstimateOptionData(
      id: 'room',
      icon: Icons.home_outlined,
      title: 'Room-Wise Automation',
      unitLabel: 'rooms',
      defaultRoom: 'Full Home',
      defaultPrice: 3500,
      included: [
        'Room-wise device grouping',
        'Occupancy sensor optional',
        'Scene and schedule setup',
        'Mobile and web app control',
      ],
    ),
    _EstimateOptionData(
      id: 'pump',
      icon: Icons.water_drop_outlined,
      title: 'Water Pump',
      unitLabel: 'pumps',
      defaultRoom: 'Utility',
      defaultPrice: 3500,
      included: [
        'Water level sensor',
        'Smart relay / contactor module',
        'Dry-run protection optional',
        'Manual and app control',
      ],
    ),
    _EstimateOptionData(
      id: 'climate',
      icon: Icons.device_thermostat_rounded,
      title: 'Climate Control',
      unitLabel: 'AC / climate points',
      defaultRoom: 'Bedroom',
      defaultPrice: 2500,
      included: [
        'Temperature sensor',
        'Humidity sensor optional',
        'IR blaster or thermostat module',
        'Mobile and web app control',
      ],
    ),
    _EstimateOptionData(
      id: 'curtain',
      icon: Icons.curtains_outlined,
      title: 'Curtain & Gate',
      unitLabel: 'motor points',
      defaultRoom: 'Lobby',
      defaultPrice: 4500,
      included: [
        'Motor controller',
        'Limit switch sensor',
        'Obstacle sensor optional',
        'Remote / app control',
      ],
    ),
    _EstimateOptionData(
      id: 'presence',
      icon: Icons.sensors_rounded,
      title: 'Motion / Proximity',
      unitLabel: 'sensor points',
      defaultRoom: 'Lobby',
      defaultPrice: 900,
      included: [
        'PIR / mmWave sensor option',
        'Door sensor optional',
        'Presence-based automation rule',
        'Mobile and web app alerts',
      ],
    ),
    _EstimateOptionData(
      id: 'app',
      icon: Icons.devices_rounded,
      title: 'Mobile / Web Control',
      unitLabel: 'setup',
      defaultRoom: 'Project',
      defaultPrice: 2500,
      included: [
        'Mobile app access',
        'Web dashboard access',
        'Basic user setup',
        'Remote monitoring ready',
      ],
    ),
  ];

  static const _commercialDashboardOption = _EstimateOptionData(
    id: 'app',
    icon: Icons.dashboard_customize_outlined,
    title: 'Commercial Dashboard',
    unitLabel: 'setup',
    defaultRoom: 'Project',
    defaultPrice: 5000,
    included: [
      'Admin web dashboard',
      'Mobile app access',
      'Basic user roles',
      'Remote monitoring ready',
    ],
  );

  final List<_EstimateLineItem> _items = [];
  final Map<String, _EstimateDraftControllers> _drafts = {};
  late Map<String, int> _savedPrices;
  late _FacilityAutomationRowData _selectedFacility;
  bool _showInternalPricing = false;

  List<_FacilityAutomationRowData> get _commercialFacilities =>
      _facilityAutomationRows();

  List<_EstimateOptionData> get _commercialOptions => [
        ..._commercialEstimateOptionsForFacility(_selectedFacility),
        _commercialDashboardOption,
      ];

  List<_EstimateOptionData> get _allCommercialOptions => [
        for (final facility in _commercialFacilities)
          ..._commercialEstimateOptionsForFacility(facility),
        _commercialDashboardOption,
      ];

  List<_EstimateOptionData> get _options =>
      widget.commercial ? _commercialOptions : _homeOptions;

  String get _estimateTitle => widget.commercial
      ? 'Commercial Automation Estimate'
      : 'Smart Automation Estimate';

  String get _emptySummaryText => widget.commercial
      ? 'Add commercial automation items to build the estimate.'
      : 'Add automation items to build the estimate.';

  String get _appControlLabel => widget.commercial
      ? 'Commercial Web / App Dashboard'
      : 'Mobile / Web App Control';

  @override
  void initState() {
    super.initState();
    _resetEstimator();
  }

  @override
  void didUpdateWidget(covariant _AutomationEstimatorCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.commercial != widget.commercial) {
      setState(() {
        _items.clear();
        _resetEstimator();
        _showInternalPricing = false;
      });
    }
  }

  void _resetEstimator() {
    if (widget.commercial) {
      _selectedFacility = _commercialFacilities.first;
    }
    _savedPrices = {
      for (final option in widget.commercial ? _allCommercialOptions : _options)
        option.id: option.defaultPrice,
    };
    _replaceDrafts([_options.first]);
  }

  @override
  void dispose() {
    for (final draft in _drafts.values) {
      draft.dispose();
    }
    super.dispose();
  }

  void _replaceDrafts(List<_EstimateOptionData> options) {
    for (final draft in _drafts.values) {
      draft.dispose();
    }
    _drafts
      ..clear()
      ..addEntries(
        options.map(
          (option) => MapEntry(
            option.id,
            _EstimateDraftControllers(
              option: option,
              price: _savedPrices[option.id] ?? option.defaultPrice,
            ),
          ),
        ),
      );
  }

  void _toggleOption(_EstimateOptionData option) {
    final existing = _drafts.remove(option.id);
    if (existing != null) {
      existing.dispose();
      return;
    }
    _drafts[option.id] = _EstimateDraftControllers(
      option: option,
      price: _savedPrices[option.id] ?? option.defaultPrice,
    );
  }

  int get _appControlPrice => _savedPrices['app'] ?? 2500;

  int get _grandTotal =>
      _appControlPrice + _items.fold(0, (total, item) => total + item.total);

  void _addEstimateItem() {
    final addedItems = <_EstimateLineItem>[];
    for (final draft in _drafts.values) {
      final quantity = int.tryParse(draft.quantityController.text) ?? 0;
      final unitPrice = int.tryParse(draft.unitPriceController.text) ?? 0;
      final room = draft.roomController.text.trim().isEmpty
          ? draft.option.defaultRoom
          : draft.roomController.text.trim();
      if (quantity <= 0 || unitPrice <= 0) continue;
      addedItems.add(
        _EstimateLineItem(
          option: draft.option,
          room: room,
          quantity: quantity,
          unitPrice: unitPrice,
        ),
      );
    }
    if (addedItems.isEmpty) return;

    setState(() {
      _items.addAll(addedItems);
    });
  }

  Future<void> _requestInternalAccess() async {
    final controller = TextEditingController();
    final accepted = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Internal pricing access'),
          content: TextField(
            controller: controller,
            autofocus: true,
            obscureText: true,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: const InputDecoration(
              labelText: 'Passcode',
              hintText: 'Enter passcode',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () =>
                  Navigator.of(context).pop(controller.text == '1111'),
              child: const Text('Unlock'),
            ),
          ],
        );
      },
    );
    controller.dispose();
    if (!mounted) return;
    if (accepted == true) {
      setState(() => _showInternalPricing = true);
    } else if (accepted == false) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid passcode')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 220),
      child: _showInternalPricing
          ? _InternalPricingPanel(
              key: const ValueKey('internal-pricing'),
              color: widget.color,
              options: _options,
              prices: _savedPrices,
              onSave: (prices) {
                setState(() {
                  _savedPrices
                    ..clear()
                    ..addAll(prices);
                  for (final draft in _drafts.values) {
                    draft.unitPriceController.text =
                        '${_savedPrices[draft.option.id] ?? draft.option.defaultPrice}';
                  }
                  _showInternalPricing = false;
                });
              },
              onBack: () => setState(() => _showInternalPricing = false),
            )
          : _EstimatorCustomerPanel(
              key: const ValueKey('customer-estimator'),
              color: widget.color,
              title: _estimateTitle,
              emptySummaryText: _emptySummaryText,
              appControlLabel: _appControlLabel,
              commercial: widget.commercial,
              facilities: _commercialFacilities,
              selectedFacility: widget.commercial ? _selectedFacility : null,
              options: _options,
              drafts: _drafts.values.toList(),
              items: _items,
              appControlPrice: _appControlPrice,
              grandTotal: _grandTotal,
              onOptionSelected: (option) =>
                  setState(() => _toggleOption(option)),
              onFacilitySelected: (facility) {
                setState(() {
                  _selectedFacility = facility;
                  _replaceDrafts([_options.first]);
                });
              },
              onAdd: _addEstimateItem,
              onRemove: (index) {
                setState(() => _items.removeAt(index));
              },
              onInternalAccess: _requestInternalAccess,
            ),
    );
  }
}

class _EstimatorCustomerPanel extends StatelessWidget {
  const _EstimatorCustomerPanel({
    super.key,
    required this.color,
    required this.title,
    required this.emptySummaryText,
    required this.appControlLabel,
    required this.commercial,
    required this.facilities,
    required this.selectedFacility,
    required this.options,
    required this.drafts,
    required this.items,
    required this.appControlPrice,
    required this.grandTotal,
    required this.onOptionSelected,
    required this.onFacilitySelected,
    required this.onAdd,
    required this.onRemove,
    required this.onInternalAccess,
  });

  final Color color;
  final String title;
  final String emptySummaryText;
  final String appControlLabel;
  final bool commercial;
  final List<_FacilityAutomationRowData> facilities;
  final _FacilityAutomationRowData? selectedFacility;
  final List<_EstimateOptionData> options;
  final List<_EstimateDraftControllers> drafts;
  final List<_EstimateLineItem> items;
  final int appControlPrice;
  final int grandTotal;
  final ValueChanged<_EstimateOptionData> onOptionSelected;
  final ValueChanged<_FacilityAutomationRowData> onFacilitySelected;
  final VoidCallback onAdd;
  final ValueChanged<int> onRemove;
  final VoidCallback onInternalAccess;

  @override
  Widget build(BuildContext context) {
    final tight = MediaQuery.sizeOf(context).width < 430;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(tight ? 10 : 18),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FBFF),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFDCE8FF)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: const Color(0xFF0C1D4A),
                        fontSize: tight ? 18 : 24,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
              Opacity(
                opacity: 0.16,
                child: IconButton(
                  tooltip: 'Internal pricing',
                  onPressed: onInternalAccess,
                  icon: const Icon(Icons.admin_panel_settings_rounded),
                ),
              ),
            ],
          ),
          SizedBox(height: tight ? 10 : 16),
          LayoutBuilder(
            builder: (context, constraints) {
              final wide = constraints.maxWidth >= 880;
              final leftWidth = wide
                  ? (constraints.maxWidth - 16) * 0.55
                  : constraints.maxWidth;
              final rightWidth = wide
                  ? (constraints.maxWidth - 16) * 0.45
                  : constraints.maxWidth;
              final children = [
                SizedBox(
                  width: leftWidth,
                  child: _EstimatorBuilderPanel(
                    color: color,
                    commercial: commercial,
                    facilities: facilities,
                    selectedFacility: selectedFacility,
                    options:
                        options.where((option) => option.id != 'app').toList(),
                    drafts: drafts,
                    onFacilitySelected: onFacilitySelected,
                    onOptionSelected: onOptionSelected,
                    onAdd: onAdd,
                  ),
                ),
                SizedBox(
                  width: rightWidth,
                  child: _EstimateSummaryPanel(
                    color: color,
                    items: items,
                    appControlPrice: appControlPrice,
                    appControlLabel: appControlLabel,
                    emptyText: emptySummaryText,
                    grandTotal: grandTotal,
                    onRemove: onRemove,
                  ),
                ),
              ];
              return Wrap(
                spacing: tight ? 8 : 16,
                runSpacing: tight ? 8 : 16,
                children: children,
              );
            },
          ),
          SizedBox(height: tight ? 7 : 12),
          Text(
            'Approximate estimate only. Final pricing may vary by wiring, brand, device model, and site condition.',
            style: TextStyle(
              color: const Color(0xFF6B7896),
              fontSize: tight ? 9.5 : 11.5,
              height: tight ? 1.15 : 1.3,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _EstimatorBuilderPanel extends StatelessWidget {
  const _EstimatorBuilderPanel({
    required this.color,
    required this.commercial,
    required this.facilities,
    required this.selectedFacility,
    required this.options,
    required this.drafts,
    required this.onFacilitySelected,
    required this.onOptionSelected,
    required this.onAdd,
  });

  final Color color;
  final bool commercial;
  final List<_FacilityAutomationRowData> facilities;
  final _FacilityAutomationRowData? selectedFacility;
  final List<_EstimateOptionData> options;
  final List<_EstimateDraftControllers> drafts;
  final ValueChanged<_FacilityAutomationRowData> onFacilitySelected;
  final ValueChanged<_EstimateOptionData> onOptionSelected;
  final VoidCallback onAdd;

  @override
  Widget build(BuildContext context) {
    final tight = MediaQuery.sizeOf(context).width < 430;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (commercial) ...[
          _FacilityDropdown(
            color: color,
            facilities: facilities,
            selectedFacility: selectedFacility ?? facilities.first,
            onChanged: onFacilitySelected,
          ),
          SizedBox(height: tight ? 8 : 12),
        ],
        _EstimateOptionSelector(
          color: color,
          commercial: commercial,
          tight: tight,
          options: options,
          selectedIds: drafts.map((draft) => draft.option.id).toSet(),
          onOptionSelected: onOptionSelected,
        ),
        SizedBox(height: tight ? 8 : 14),
        _EstimateDraftsPanel(
          color: color,
          tight: tight,
          drafts: drafts,
          onAdd: onAdd,
        ),
      ],
    );
  }
}

class _EstimateDraftsPanel extends StatelessWidget {
  const _EstimateDraftsPanel({
    required this.color,
    required this.tight,
    required this.drafts,
    required this.onAdd,
  });

  final Color color;
  final bool tight;
  final List<_EstimateDraftControllers> drafts;
  final VoidCallback onAdd;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(tight ? 10 : 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withValues(alpha: 0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (drafts.isEmpty)
            Text(
              'Select one or more items to add.',
              style: TextStyle(
                color: const Color(0xFF52617F),
                fontSize: tight ? 11 : 12.5,
                fontWeight: FontWeight.w700,
              ),
            )
          else
            ...drafts.asMap().entries.map((entry) {
              final draft = entry.value;
              return Padding(
                padding: EdgeInsets.only(
                  bottom:
                      entry.key == drafts.length - 1 ? 0 : (tight ? 10 : 12),
                ),
                child: _EstimateDraftRow(
                  draft: draft,
                  tight: tight,
                ),
              );
            }),
          SizedBox(height: tight ? 8 : 12),
          Align(
            alignment: Alignment.centerRight,
            child: FilledButton.icon(
              style: FilledButton.styleFrom(
                visualDensity: VisualDensity.compact,
                padding: EdgeInsets.symmetric(
                  horizontal: tight ? 10 : 14,
                  vertical: tight ? 7 : 10,
                ),
                textStyle: TextStyle(fontSize: tight ? 11 : 13),
              ),
              onPressed: drafts.isEmpty ? null : onAdd,
              icon: Icon(Icons.add_rounded, size: tight ? 16 : 18),
              label: const Text('Add'),
            ),
          ),
        ],
      ),
    );
  }
}

class _EstimateDraftRow extends StatelessWidget {
  const _EstimateDraftRow({
    required this.draft,
    required this.tight,
  });

  final _EstimateDraftControllers draft;
  final bool tight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          draft.option.title,
          style: TextStyle(
            color: const Color(0xFF0C1D4A),
            fontSize: tight ? 14 : 16,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(height: tight ? 7 : 10),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: _EstimateTextField(
                controller: draft.roomController,
                label: 'Room / Area',
                hint: draft.option.defaultRoom,
                tight: tight,
              ),
            ),
            SizedBox(width: tight ? 6 : 10),
            Expanded(
              flex: 3,
              child: _EstimateTextField(
                controller: draft.quantityController,
                label: 'Qty',
                hint: draft.option.unitLabel,
                tight: tight,
                digitsOnly: true,
              ),
            ),
            SizedBox(width: tight ? 6 : 10),
            Expanded(
              flex: 4,
              child: _EstimateTextField(
                controller: draft.unitPriceController,
                label: 'Unit price',
                prefix: 'Rs ',
                tight: tight,
                digitsOnly: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _EstimateOptionSelector extends StatelessWidget {
  const _EstimateOptionSelector({
    required this.color,
    required this.commercial,
    required this.tight,
    required this.options,
    required this.selectedIds,
    required this.onOptionSelected,
  });

  final Color color;
  final bool commercial;
  final bool tight;
  final List<_EstimateOptionData> options;
  final Set<String> selectedIds;
  final ValueChanged<_EstimateOptionData> onOptionSelected;

  @override
  Widget build(BuildContext context) {
    if (commercial) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (final option in options) ...[
              SizedBox(
                width: tight ? 112 : 132,
                child: _EstimateOptionButton(
                  color: color,
                  tight: tight,
                  option: option,
                  selected: selectedIds.contains(option.id),
                  onTap: () => onOptionSelected(option),
                ),
              ),
              if (option != options.last) SizedBox(width: tight ? 6 : 10),
            ],
          ],
        ),
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final columns = tight ? 4 : 3;
        final gap = tight ? 6.0 : 10.0;
        return Wrap(
          spacing: gap,
          runSpacing: gap,
          children: options.map((option) {
            return SizedBox(
              width:
                  tight ? _gridWidth(constraints.maxWidth, columns, gap) : 142,
              child: _EstimateOptionButton(
                color: color,
                tight: tight,
                option: option,
                selected: selectedIds.contains(option.id),
                onTap: () => onOptionSelected(option),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}

class _EstimateOptionButton extends StatelessWidget {
  const _EstimateOptionButton({
    required this.color,
    required this.tight,
    required this.option,
    required this.selected,
    required this.onTap,
  });

  final Color color;
  final bool tight;
  final _EstimateOptionData option;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: onTap,
      child: Ink(
        padding: EdgeInsets.symmetric(
          horizontal: tight ? 5 : 12,
          vertical: tight ? 7 : 12,
        ),
        decoration: BoxDecoration(
          color: selected ? color.withValues(alpha: 0.1) : Colors.white,
          borderRadius: BorderRadius.circular(tight ? 11 : 14),
          border: Border.all(
            color: selected
                ? color.withValues(alpha: 0.35)
                : color.withValues(alpha: 0.1),
          ),
          boxShadow: [
            BoxShadow(
              color: color.withValues(alpha: selected ? 0.12 : 0.045),
              blurRadius: tight ? 8 : 12,
              offset: Offset(0, tight ? 3 : 6),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(option.icon, color: color, size: tight ? 18 : 22),
                if (selected)
                  Positioned(
                    right: -8,
                    top: -7,
                    child: Icon(
                      Icons.check_circle_rounded,
                      color: color,
                      size: tight ? 12 : 14,
                    ),
                  ),
              ],
            ),
            SizedBox(height: tight ? 4 : 8),
            Text(
              option.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF0C1D4A),
                fontSize: tight ? 8.7 : 12,
                height: tight ? 1.05 : 1.15,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FacilityDropdown extends StatelessWidget {
  const _FacilityDropdown({
    required this.color,
    required this.facilities,
    required this.selectedFacility,
    required this.onChanged,
  });

  final Color color;
  final List<_FacilityAutomationRowData> facilities;
  final _FacilityAutomationRowData selectedFacility;
  final ValueChanged<_FacilityAutomationRowData> onChanged;

  @override
  Widget build(BuildContext context) {
    final tight = MediaQuery.sizeOf(context).width < 430;
    return DropdownButtonFormField<_FacilityAutomationRowData>(
      value: selectedFacility,
      isExpanded: true,
      icon: Icon(Icons.keyboard_arrow_down_rounded, color: color),
      decoration: InputDecoration(
        labelText: 'Facility',
        filled: true,
        fillColor: Colors.white,
        isDense: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: tight ? 10 : 12,
          vertical: tight ? 10 : 13,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: color.withValues(alpha: 0.14)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: color.withValues(alpha: 0.14)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: color.withValues(alpha: 0.34)),
        ),
      ),
      items: facilities
          .map(
            (facility) => DropdownMenuItem<_FacilityAutomationRowData>(
              value: facility,
              child: Row(
                children: [
                  Icon(facility.icon, color: color, size: tight ? 18 : 20),
                  SizedBox(width: tight ? 8 : 10),
                  Expanded(
                    child: Text(
                      facility.facility,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: const Color(0xFF0C1D4A),
                        fontSize: tight ? 12 : 13.5,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
      onChanged: (facility) {
        if (facility != null) onChanged(facility);
      },
    );
  }
}

class _EstimateTextField extends StatelessWidget {
  const _EstimateTextField({
    required this.controller,
    required this.label,
    required this.tight,
    this.hint,
    this.prefix,
    this.digitsOnly = false,
  });

  final TextEditingController controller;
  final String label;
  final bool tight;
  final String? hint;
  final String? prefix;
  final bool digitsOnly;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: digitsOnly ? TextInputType.number : TextInputType.text,
      inputFormatters:
          digitsOnly ? [FilteringTextInputFormatter.digitsOnly] : null,
      style: TextStyle(fontSize: tight ? 11 : null),
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixText: prefix,
        isDense: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: tight ? 7 : 10,
          vertical: tight ? 8 : 12,
        ),
        border: const OutlineInputBorder(),
      ),
    );
  }
}

class _EstimateSummaryPanel extends StatelessWidget {
  const _EstimateSummaryPanel({
    required this.color,
    required this.items,
    required this.appControlPrice,
    required this.appControlLabel,
    required this.emptyText,
    required this.grandTotal,
    required this.onRemove,
  });

  final Color color;
  final List<_EstimateLineItem> items;
  final int appControlPrice;
  final String appControlLabel;
  final String emptyText;
  final int grandTotal;
  final ValueChanged<int> onRemove;

  @override
  Widget build(BuildContext context) {
    final tight = MediaQuery.sizeOf(context).width < 430;
    final subtleBlue = color.withValues(alpha: 0.055);
    final lineBorder = color.withValues(alpha: 0.13);
    return Container(
      padding: EdgeInsets.all(tight ? 10 : 14),
      decoration: BoxDecoration(
        color: const Color(0xFFFDFEFF),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withValues(alpha: 0.1)),
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.05),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Estimate Summary',
            style: TextStyle(
              color: const Color(0xFF0C1D4A),
              fontSize: tight ? 14 : 16,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: tight ? 6 : 10),
          if (items.isEmpty)
            Text(
              emptyText,
              style: TextStyle(
                color: const Color(0xFF52617F),
                fontSize: tight ? 10.5 : 12.5,
                height: tight ? 1.15 : 1.3,
              ),
            )
          else
            ...items.asMap().entries.map((entry) {
              final item = entry.value;
              return Container(
                margin: EdgeInsets.only(bottom: tight ? 7 : 9),
                padding: EdgeInsets.symmetric(
                  horizontal: tight ? 8 : 10,
                  vertical: tight ? 7 : 9,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, subtleBlue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: lineBorder),
                ),
                child: Row(
                  children: [
                    Container(
                      width: tight ? 30 : 36,
                      height: tight ? 30 : 36,
                      decoration: BoxDecoration(
                        color: color.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        item.option.icon,
                        color: color,
                        size: tight ? 17 : 20,
                      ),
                    ),
                    SizedBox(width: tight ? 8 : 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.room,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: const Color(0xFF0C1D4A),
                              fontSize: tight ? 10.5 : 12.5,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(height: tight ? 1 : 2),
                          Text(
                            item.option.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: const Color(0xFF52617F),
                              fontSize: tight ? 9.5 : 11,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: tight ? 6 : 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Rs ${item.total}',
                          style: TextStyle(
                            color: color,
                            fontSize: tight ? 11.5 : 13,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(height: tight ? 1 : 2),
                        Text(
                          '${item.quantity} x ${item.unitPrice}',
                          style: TextStyle(
                            color: const Color(0xFF6A7894),
                            fontSize: tight ? 9 : 10.5,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: tight ? 4 : 8),
                    InkWell(
                      borderRadius: BorderRadius.circular(999),
                      onTap: () => onRemove(entry.key),
                      child: Container(
                        width: tight ? 26 : 30,
                        height: tight ? 26 : 30,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEFF4FF),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: color.withValues(alpha: 0.12),
                          ),
                        ),
                        child: Icon(
                          Icons.close_rounded,
                          color: const Color(0xFF33425F),
                          size: tight ? 16 : 18,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          Container(
            margin: EdgeInsets.only(bottom: tight ? 6 : 8),
            padding: EdgeInsets.symmetric(
              horizontal: tight ? 8 : 10,
              vertical: tight ? 7 : 9,
            ),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.065),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: color.withValues(alpha: 0.15)),
            ),
            child: Row(
              children: [
                Container(
                  width: tight ? 30 : 36,
                  height: tight ? 30 : 36,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.75),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.devices_rounded,
                    color: color,
                    size: tight ? 17 : 20,
                  ),
                ),
                SizedBox(width: tight ? 8 : 10),
                Expanded(
                  child: Text(
                    appControlLabel,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: const Color(0xFF0C1D4A),
                      fontSize: tight ? 10.5 : 12.5,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Text(
                  'Rs $appControlPrice',
                  style: TextStyle(
                    color: color,
                    fontSize: tight ? 12 : 13.5,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          Divider(height: tight ? 12 : 18),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: tight ? 10 : 12,
              vertical: tight ? 8 : 10,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFF6F9FF),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: color.withValues(alpha: 0.08)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Grand Total',
                    style: TextStyle(
                      color: const Color(0xFF0C1D4A),
                      fontSize: tight ? 13 : 15,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Text(
                  'Rs $grandTotal',
                  style: TextStyle(
                    color: color,
                    fontSize: tight ? 16 : 19,
                    fontWeight: FontWeight.w900,
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

class _InternalPricingPanel extends StatefulWidget {
  const _InternalPricingPanel({
    super.key,
    required this.color,
    required this.options,
    required this.prices,
    required this.onSave,
    required this.onBack,
  });

  final Color color;
  final List<_EstimateOptionData> options;
  final Map<String, int> prices;
  final ValueChanged<Map<String, int>> onSave;
  final VoidCallback onBack;

  @override
  State<_InternalPricingPanel> createState() => _InternalPricingPanelState();
}

class _InternalPricingPanelState extends State<_InternalPricingPanel> {
  late final Map<String, TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _controllers = {
      for (final option in widget.options)
        option.id: TextEditingController(
          text: '${widget.prices[option.id] ?? option.defaultPrice}',
        ),
    };
  }

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  void _save() {
    widget.onSave({
      for (final option in widget.options)
        option.id: int.tryParse(_controllers[option.id]?.text ?? '') ??
            option.defaultPrice,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: widget.color.withValues(alpha: 0.12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton.filledTonal(
                tooltip: 'Back to estimator',
                onPressed: widget.onBack,
                icon: const Icon(Icons.arrow_back_rounded),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Text(
                  'Internal Price Setup',
                  style: TextStyle(
                    color: Color(0xFF0C1D4A),
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              FilledButton.icon(
                onPressed: _save,
                icon: const Icon(Icons.save_rounded),
                label: const Text('Save'),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Update default unit prices used by the customer estimate builder.',
            style: TextStyle(
              color: Color(0xFF52617F),
              fontSize: 12.5,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 16),
          LayoutBuilder(
            builder: (context, constraints) {
              final columns = constraints.maxWidth >= 760 ? 2 : 1;
              return Wrap(
                spacing: 12,
                runSpacing: 12,
                children: widget.options.map((option) {
                  return SizedBox(
                    width: _gridWidth(constraints.maxWidth, columns, 12),
                    child: TextField(
                      controller: _controllers[option.id],
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        prefixIcon: Icon(option.icon, color: widget.color),
                        labelText: option.title,
                        prefixText: 'Rs ',
                        border: const OutlineInputBorder(),
                      ),
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _FacilityAutomationTable extends StatelessWidget {
  const _FacilityAutomationTable({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    final rows = _facilityAutomationRows();
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FBFF),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          const Text(
            'Facility Automation Requirements',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF0C1D4A),
              fontSize: 28,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'IoT automation use cases by commercial and community facility type',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFF52617F), fontSize: 13),
          ),
          const SizedBox(height: 18),
          ...rows.map(
            (row) => _FacilityAutomationRow(row: row, color: color),
          ),
        ],
      ),
    );
  }
}

class _FacilityAutomationRow extends StatelessWidget {
  const _FacilityAutomationRow({required this.row, required this.color});

  final _FacilityAutomationRowData row;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFDCE8FF)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150,
            child: Column(
              children: [
                Icon(row.icon, color: color, size: 36),
                const SizedBox(height: 8),
                Text(
                  row.facility,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF0C1D4A),
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                    height: 1.15,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (final item in row.items) ...[
                    _AutomationElevatedButton(
                      item: item,
                      color: color,
                      compact: true,
                    ),
                    if (item != row.items.last) const SizedBox(width: 10),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<_FacilityAutomationRowData> _facilityAutomationRows() {
  return const [
    _FacilityAutomationRowData(
      icon: Icons.hotel_rounded,
      facility: 'Hotel / Lodge',
      items: [
        _AutomationButtonData(
            icon: Icons.lightbulb_outline_rounded, label: 'Room Lighting / AC'),
        _AutomationButtonData(
            icon: Icons.lock_open_rounded, label: 'Smart Door Access'),
        _AutomationButtonData(
            icon: Icons.light_mode_outlined, label: 'Lobby Lighting'),
        _AutomationButtonData(
            icon: Icons.plumbing_rounded, label: 'Water Pump'),
        _AutomationButtonData(
            icon: Icons.directions_run_rounded, label: 'Corridor Motion'),
        _AutomationButtonData(
            icon: Icons.energy_savings_leaf_outlined, label: 'Energy Saving'),
        _AutomationButtonData(
            icon: Icons.local_fire_department_outlined, label: 'Fire / Smoke'),
      ],
    ),
    _FacilityAutomationRowData(
      icon: Icons.school_rounded,
      facility: 'School / College',
      items: [
        _AutomationButtonData(
            icon: Icons.co_present_rounded, label: 'Classroom Lights'),
        _AutomationButtonData(
            icon: Icons.local_fire_department_outlined, label: 'Lab Safety'),
        _AutomationButtonData(icon: Icons.badge_outlined, label: 'Attendance'),
        _AutomationButtonData(
            icon: Icons.light_mode_outlined, label: 'Corridor Lights'),
        _AutomationButtonData(
            icon: Icons.plumbing_rounded, label: 'Water Pump'),
        _AutomationButtonData(icon: Icons.videocam_outlined, label: 'Security'),
        _AutomationButtonData(icon: Icons.bar_chart_rounded, label: 'Energy'),
      ],
    ),
    _FacilityAutomationRowData(
      icon: Icons.warehouse_rounded,
      facility: 'Warehouse / Godown',
      items: [
        _AutomationButtonData(
            icon: Icons.light_mode_outlined, label: 'Loading Lights'),
        _AutomationButtonData(
            icon: Icons.lock_open_rounded, label: 'Stock Access'),
        _AutomationButtonData(
            icon: Icons.local_fire_department_outlined, label: 'Fire / Smoke'),
        _AutomationButtonData(
            icon: Icons.directions_run_rounded, label: 'After-Hours'),
        _AutomationButtonData(
            icon: Icons.sensor_door_outlined, label: 'Door Monitor'),
        _AutomationButtonData(icon: Icons.bar_chart_rounded, label: 'Energy'),
        _AutomationButtonData(icon: Icons.air_rounded, label: 'Ventilation'),
      ],
    ),
    _FacilityAutomationRowData(
      icon: Icons.fitness_center_rounded,
      facility: 'Gym / Fitness Center',
      items: [
        _AutomationButtonData(
            icon: Icons.ac_unit_rounded, label: 'AC Schedule'),
        _AutomationButtonData(icon: Icons.lock_open_rounded, label: 'Access'),
        _AutomationButtonData(
            icon: Icons.power_rounded, label: 'Equipment Power'),
        _AutomationButtonData(
            icon: Icons.light_mode_outlined, label: 'Lighting Scenes'),
        _AutomationButtonData(
            icon: Icons.music_note_rounded, label: 'Music / Display'),
        _AutomationButtonData(
            icon: Icons.door_sliding_outlined, label: 'Locker Monitor'),
        _AutomationButtonData(icon: Icons.bar_chart_rounded, label: 'Energy'),
      ],
    ),
    _FacilityAutomationRowData(
      icon: Icons.spa_rounded,
      facility: 'Salon / Spa',
      items: [
        _AutomationButtonData(
            icon: Icons.light_mode_outlined, label: 'Lighting Scenes'),
        _AutomationButtonData(
            icon: Icons.ac_unit_rounded, label: 'AC Schedule'),
        _AutomationButtonData(
            icon: Icons.water_drop_outlined, label: 'Water Heater'),
        _AutomationButtonData(
            icon: Icons.chair_outlined, label: 'Waiting Comfort'),
        _AutomationButtonData(
            icon: Icons.badge_outlined, label: 'Staff Access'),
        _AutomationButtonData(icon: Icons.videocam_outlined, label: 'Security'),
        _AutomationButtonData(
            icon: Icons.local_fire_department_outlined, label: 'Fire / Smoke'),
      ],
    ),
    _FacilityAutomationRowData(
      icon: Icons.account_balance_rounded,
      facility: 'Bank / Finance Office',
      items: [
        _AutomationButtonData(icon: Icons.lock_rounded, label: 'Strong Access'),
        _AutomationButtonData(icon: Icons.dns_outlined, label: 'Server Room'),
        _AutomationButtonData(
            icon: Icons.battery_charging_full_rounded, label: 'UPS Power'),
        _AutomationButtonData(
            icon: Icons.local_fire_department_outlined, label: 'Fire / Smoke'),
        _AutomationButtonData(
            icon: Icons.security_rounded, label: 'After-Hours'),
        _AutomationButtonData(
            icon: Icons.ac_unit_rounded, label: 'AC Schedule'),
        _AutomationButtonData(icon: Icons.bar_chart_rounded, label: 'Energy'),
      ],
    ),
    _FacilityAutomationRowData(
      icon: Icons.local_pharmacy_rounded,
      facility: 'Pharmacy / Medical Store',
      items: [
        _AutomationButtonData(
            icon: Icons.device_thermostat_rounded, label: 'Fridge Monitor'),
        _AutomationButtonData(
            icon: Icons.battery_alert_rounded, label: 'Backup Alerts'),
        _AutomationButtonData(icon: Icons.videocam_outlined, label: 'Security'),
        _AutomationButtonData(
            icon: Icons.lightbulb_outline_rounded, label: 'Lighting'),
        _AutomationButtonData(
            icon: Icons.ac_unit_rounded, label: 'AC Schedule'),
        _AutomationButtonData(
            icon: Icons.local_fire_department_outlined, label: 'Fire / Smoke'),
        _AutomationButtonData(
            icon: Icons.lock_rounded, label: 'Storage Access'),
      ],
    ),
    _FacilityAutomationRowData(
      icon: Icons.shopping_cart_rounded,
      facility: 'Supermarket / Grocery',
      items: [
        _AutomationButtonData(
            icon: Icons.device_thermostat_rounded, label: 'Cold Storage'),
        _AutomationButtonData(
            icon: Icons.light_mode_outlined, label: 'Display Lighting'),
        _AutomationButtonData(
            icon: Icons.point_of_sale_rounded, label: 'Counter Power'),
        _AutomationButtonData(
            icon: Icons.ac_unit_rounded, label: 'AC Schedule'),
        _AutomationButtonData(icon: Icons.bar_chart_rounded, label: 'Energy'),
        _AutomationButtonData(icon: Icons.videocam_outlined, label: 'Security'),
        _AutomationButtonData(
            icon: Icons.local_fire_department_outlined, label: 'Fire / Smoke'),
      ],
    ),
    _FacilityAutomationRowData(
      icon: Icons.factory_rounded,
      facility: 'Factory / Small Workshop',
      items: [
        _AutomationButtonData(
            icon: Icons.electrical_services_rounded, label: 'Machine Power'),
        _AutomationButtonData(icon: Icons.air_rounded, label: 'Exhaust'),
        _AutomationButtonData(
            icon: Icons.health_and_safety_outlined, label: 'Worker Safety'),
        _AutomationButtonData(
            icon: Icons.local_fire_department_outlined, label: 'Fire / Smoke'),
        _AutomationButtonData(icon: Icons.lock_rounded, label: 'Area Access'),
        _AutomationButtonData(icon: Icons.bar_chart_rounded, label: 'Energy'),
        _AutomationButtonData(
            icon: Icons.light_mode_outlined, label: 'Loading Lights'),
      ],
    ),
    _FacilityAutomationRowData(
      icon: Icons.co_present_rounded,
      facility: 'Co-working Space',
      items: [
        _AutomationButtonData(
            icon: Icons.meeting_room_outlined, label: 'Meeting Room'),
        _AutomationButtonData(icon: Icons.lock_open_rounded, label: 'Access'),
        _AutomationButtonData(
            icon: Icons.ac_unit_rounded, label: 'AC Schedule'),
        _AutomationButtonData(icon: Icons.sensors_rounded, label: 'Occupancy'),
        _AutomationButtonData(
            icon: Icons.badge_outlined, label: 'Visitor Access'),
        _AutomationButtonData(icon: Icons.bar_chart_rounded, label: 'Energy'),
        _AutomationButtonData(
            icon: Icons.local_fire_department_outlined, label: 'Pantry Safety'),
      ],
    ),
    _FacilityAutomationRowData(
      icon: Icons.celebration_rounded,
      facility: 'Community Hall / Marriage Hall',
      items: [
        _AutomationButtonData(
            icon: Icons.light_mode_outlined, label: 'Stage Lighting'),
        _AutomationButtonData(icon: Icons.ac_unit_rounded, label: 'Hall AC'),
        _AutomationButtonData(
            icon: Icons.local_fire_department_outlined,
            label: 'Kitchen Safety'),
        _AutomationButtonData(
            icon: Icons.plumbing_rounded, label: 'Water Pump'),
        _AutomationButtonData(icon: Icons.signpost_rounded, label: 'Signboard'),
        _AutomationButtonData(icon: Icons.bar_chart_rounded, label: 'Energy'),
        _AutomationButtonData(icon: Icons.videocam_outlined, label: 'Security'),
      ],
    ),
    _FacilityAutomationRowData(
      icon: Icons.church_rounded,
      facility: 'Temple / Church / Prayer Hall',
      items: [
        _AutomationButtonData(
            icon: Icons.light_mode_outlined, label: 'Prayer Lights'),
        _AutomationButtonData(
            icon: Icons.volume_up_rounded, label: 'Sound System'),
        _AutomationButtonData(
            icon: Icons.inventory_2_outlined, label: 'Donation Box'),
        _AutomationButtonData(
            icon: Icons.park_outlined, label: 'Pathway Lights'),
        _AutomationButtonData(icon: Icons.videocam_outlined, label: 'Security'),
        _AutomationButtonData(
            icon: Icons.local_fire_department_outlined, label: 'Fire / Smoke'),
      ],
    ),
    _FacilityAutomationRowData(
      icon: Icons.ev_station_rounded,
      facility: 'Petrol Pump / EV Charging Point',
      items: [
        _AutomationButtonData(
            icon: Icons.local_fire_department_outlined, label: 'Gas / Fire'),
        _AutomationButtonData(
            icon: Icons.light_mode_outlined, label: 'Forecourt Lights'),
        _AutomationButtonData(
            icon: Icons.settings_input_component_rounded, label: 'Equipment'),
        _AutomationButtonData(
            icon: Icons.bar_chart_rounded, label: 'Load Monitor'),
        _AutomationButtonData(
            icon: Icons.lock_rounded, label: 'Restricted Access'),
        _AutomationButtonData(icon: Icons.videocam_outlined, label: 'Security'),
        _AutomationButtonData(
            icon: Icons.emergency_rounded, label: 'Emergency Alert'),
      ],
    ),
    _FacilityAutomationRowData(
      icon: Icons.cottage_rounded,
      facility: 'Farmhouse / Resort',
      items: [
        _AutomationButtonData(
            icon: Icons.light_mode_outlined, label: 'Outdoor Lights'),
        _AutomationButtonData(
            icon: Icons.garage_rounded, label: 'Gate Control'),
        _AutomationButtonData(
            icon: Icons.plumbing_rounded, label: 'Pump Control'),
        _AutomationButtonData(icon: Icons.grass_rounded, label: 'Irrigation'),
        _AutomationButtonData(icon: Icons.cottage_outlined, label: 'Room AC'),
        _AutomationButtonData(icon: Icons.videocam_outlined, label: 'Security'),
        _AutomationButtonData(icon: Icons.bar_chart_rounded, label: 'Energy'),
      ],
    ),
  ];
}

List<_EstimateOptionData> _commercialEstimateOptionsForFacility(
  _FacilityAutomationRowData facility,
) {
  return facility.items
      .map((item) => _commercialEstimateOption(facility, item))
      .toList();
}

_EstimateOptionData _commercialEstimateOption(
  _FacilityAutomationRowData facility,
  _AutomationButtonData item,
) {
  return _EstimateOptionData(
    id: 'facility_${_estimateIdPart(facility.facility)}_${_estimateIdPart(item.label)}',
    icon: item.icon,
    title: item.label,
    unitLabel: _commercialUnitLabel(item.label),
    defaultRoom: facility.facility,
    defaultPrice: _commercialDefaultPrice(item.label),
    included: [
      '${facility.facility} automation point',
      _commercialIncludedLine(item.label),
      'Mobile and web dashboard control',
      'Approximate fitting estimate',
    ],
  );
}

String _estimateIdPart(String value) {
  final lower = value.toLowerCase();
  final buffer = StringBuffer();
  var lastWasUnderscore = false;
  for (final codeUnit in lower.codeUnits) {
    final isLetter = codeUnit >= 97 && codeUnit <= 122;
    final isNumber = codeUnit >= 48 && codeUnit <= 57;
    if (isLetter || isNumber) {
      buffer.writeCharCode(codeUnit);
      lastWasUnderscore = false;
    } else if (!lastWasUnderscore) {
      buffer.write('_');
      lastWasUnderscore = true;
    }
  }
  return buffer.toString().replaceAll(RegExp(r'_+$'), '');
}

String _commercialUnitLabel(String label) {
  final lower = label.toLowerCase();
  if (lower.contains('access') || lower.contains('door')) return 'doors';
  if (lower.contains('camera') || lower.contains('security')) {
    return 'camera points';
  }
  if (lower.contains('pump') || lower.contains('water')) return 'pump sets';
  if (lower.contains('energy') || lower.contains('load')) return 'meters';
  if (lower.contains('ac') || lower.contains('hvac')) return 'AC points';
  if (lower.contains('light')) return 'lighting zones';
  if (lower.contains('fire') || lower.contains('smoke')) return 'alert points';
  if (lower.contains('motion') || lower.contains('occupancy')) {
    return 'sensor points';
  }
  return 'points';
}

int _commercialDefaultPrice(String label) {
  final lower = label.toLowerCase();
  if (lower.contains('light')) return 4500;
  if (lower.contains('access') ||
      lower.contains('lock') ||
      lower.contains('door')) {
    return 6500;
  }
  if (lower.contains('security') || lower.contains('cctv')) return 3500;
  if (lower.contains('fire') ||
      lower.contains('smoke') ||
      lower.contains('gas') ||
      lower.contains('safety') ||
      lower.contains('alert')) {
    return 3000;
  }
  if (lower.contains('energy') ||
      lower.contains('load') ||
      lower.contains('power') ||
      lower.contains('ups')) {
    return 7500;
  }
  if (lower.contains('pump') ||
      lower.contains('water') ||
      lower.contains('irrigation')) {
    return 8500;
  }
  if (lower.contains('ac') ||
      lower.contains('hvac') ||
      lower.contains('fridge') ||
      lower.contains('cold')) {
    return 5500;
  }
  if (lower.contains('motion') ||
      lower.contains('occupancy') ||
      lower.contains('after-hours')) {
    return 2200;
  }
  return 4000;
}

String _commercialIncludedLine(String label) {
  final lower = label.toLowerCase();
  if (lower.contains('access') ||
      lower.contains('lock') ||
      lower.contains('door')) {
    return 'Access device and door-status sensor ready';
  }
  if (lower.contains('security')) return 'Remote monitoring ready';
  if (lower.contains('fire') ||
      lower.contains('smoke') ||
      lower.contains('gas')) {
    return 'Safety sensor and alert workflow ready';
  }
  if (lower.contains('energy') ||
      lower.contains('load') ||
      lower.contains('power')) {
    return 'Energy monitoring and usage alerts ready';
  }
  if (lower.contains('pump') || lower.contains('water')) {
    return 'Pump control with sensor trigger option';
  }
  if (lower.contains('ac') ||
      lower.contains('fridge') ||
      lower.contains('cold')) {
    return 'Temperature schedule and monitoring ready';
  }
  if (lower.contains('motion') || lower.contains('occupancy')) {
    return 'Presence-based trigger rule ready';
  }
  if (lower.contains('light')) return 'Lighting schedule and scene setup';
  return 'Commercial automation setup ready';
}

// Kept temporarily while the image-based mockups are phased out.
// ignore: unused_element
class _InteractiveAutomationImage extends StatelessWidget {
  const _InteractiveAutomationImage({
    required this.assetPath,
    required this.color,
  });

  final String assetPath;
  final Color color;

  bool get _isFacilityTable => assetPath.contains('facility_automation');

  @override
  Widget build(BuildContext context) {
    final aspectRatio = _isFacilityTable ? 864 / 1821 : 1536 / 1024;
    final hotspots = _isFacilityTable
        ? _facilityAutomationHotspots()
        : _smartHomeAutomationHotspots();

    return AspectRatio(
      aspectRatio: aspectRatio,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                assetPath,
                fit: BoxFit.fill,
                errorBuilder: (context, error, stackTrace) {
                  return _SmartHomeAutomationFallback(color: color);
                },
              ),
              ...hotspots.map(
                (hotspot) => _ImageHotspotButton(
                  hotspot: hotspot,
                  color: color,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  onTap: () {
                    debugPrint('Automation selected: ${hotspot.label}');
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _AutomationHotspot {
  const _AutomationHotspot({
    required this.label,
    required this.x,
    required this.y,
    required this.width,
    required this.height,
  });

  final String label;
  final double x;
  final double y;
  final double width;
  final double height;
}

class _ImageHotspotButton extends StatefulWidget {
  const _ImageHotspotButton({
    required this.hotspot,
    required this.color,
    required this.width,
    required this.height,
    required this.onTap,
  });

  final _AutomationHotspot hotspot;
  final Color color;
  final double width;
  final double height;
  final VoidCallback onTap;

  @override
  State<_ImageHotspotButton> createState() => _ImageHotspotButtonState();
}

class _ImageHotspotButtonState extends State<_ImageHotspotButton> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final left = widget.hotspot.x * widget.width;
    final top = widget.hotspot.y * widget.height;
    final targetWidth = widget.hotspot.width * widget.width;
    final targetHeight = widget.hotspot.height * widget.height;

    return Positioned(
      left: left,
      top: top,
      width: targetWidth,
      height: targetHeight,
      child: Tooltip(
        message: widget.hotspot.label,
        child: Semantics(
          button: true,
          label: widget.hotspot.label,
          child: GestureDetector(
            onTapDown: (_) => setState(() => _pressed = true),
            onTapCancel: () => setState(() => _pressed = false),
            onTapUp: (_) => setState(() => _pressed = false),
            onTap: widget.onTap,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 140),
              curve: Curves.easeOutCubic,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: _pressed ? 0.16 : 0.012),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: widget.color.withValues(alpha: _pressed ? 0.38 : 0.07),
                  width: _pressed ? 1.2 : 0.7,
                ),
                boxShadow: [
                  BoxShadow(
                    color:
                        widget.color.withValues(alpha: _pressed ? 0.16 : 0.045),
                    blurRadius: _pressed ? 10 : 5,
                    offset: Offset(0, _pressed ? 4 : 2),
                  ),
                ],
              ),
              child: const SizedBox.expand(),
            ),
          ),
        ),
      ),
    );
  }
}

List<_AutomationHotspot> _smartHomeAutomationHotspots() {
  const labels = [
    'Smart Lighting Control',
    'Fan & Appliance Control',
    'Room-Wise Automation',
    'Scenes & Modes',
    'Schedule-Based Automation',
    'Curtain & Gate Automation',
    'Climate Control',
    'Water Motor / Pump Automation',
    'Motion Sensing Automation',
    'Proximity Sensing Automation',
  ];

  return [
    for (var index = 0; index < labels.length; index++)
      _AutomationHotspot(
        label: labels[index],
        x: 0.055,
        y: 0.277 + index * 0.069,
        width: 0.046,
        height: 0.048,
      ),
  ];
}

List<_AutomationHotspot> _facilityAutomationHotspots() {
  const rows = [
    [
      'Hotel / Lodge - Room Lighting / AC',
      'Hotel / Lodge - Smart Door Access',
      'Hotel / Lodge - Lobby Lighting',
      'Hotel / Lodge - Water Pump Automation',
      'Hotel / Lodge - Corridor Motion Lighting',
      'Hotel / Lodge - Guest Room Energy Saving',
      'Hotel / Lodge - Fire / Smoke Safety',
    ],
    [
      'School / College - Classroom Lighting Schedules',
      'School / College - Lab Gas / Fire Safety',
      'School / College - Attendance / Access Control',
      'School / College - Corridor Lighting',
      'School / College - Water Pump Automation',
      'School / College - Security Monitoring',
      'School / College - Energy Monitoring',
    ],
    [
      'Warehouse / Godown - Loading Area Lighting',
      'Warehouse / Godown - Stock Room Access Control',
      'Warehouse / Godown - Fire / Smoke Safety',
      'Warehouse / Godown - After-Hours Motion Alerts',
      'Warehouse / Godown - Shutter / Door Monitoring',
      'Warehouse / Godown - Energy Monitoring',
      'Warehouse / Godown - Ventilation Control',
    ],
    [
      'Gym / Fitness Center - AC Scheduling',
      'Gym / Fitness Center - Access Control',
      'Gym / Fitness Center - Equipment Power Control',
      'Gym / Fitness Center - Lighting Scenes',
      'Gym / Fitness Center - Music / Display Control',
      'Gym / Fitness Center - Locker Room Monitoring',
      'Gym / Fitness Center - Energy Monitoring',
    ],
    [
      'Salon / Spa - Lighting Scenes',
      'Salon / Spa - AC Scheduling',
      'Salon / Spa - Water Heater Control',
      'Salon / Spa - Waiting Area Comfort',
      'Salon / Spa - Staff Room Access',
      'Salon / Spa - Security Monitoring',
      'Salon / Spa - Fire / Smoke Safety',
    ],
    [
      'Bank / Finance Office - Strong Access Control',
      'Bank / Finance Office - Cash / Server Room Monitoring',
      'Bank / Finance Office - UPS / Server Power Monitoring',
      'Bank / Finance Office - Fire / Smoke Safety',
      'Bank / Finance Office - After-Hours Security',
      'Bank / Finance Office - AC Scheduling',
      'Bank / Finance Office - Energy Monitoring',
    ],
    [
      'Pharmacy / Medical Store - Medicine / Vaccine Fridge Monitoring',
      'Pharmacy / Medical Store - Power Backup Alerts',
      'Pharmacy / Medical Store - Security Monitoring',
      'Pharmacy / Medical Store - Lighting Control',
      'Pharmacy / Medical Store - AC Scheduling',
      'Pharmacy / Medical Store - Fire / Smoke Safety',
      'Pharmacy / Medical Store - Restricted Storage Access',
    ],
    [
      'Supermarket / Grocery - Cold Storage Temperature Monitoring',
      'Supermarket / Grocery - Display Lighting',
      'Supermarket / Grocery - Billing Counter Power Control',
      'Supermarket / Grocery - AC Scheduling',
      'Supermarket / Grocery - Energy Monitoring',
      'Supermarket / Grocery - Security Monitoring',
      'Supermarket / Grocery - Fire / Smoke Safety',
    ],
    [
      'Factory / Small Workshop - Machine Power Monitoring',
      'Factory / Small Workshop - Exhaust / Ventilation Control',
      'Factory / Small Workshop - Worker Safety Alerts',
      'Factory / Small Workshop - Fire / Smoke Safety',
      'Factory / Small Workshop - Restricted Area Access',
      'Factory / Small Workshop - Energy Monitoring',
      'Factory / Small Workshop - Loading Area Lighting',
    ],
    [
      'Co-working Space - Meeting Room Automation',
      'Co-working Space - Access Control',
      'Co-working Space - AC Scheduling',
      'Co-working Space - Occupancy-Based Lighting',
      'Co-working Space - Visitor Access',
      'Co-working Space - Energy Monitoring',
      'Co-working Space - Pantry Safety Alerts',
    ],
    [
      'Community Hall / Marriage Hall - Stage Lighting Scenes',
      'Community Hall / Marriage Hall - Hall AC Scheduling',
      'Community Hall / Marriage Hall - Kitchen Gas / Fire Safety',
      'Community Hall / Marriage Hall - Water Pump Automation',
      'Community Hall / Marriage Hall - Outdoor / Signboard Lighting',
      'Community Hall / Marriage Hall - Energy Monitoring',
      'Community Hall / Marriage Hall - Security Monitoring',
    ],
    [
      'Temple / Church / Prayer Hall - Prayer Hall Lighting Schedules',
      'Temple / Church / Prayer Hall - Sound System Control',
      'Temple / Church / Prayer Hall - Donation Box Area Monitoring',
      'Temple / Church / Prayer Hall - Outdoor / Pathway Lighting',
      'Temple / Church / Prayer Hall - Security Monitoring',
      'Temple / Church / Prayer Hall - Fire / Smoke Safety',
    ],
    [
      'Petrol Pump / EV Charging Point - Safety Gas / Fire Alerts',
      'Petrol Pump / EV Charging Point - Forecourt Lighting',
      'Petrol Pump / EV Charging Point - Equipment Monitoring',
      'Petrol Pump / EV Charging Point - Energy / Load Monitoring',
      'Petrol Pump / EV Charging Point - Restricted Access',
      'Petrol Pump / EV Charging Point - Security Monitoring',
      'Petrol Pump / EV Charging Point - Emergency Shutoff Alert',
    ],
    [
      'Farmhouse / Resort - Outdoor Lighting',
      'Farmhouse / Resort - Gate Automation',
      'Farmhouse / Resort - Pump Automation',
      'Farmhouse / Resort - Irrigation Control',
      'Farmhouse / Resort - Cottage / Room Lighting and AC',
      'Farmhouse / Resort - Security Monitoring',
      'Farmhouse / Resort - Energy Monitoring',
    ],
  ];

  const xPositions = [0.29, 0.395, 0.5, 0.605, 0.71, 0.815, 0.92];
  final hotspots = <_AutomationHotspot>[];
  for (var row = 0; row < rows.length; row++) {
    for (var column = 0; column < rows[row].length; column++) {
      hotspots.add(
        _AutomationHotspot(
          label: rows[row][column],
          x: xPositions[column] - 0.043,
          y: 0.151 + row * 0.071,
          width: 0.086,
          height: 0.044,
        ),
      );
    }
  }
  return hotspots;
}

class _SmartHomeAutomationFallback extends StatelessWidget {
  const _SmartHomeAutomationFallback({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    const items = [
      ('Rooms', 'Control lights, plugs, and daily scenes'),
      ('Security', 'Monitor doors, alerts, and safety devices'),
      ('Energy', 'Track usage and plan smarter schedules'),
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFFF6F9FF),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        children: items.map((item) {
          return Container(
            width: 250,
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: color.withValues(alpha: 0.12)),
            ),
            child: Row(
              children: [
                Icon(Icons.auto_awesome_rounded, color: color, size: 22),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.$1,
                        style: const TextStyle(
                          color: Color(0xFF17233F),
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        item.$2,
                        style: const TextStyle(
                          color: Color(0xFF52617F),
                          fontSize: 12,
                          height: 1.25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _CarouselIconButton extends StatelessWidget {
  const _CarouselIconButton({
    required this.icon,
    required this.enabled,
    required this.onTap,
  });

  final IconData icon;
  final bool enabled;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      tooltip: icon == Icons.arrow_back_rounded ? 'Previous' : 'Next',
      onPressed: enabled ? onTap : null,
      icon: Icon(icon),
    );
  }
}

class _DetailFeatureCard extends StatelessWidget {
  const _DetailFeatureCard({required this.group, required this.color});

  final _FeatureGroupData group;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.88),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withValues(alpha: 0.94)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0F0E2B73),
            blurRadius: 22,
            offset: Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            group.title,
            style: const TextStyle(
              color: Color(0xFF17233F),
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 16),
          ...group.items.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 11),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 7,
                    height: 7,
                    margin: const EdgeInsets.only(top: 7),
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      item,
                      style: const TextStyle(
                        color: Color(0xFF34415D),
                        fontSize: 14,
                        height: 1.42,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailContentSections extends StatelessWidget {
  const _DetailContentSections({required this.content});

  final _FeatureCategoryContent content;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final compact = constraints.maxWidth < 780;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                'Core IoT Sections',
                style: TextStyle(
                  color: content.iconColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0.8,
                ),
              ),
            ),
            const SizedBox(height: 12),
            ...content.contentSections.asMap().entries.map(
                  (entry) => Padding(
                    padding: EdgeInsets.only(
                      bottom: entry.key == content.contentSections.length - 1
                          ? 0
                          : 18,
                    ),
                    child: _DetailContentSectionCard(
                      section: entry.value,
                      color: content.iconColor,
                      reverse: !compact && entry.key.isOdd,
                    ),
                  ),
                ),
          ],
        );
      },
    );
  }
}

class _DetailContentSectionCard extends StatelessWidget {
  const _DetailContentSectionCard({
    required this.section,
    required this.color,
    required this.reverse,
  });

  final _ContentSectionData section;
  final Color color;
  final bool reverse;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final compact = constraints.maxWidth < 780;
        final visual = _SectionVisual(section: section, color: color);
        final copy = _SectionCopy(section: section, color: color);

        return Container(
          padding: EdgeInsets.all(compact ? 18 : 22),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.9),
            borderRadius: BorderRadius.circular(26),
            border: Border.all(color: Colors.white.withValues(alpha: 0.94)),
            boxShadow: const [
              BoxShadow(
                color: Color(0x0F0E2B73),
                blurRadius: 24,
                offset: Offset(0, 12),
              ),
            ],
          ),
          child: compact
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    visual,
                    const SizedBox(height: 18),
                    copy,
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: reverse
                      ? [
                          Expanded(flex: 6, child: copy),
                          const SizedBox(width: 24),
                          Expanded(flex: 4, child: visual),
                        ]
                      : [
                          Expanded(flex: 4, child: visual),
                          const SizedBox(width: 24),
                          Expanded(flex: 6, child: copy),
                        ],
                ),
        );
      },
    );
  }
}

class _SectionVisual extends StatelessWidget {
  const _SectionVisual({required this.section, required this.color});

  final _ContentSectionData section;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.45,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color.withValues(alpha: 0.95),
              const Color(0xFF102452),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              right: -24,
              top: -18,
              child: _SoftCircle(size: 110, color: Colors.white),
            ),
            Positioned(
              left: -18,
              bottom: -20,
              child: _SoftCircle(size: 92, color: Colors.white),
            ),
            Center(
              child: Container(
                width: 92,
                height: 92,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.16),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.2),
                  ),
                ),
                child: Icon(section.icon, color: Colors.white, size: 46),
              ),
            ),
            Positioned(
              left: 18,
              right: 18,
              bottom: 16,
              child: Text(
                section.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  height: 1.15,
                  letterSpacing: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SoftCircle extends StatelessWidget {
  const _SoftCircle({required this.size, required this.color});

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.08),
        shape: BoxShape.circle,
      ),
    );
  }
}

class _SectionCopy extends StatelessWidget {
  const _SectionCopy({required this.section, required this.color});

  final _ContentSectionData section;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          section.title,
          style: const TextStyle(
            color: Color(0xFF17233F),
            fontSize: 22,
            fontWeight: FontWeight.w900,
            height: 1.12,
            letterSpacing: 0,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          section.description,
          style: const TextStyle(
            color: Color(0xFF4C5873),
            fontSize: 14.5,
            height: 1.48,
          ),
        ),
        const SizedBox(height: 15),
        ...section.items.map(
          (item) => Padding(
            padding: const EdgeInsets.only(bottom: 9),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.check_circle_rounded, color: color, size: 18),
                const SizedBox(width: 9),
                Expanded(
                  child: Text(
                    item,
                    style: const TextStyle(
                      color: Color(0xFF34415D),
                      fontSize: 13.5,
                      height: 1.36,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _DownloadSection extends StatelessWidget {
  const _DownloadSection();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final scale = (constraints.maxWidth / 1080).clamp(0.56, 1.0);
        final gap = 14.0 * scale;
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20 * scale,
            vertical: 14 * scale,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28 * scale),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF1564FF), Color(0xFF081F58)],
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x28104DDE),
                blurRadius: 24,
                offset: Offset(0, 14),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                flex: 12,
                child: Text(
                  'Download our apps',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24 * scale,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0,
                  ),
                ),
              ),
              SizedBox(width: gap),
              Expanded(
                flex: 13,
                child: Text(
                  'Launch the experience on the store that fits your device.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: const Color(0xFFD9E3FF),
                    fontSize: 13 * scale,
                    height: 1.2,
                  ),
                ),
              ),
              SizedBox(width: gap),
              Flexible(
                flex: 9,
                child: _StoreBadge(
                  icon: Icons.play_arrow_rounded,
                  title: 'GET IT ON',
                  label: 'Google Play',
                  scale: scale,
                ),
              ),
              SizedBox(width: gap),
              Flexible(
                flex: 9,
                child: _StoreBadge(
                  icon: Icons.apple_rounded,
                  title: 'Download on the',
                  label: 'App Store',
                  scale: scale,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _StoreBadge extends StatelessWidget {
  const _StoreBadge({
    required this.icon,
    required this.title,
    required this.label,
    required this.scale,
  });

  final IconData icon;
  final String title;
  final String label;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: 102 * scale),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 13 * scale,
          vertical: 9 * scale,
        ),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.08),
          borderRadius: BorderRadius.circular(18 * scale),
          border: Border.all(color: Colors.white.withValues(alpha: 0.12)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.white, size: 22 * scale),
            SizedBox(width: 8 * scale),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10 * scale,
                      letterSpacing: 0.3,
                    ),
                  ),
                  Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16 * scale,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatsSection extends StatelessWidget {
  const _StatsSection();

  @override
  Widget build(BuildContext context) {
    final items = const [
      _StatItem(
        icon: Icons.groups_2_outlined,
        value: '500+',
        label: 'Happy Clients',
      ),
      _StatItem(
        icon: Icons.people_outline_rounded,
        value: '10K+',
        label: 'Active Users',
      ),
      _StatItem(
        icon: Icons.shield_outlined,
        value: '99.9%',
        label: 'Uptime',
      ),
      _StatItem(
        icon: Icons.support_agent_rounded,
        value: '24/7',
        label: 'Support',
      ),
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        final scale = (constraints.maxWidth / 1080).clamp(0.5, 1.0);
        final gap = 12.0 * scale;
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: 14 * scale,
            vertical: 12 * scale,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26 * scale),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF091B44), Color(0xFF071332)],
            ),
            border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
            boxShadow: const [
              BoxShadow(
                color: Color(0x22081B44),
                blurRadius: 24,
                offset: Offset(0, 14),
              ),
            ],
          ),
          child: Row(
            children: items
                .map(
                  (item) => Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: item == items.last ? 0 : gap,
                      ),
                      child: _StatItemView(item: item, scale: scale),
                    ),
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}

class _StatItem {
  const _StatItem({
    required this.icon,
    required this.value,
    required this.label,
  });

  final IconData icon;
  final String value;
  final String label;
}

class _StatItemView extends StatelessWidget {
  const _StatItemView({required this.item, required this.scale});

  final _StatItem item;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12 * scale,
        vertical: 10 * scale,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18 * scale),
        color: Colors.white.withValues(alpha: 0.06),
        border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
      ),
      child: Row(
        children: [
          Container(
            width: 38 * scale,
            height: 38 * scale,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withValues(alpha: 0.08),
            ),
            child: Icon(item.icon, color: Colors.white, size: 20 * scale),
          ),
          SizedBox(width: 10 * scale),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    item.value,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22 * scale,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Text(
                  item.label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: const Color(0xFFC5D2FF),
                    fontSize: 12 * scale,
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
