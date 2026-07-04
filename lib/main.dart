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
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: _responsivePagePadding(context, vertical: 16),
                      child: const _TopNavigation(),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: _responsivePagePadding(context, vertical: 0),
                      child: _SectionShell(
                        child: Column(
                          children: [
                            _HeroSection(design: _design),
                            const SizedBox(height: AppDesign.sectionGap),
                            _SolutionsSection(
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
                            SizedBox(height: _bottomCardsTopGap(context)),
                            const _DownloadSection(),
                            const SizedBox(height: AppDesign.sectionGap),
                            const _StatsSection(),
                            const SizedBox(height: AppDesign.pageBottomGap),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
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
    return 56;
  }
  if (width < 900) {
    return 110;
  }
  return 220;
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
    title: 'E-commerce Powerful Features',
    kicker: 'Lysting App',
    summary:
        'A local commerce experience for food, products, services, digital showrooms, bulk uploads, and sales visibility.',
    heroPoints: [
      'Food, product, and service listings',
      'Digital showroom gallery experience',
      'Agent analytics for products and sales',
    ],
    featureGroups: [
      _FeatureGroupData(
        title: 'Selling Tools',
        items: [
          'Store-based product sales',
          'Bulk product upload for agents',
          'A to Z service listing support',
        ],
      ),
      _FeatureGroupData(
        title: 'Shopping Experience',
        items: [
          'Gallery-first browsing',
          'Product reviews and trust signals',
          'Category discovery for local customers',
        ],
      ),
      _FeatureGroupData(
        title: 'Business Insights',
        items: [
          'Product and sales performance view',
          'Customer review tracking',
          'Agent-friendly catalog management',
        ],
      ),
    ],
  ),
  FeatureCategory.b2b: _FeatureCategoryContent(
    category: FeatureCategory.b2b,
    icon: Icons.groups_2_outlined,
    iconColor: Color(0xFF265BFF),
    title: 'Pure B2B Powerful Features',
    kicker: 'Lysmart',
    summary:
        'A wholesale-first B2B platform for online catalogs, agent search, digital showrooms, and supplier discovery.',
    heroPoints: [
      'Pure B2B purpose-built workflows',
      'Wholesaler online catalog showcase',
      'Product-based agent search',
    ],
    featureGroups: [
      _FeatureGroupData(
        title: 'Wholesale Catalogs',
        items: [
          'Digital showroom for wholesalers',
          'Bulk catalog presentation',
          'Easy product discovery by category',
        ],
      ),
      _FeatureGroupData(
        title: 'Agent Network',
        items: [
          'Product-based agent search',
          'Supplier and buyer connection flow',
          'AI-assisted A to Z service support',
        ],
      ),
      _FeatureGroupData(
        title: 'B2B Operations',
        items: [
          'Simple business-first interface',
          'Repeat ordering support path',
          'Focused wholesale marketplace structure',
        ],
      ),
    ],
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
    return Positioned(
      right: 16,
      bottom: 16,
      child: SafeArea(
        child: Material(
          color: Colors.transparent,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 180),
            width: expanded ? 320 : 132,
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
            child: expanded ? _expandedPanel(context) : _collapsedButton(),
          ),
        ),
      ),
    );
  }

  Widget _collapsedButton() {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onToggle,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.tune_rounded, color: Color(0xFF1D63FF), size: 20),
            SizedBox(width: 8),
            Text(
              'Design',
              style: TextStyle(
                color: Color(0xFF17233F),
                fontSize: 14,
                fontWeight: FontWeight.w800,
              ),
            ),
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
        title: 'Lysting Smart IoT',
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
        final columns =
            constraints.maxWidth >= AppDesign.solutionsThreeColumnBreakpoint
                ? 3
                : constraints.maxWidth >= AppDesign.solutionsTwoColumnBreakpoint
                    ? 2
                    : 1;

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
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: design.solutionPhoneMaxWidth),
        child: AspectRatio(
          aspectRatio: AppDesign.solutionPhoneAspectRatio,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(
                design.solutionPhoneOuterRadius,
              ),
              onTap: onTap,
              child: Ink(
                padding: AppDesign.solutionPhonePadding,
                decoration: BoxDecoration(
                  color: design.solutionPhoneShellColor,
                  borderRadius: BorderRadius.circular(
                    design.solutionPhoneOuterRadius,
                  ),
                  border: Border.all(
                    color: Colors.white,
                    width: design.solutionPhoneBorderWidth,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: data.accent.withValues(alpha: 0.18),
                      blurRadius: 30,
                      offset: const Offset(0, 18),
                    ),
                    const BoxShadow(
                      color: Color(0x120E2B73),
                      blurRadius: 20,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    design.solutionPhoneInnerRadius,
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
                            height: AppDesign.solutionPhoneStatusHeight,
                            decoration: BoxDecoration(
                              color: data.iconBg.withValues(
                                alpha: design.solutionPhoneScreenTopAlpha,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              width: AppDesign.solutionPhoneSpeakerWidth,
                              height: AppDesign.solutionPhoneSpeakerHeight,
                              decoration: BoxDecoration(
                                color:
                                    design.solutionPhoneShellColor.withValues(
                                  alpha: 0.18,
                                ),
                                borderRadius: BorderRadius.circular(999),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: AppDesign.solutionPhoneContentPadding,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: design.solutionIconSize,
                                height: design.solutionIconSize,
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
                                    design.solutionIconRadius,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          data.iconBg.withValues(alpha: 0.24),
                                      blurRadius: 18,
                                      offset: const Offset(0, 8),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  data.icon,
                                  color: Colors.white,
                                  size: 23,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                data.title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: design.solutionTitleColor,
                                  fontSize: data.title.length > 12
                                      ? design.solutionTitleSize - 2
                                      : design.solutionTitleSize,
                                  fontWeight: FontWeight.w900,
                                  height: 1.16,
                                ),
                              ),
                              if (data.subtitle != null) ...[
                                const SizedBox(height: 4),
                                Text(
                                  data.subtitle!,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: data.accent,
                                    fontSize: data.subtitle!.length > 18
                                        ? design.solutionSubtitleSize - 2
                                        : design.solutionSubtitleSize,
                                    fontWeight: FontWeight.w700,
                                    height: 1.22,
                                  ),
                                ),
                              ],
                              const SizedBox(height: 7),
                              ...data.bullets.map(
                                (bullet) => Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 6,
                                        height: 6,
                                        margin: const EdgeInsets.only(top: 6),
                                        decoration: BoxDecoration(
                                          color: data.accent,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          bullet,
                                          style: TextStyle(
                                            color: design.solutionBulletColor,
                                            fontSize: design.solutionBulletSize,
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
                                        fontSize: design.solutionLearnMoreSize,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: design.solutionArrowButtonSize,
                                    height: design.solutionArrowButtonSize,
                                    decoration: BoxDecoration(
                                      color: data.accent.withValues(
                                        alpha:
                                            design.solutionArrowButtonBgAlpha,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        design.solutionArrowButtonRadius,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.arrow_forward_rounded,
                                      color: data.accent,
                                      size: design.solutionArrowIconSize,
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
                padding: _responsivePagePadding(context, vertical: 16),
                child: _SectionShell(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _DetailTopBar(content: content),
                      const SizedBox(height: 18),
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
                  padding: _responsivePagePadding(context, vertical: 0),
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
    return Row(
      children: [
        IconButton.filledTonal(
          tooltip: 'Back',
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        const SizedBox(width: 12),
        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            color: content.iconColor.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(content.icon, color: content.iconColor, size: 24),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            content.kicker,
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
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: compact ? 8 : 14,
            vertical: compact ? 8 : 10,
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
                      onTap: () => onSelected(category),
                    ),
                  ),
                ),
                if (category != categories.last)
                  SizedBox(width: compact ? 6 : 12),
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
    required this.onTap,
  });

  final _FeatureCategoryContent content;
  final bool selected;
  final bool compact;
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
              width: compact ? 70 : 86,
              padding: EdgeInsets.fromLTRB(
                compact ? 5 : 6,
                compact ? 6 : 7,
                compact ? 5 : 6,
                compact ? 5 : 6,
              ),
              decoration: BoxDecoration(
                color: selected
                    ? content.iconColor.withValues(alpha: 0.92)
                    : const Color(0xFF111827),
                borderRadius: BorderRadius.circular(compact ? 18 : 22),
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
                        compact ? 6 : 7,
                        compact ? 8 : 9,
                        compact ? 6 : 7,
                        compact ? 6 : 7,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              width: compact ? 26 : 34,
                              height: compact ? 2.5 : 3,
                              decoration: BoxDecoration(
                                color: const Color(0xFFCBD4E8),
                                borderRadius: BorderRadius.circular(999),
                              ),
                            ),
                          ),
                          SizedBox(height: compact ? 7 : 8),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: compact ? 20 : 24,
                                height: compact ? 20 : 24,
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
                                  size: compact ? 12 : 14,
                                ),
                              ),
                              const Spacer(),
                              AnimatedOpacity(
                                duration: const Duration(milliseconds: 180),
                                opacity: selected ? 1 : 0,
                                child: Icon(
                                  Icons.check_circle_rounded,
                                  color: content.iconColor,
                                  size: compact ? 12 : 14,
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
                              fontSize: compact ? 8.5 : 9.5,
                              fontWeight: FontWeight.w900,
                              height: 1.08,
                              letterSpacing: 0,
                            ),
                          ),
                          SizedBox(height: compact ? 2 : 2),
                          Text(
                            _dockSubtitle(content.category),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: content.iconColor,
                              fontSize: compact ? 7.5 : 8.5,
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
    return Column(
      children: [
        _DetailHero(content: content),
        const SizedBox(height: 14),
        if (content.category == FeatureCategory.iot)
          _AutomationCarousel(color: content.iconColor)
        else
          _DetailFeatureGrid(content: content),
        if (content.contentSections.isNotEmpty) ...[
          const SizedBox(height: 24),
          _DetailContentSections(content: content),
        ],
        if (content.platformGroups.isNotEmpty) ...[
          const SizedBox(height: 24),
          _PlatformRoadmap(content: content),
        ],
      ],
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
        final heroText = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
              decoration: BoxDecoration(
                color: content.iconColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(999),
              ),
              child: Text(
                'Powerful Features'.toUpperCase(),
                style: TextStyle(
                  color: content.iconColor,
                  fontSize: 9,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.1,
                ),
              ),
            ),
            const SizedBox(height: 7),
            Text(
              content.title,
              style: const TextStyle(
                color: Color(0xFF17233F),
                fontSize: 24,
                fontWeight: FontWeight.w900,
                height: 1.08,
                letterSpacing: 0,
              ),
            ),
            const SizedBox(height: 7),
            Text(
              content.summary,
              style: const TextStyle(
                color: Color(0xFF4C5873),
                fontSize: 12.5,
                height: 1.32,
              ),
            ),
          ],
        );

        final highlights = _DetailHighlights(content: content);

        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: compact ? 14 : 18,
            vertical: compact ? 12 : 14,
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
                    const SizedBox(height: 10),
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
  const _DetailHighlights({required this.content});

  final _FeatureCategoryContent content;

  @override
  Widget build(BuildContext context) {
    final highlights = _detailHighlightItems(content.category);

    return Column(
      children: highlights
          .map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
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
  });

  final _DetailHighlightItem item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
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
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              item.icon,
              color: color,
              size: 16,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFF24314F),
                    fontSize: 12.5,
                    height: 1.1,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 1),
                Text(
                  item.supporting,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFF52617F),
                    fontSize: 10.5,
                    height: 1.1,
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
  final PageController _controller = PageController(viewportFraction: 0.78);
  int _currentPage = 0;
  int _selectedAutomationIndex = 0;

  static const _items = [
    _AutomationCarouselItem(
      icon: Icons.home_work_rounded,
      title: 'Home auto',
      subtitle: 'Simple smart control for rooms, devices, and daily scenes.',
    ),
    _AutomationCarouselItem(
      icon: Icons.apartment_rounded,
      title: 'Commercial Building',
      subtitle: 'Automation workflows for offices, shared spaces, and teams.',
    ),
  ];

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

        return Container(
          padding: EdgeInsets.all(compact ? 14 : 16),
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
                        fontSize: 13,
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
                  const SizedBox(width: 8),
                  _CarouselIconButton(
                    icon: Icons.arrow_forward_rounded,
                    enabled: _currentPage < _items.length - 1,
                    onTap: () => _goTo(_currentPage + 1),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: compact ? 155 : 175,
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
                        horizontal: compact ? 7 : 10,
                        vertical: index == _currentPage ? 0 : 8,
                      ),
                      child: _AutomationCarouselCard(
                        item: _items[index],
                        color: widget.color,
                        selected: index == _currentPage,
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
              const SizedBox(height: 10),
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
              const SizedBox(height: 16),
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
    required this.onTap,
  });

  final _AutomationCarouselItem item;
  final Color color;
  final bool selected;
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
            padding: const EdgeInsets.all(16),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: selected
                        ? Colors.white.withValues(alpha: 0.16)
                        : color.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Icon(
                    item.icon,
                    color: selected ? Colors.white : color,
                    size: 23,
                  ),
                ),
                const Spacer(),
                Text(
                  item.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: selected ? Colors.white : const Color(0xFF17233F),
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    height: 1.08,
                    letterSpacing: 0,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  item.subtitle,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: selected
                        ? const Color(0xFFDDE7FF)
                        : const Color(0xFF4C5873),
                    fontSize: 12.5,
                    height: 1.25,
                    fontWeight: FontWeight.w600,
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
        ? _FacilityAutomationTable(color: color)
        : _SmartHomeNativeTable(color: color);
  }
}

class _AutomationButtonData {
  const _AutomationButtonData({
    required this.icon,
    required this.label,
    this.supporting,
  });

  final IconData icon;
  final String label;
  final String? supporting;
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

class _SmartHomeNativeTable extends StatelessWidget {
  const _SmartHomeNativeTable({required this.color});

  final Color color;

  static const _rows = [
    _AutomationButtonData(
      icon: Icons.lightbulb_outline_rounded,
      label: 'Smart Lighting Control',
      supporting: 'Lights, dimming, schedules, scenes',
    ),
    _AutomationButtonData(
      icon: Icons.mode_fan_off_outlined,
      label: 'Fan & Appliance Control',
      supporting: 'Fans, AC, TV, geyser, water motor, appliances',
    ),
    _AutomationButtonData(
      icon: Icons.home_outlined,
      label: 'Room-Wise Automation',
      supporting: 'Hall, bedroom, kitchen, office, parking groups',
    ),
    _AutomationButtonData(
      icon: Icons.grid_view_rounded,
      label: 'Scenes & Modes',
      supporting: 'Morning, Night, Custom modes',
    ),
    _AutomationButtonData(
      icon: Icons.calendar_month_outlined,
      label: 'Schedule-Based Automation',
      supporting: 'Time and routine based actions',
    ),
    _AutomationButtonData(
      icon: Icons.curtains_outlined,
      label: 'Curtain & Gate Automation',
      supporting: 'Main gate, garage door, sliding doors',
    ),
    _AutomationButtonData(
      icon: Icons.device_thermostat_rounded,
      label: 'Climate Control',
      supporting: 'AC, thermostat, air purifier, ventilation',
    ),
    _AutomationButtonData(
      icon: Icons.water_drop_outlined,
      label: 'Water Motor / Pump Automation',
      supporting: 'Tank/time/manual motor control',
    ),
    _AutomationButtonData(
      icon: Icons.directions_run_rounded,
      label: 'Motion Sensing Automation',
      supporting: 'Movement-based actions',
    ),
    _AutomationButtonData(
      icon: Icons.settings_remote_outlined,
      label: 'Proximity Sensing Automation',
      supporting: 'Nearby presence-based actions',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FBFF),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          const Text(
            'Smart Home Automation',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF0C1D4A),
              fontSize: 28,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Connected controls, routines, and sensor-ready automation for smart spaces',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFF52617F), fontSize: 13),
          ),
          const SizedBox(height: 18),
          LayoutBuilder(
            builder: (context, constraints) {
              final columns = constraints.maxWidth >= 980
                  ? 5
                  : constraints.maxWidth >= 700
                      ? 4
                      : 2;
              return Wrap(
                spacing: 12,
                runSpacing: 12,
                children: _rows
                    .map(
                      (row) => SizedBox(
                        width: _gridWidth(constraints.maxWidth, columns, 12),
                        child: _AutomationHomeButton(item: row, color: color),
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

class _AutomationHomeButton extends StatelessWidget {
  const _AutomationHomeButton({required this.item, required this.color});

  final _AutomationButtonData item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          debugPrint('Automation selected: ${item.label}');
        },
        child: Ink(
          padding: const EdgeInsets.all(14),
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
          child: Row(
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

class _PlatformRoadmap extends StatelessWidget {
  const _PlatformRoadmap({required this.content});

  final _FeatureCategoryContent content;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final compact = constraints.maxWidth < 760;
        return Container(
          width: double.infinity,
          padding: EdgeInsets.all(compact ? 20 : 26),
          decoration: BoxDecoration(
            color: const Color(0xFF102452),
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                color: content.iconColor.withValues(alpha: 0.16),
                blurRadius: 30,
                offset: const Offset(0, 16),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(
                      Icons.account_tree_rounded,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                  const SizedBox(width: 14),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IoT Platform Plan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 0,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'A high-level build path for current launch and future modules.',
                          style: TextStyle(
                            color: Color(0xFFD8E3FF),
                            fontSize: 13,
                            height: 1.35,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 22),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: content.platformGroups
                    .map(
                      (group) => SizedBox(
                        width: compact
                            ? constraints.maxWidth
                            : _gridWidth(constraints.maxWidth, 2, 16),
                        child: _PlatformRoadmapCard(
                          group: group,
                          color: content.iconColor,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _PlatformRoadmapCard extends StatelessWidget {
  const _PlatformRoadmapCard({required this.group, required this.color});

  final _FeatureGroupData group;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withValues(alpha: 0.12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            group.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w900,
              letterSpacing: 0,
            ),
          ),
          const SizedBox(height: 14),
          ...group.items.asMap().entries.map(
                (entry) => Padding(
                  padding: const EdgeInsets.only(bottom: 11),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 23,
                        height: 23,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: color.withValues(alpha: 0.92),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          '${entry.key + 1}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          entry.value,
                          style: const TextStyle(
                            color: Color(0xFFEAF0FF),
                            fontSize: 13.5,
                            height: 1.38,
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
