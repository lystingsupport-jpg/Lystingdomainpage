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
                            const SizedBox(height: AppDesign.sectionGap),
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
  });

  final FeatureCategory category;
  final IconData icon;
  final Color iconColor;
  final String title;
  final String kicker;
  final String summary;
  final List<String> heroPoints;
  final List<_FeatureGroupData> featureGroups;
}

class _FeatureGroupData {
  const _FeatureGroupData({
    required this.title,
    required this.items,
  });

  final String title;
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
        'A focused IoT suite for smart homes, plug-and-play devices, energy visibility, and mobile-first monitoring.',
    heroPoints: [
      'Plug-and-play smart device onboarding',
      'Real-time monitoring across rooms and devices',
      'Energy dashboard with usage insights',
    ],
    featureGroups: [
      _FeatureGroupData(
        title: 'Device Control',
        items: [
          'One-touch controls for connected devices',
          'Room-wise device grouping',
          'Schedules, scenes, and automation presets',
        ],
      ),
      _FeatureGroupData(
        title: 'Monitoring',
        items: [
          'Live device status and alerts',
          'Power consumption dashboard',
          'Web, Android, and iOS access',
        ],
      ),
      _FeatureGroupData(
        title: 'Service Ready',
        items: [
          'Easy installation workflow',
          'Customer support handoff',
          'Device health and service history',
        ],
      ),
    ],
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

  @override
  void initState() {
    super.initState();
    _selectedCategory = widget.category;
  }

  @override
  Widget build(BuildContext context) {
    final content = _contentFor(_selectedCategory);
    const design = _DesignTuning();

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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const _HeroSection(design: design),
                        const SizedBox(height: AppDesign.sectionGap),
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
                          },
                        ),
                        const SizedBox(height: 24),
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
            horizontal: compact ? 10 : 18,
            vertical: compact ? 12 : 16,
          ),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.72),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white.withValues(alpha: 0.9)),
            boxShadow: const [
              BoxShadow(
                color: Color(0x100B1F52),
                blurRadius: 24,
                offset: Offset(0, 12),
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
                  SizedBox(width: compact ? 8 : 16),
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
            scale: selected ? 1.04 : 1,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 220),
              curve: Curves.easeOutCubic,
              width: compact ? 92 : 118,
              padding: EdgeInsets.fromLTRB(
                compact ? 7 : 9,
                compact ? 10 : 12,
                compact ? 7 : 9,
                compact ? 7 : 9,
              ),
              decoration: BoxDecoration(
                color: selected
                    ? content.iconColor.withValues(alpha: 0.92)
                    : const Color(0xFF111827),
                borderRadius: BorderRadius.circular(compact ? 23 : 28),
                border: Border.all(
                  color: selected
                      ? content.iconColor.withValues(alpha: 0.5)
                      : Colors.white,
                  width: selected ? 4 : 3,
                ),
                boxShadow: [
                  BoxShadow(
                    color: content.iconColor.withValues(
                      alpha: selected ? 0.18 : 0.1,
                    ),
                    blurRadius: selected ? 20 : 14,
                    offset: const Offset(0, 9),
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
                        compact ? 8 : 10,
                        compact ? 12 : 15,
                        compact ? 8 : 10,
                        compact ? 8 : 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              width: compact ? 26 : 34,
                              height: compact ? 3 : 4,
                              decoration: BoxDecoration(
                                color: const Color(0xFFCBD4E8),
                                borderRadius: BorderRadius.circular(999),
                              ),
                            ),
                          ),
                          SizedBox(height: compact ? 10 : 13),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: compact ? 24 : 31,
                                height: compact ? 24 : 31,
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
                                  size: compact ? 14 : 17,
                                ),
                              ),
                              const Spacer(),
                              AnimatedOpacity(
                                duration: const Duration(milliseconds: 180),
                                opacity: selected ? 1 : 0,
                                child: Icon(
                                  Icons.check_circle_rounded,
                                  color: content.iconColor,
                                  size: compact ? 14 : 17,
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
                              fontSize: compact ? 10.5 : 12,
                              fontWeight: FontWeight.w900,
                              height: 1.08,
                              letterSpacing: 0,
                            ),
                          ),
                          SizedBox(height: compact ? 3 : 4),
                          Text(
                            _dockSubtitle(content.category),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: content.iconColor,
                              fontSize: compact ? 9.5 : 10.5,
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
        const SizedBox(height: 24),
        _DetailFeatureGrid(content: content),
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
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: content.iconColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(999),
              ),
              child: Text(
                'Powerful Features'.toUpperCase(),
                style: TextStyle(
                  color: content.iconColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.1,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              content.title,
              style: const TextStyle(
                color: Color(0xFF17233F),
                fontSize: 34,
                fontWeight: FontWeight.w900,
                height: 1.08,
                letterSpacing: 0,
              ),
            ),
            const SizedBox(height: 14),
            Text(
              content.summary,
              style: const TextStyle(
                color: Color(0xFF4C5873),
                fontSize: 16,
                height: 1.55,
              ),
            ),
          ],
        );

        final highlights = _DetailHighlights(content: content);

        return Container(
          padding: EdgeInsets.all(compact ? 22 : 30),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.9),
            borderRadius: BorderRadius.circular(28),
            border: Border.all(color: Colors.white.withValues(alpha: 0.94)),
            boxShadow: [
              BoxShadow(
                color: content.iconColor.withValues(alpha: 0.1),
                blurRadius: 34,
                offset: const Offset(0, 16),
              ),
            ],
          ),
          child: compact
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    heroText,
                    const SizedBox(height: 22),
                    highlights,
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(flex: 6, child: heroText),
                    const SizedBox(width: 28),
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
    return Column(
      children: content.heroPoints
          .map(
            (point) => Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: content.iconColor.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: content.iconColor.withValues(alpha: 0.12),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.check_circle_rounded,
                    color: content.iconColor,
                    size: 20,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      point,
                      style: const TextStyle(
                        color: Color(0xFF24314F),
                        fontSize: 14,
                        height: 1.35,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
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

class _DownloadSection extends StatelessWidget {
  const _DownloadSection();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final stacked = constraints.maxWidth < 860;
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: stacked ? 16 : 20,
            vertical: stacked ? 14 : 14,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
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
          child: stacked
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Download our apps',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Launch the experience on the store that fits your device.',
                      style: TextStyle(
                        color: Color(0xFFD9E3FF),
                        fontSize: 13,
                        height: 1.25,
                      ),
                    ),
                    SizedBox(height: 18),
                    Wrap(
                      spacing: 14,
                      runSpacing: 14,
                      children: [
                        _StoreBadge(
                          icon: Icons.play_arrow_rounded,
                          title: 'GET IT ON',
                          label: 'Google Play',
                        ),
                        _StoreBadge(
                          icon: Icons.apple_rounded,
                          title: 'Download on the',
                          label: 'App Store',
                        ),
                      ],
                    ),
                  ],
                )
              : Row(
                  children: const [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 18),
                        child: Text(
                          'Download our apps',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Launch the experience on the store that fits your device.',
                        style: TextStyle(
                          color: Color(0xFFD9E3FF),
                          fontSize: 13,
                          height: 1.25,
                        ),
                      ),
                    ),
                    SizedBox(width: 14),
                    _StoreBadge(
                      icon: Icons.play_arrow_rounded,
                      title: 'GET IT ON',
                      label: 'Google Play',
                    ),
                    SizedBox(width: 14),
                    _StoreBadge(
                      icon: Icons.apple_rounded,
                      title: 'Download on the',
                      label: 'App Store',
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
  });

  final IconData icon;
  final String title;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 144),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 9),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.08),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.white.withValues(alpha: 0.12)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.white, size: 22),
            const SizedBox(width: 8),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      letterSpacing: 0.3,
                    ),
                  ),
                  Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
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

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
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
      child: LayoutBuilder(
        builder: (context, constraints) {
          final columns = constraints.maxWidth >= 760
              ? 4
              : constraints.maxWidth >= 520
                  ? 2
                  : 1;

          return Wrap(
            spacing: 12,
            runSpacing: 12,
            children: items
                .map(
                  (item) => SizedBox(
                    width: _gridWidth(constraints.maxWidth, columns, 12),
                    child: item,
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  const _StatItem({
    required this.icon,
    required this.value,
    required this.label,
  });

  final IconData icon;
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white.withValues(alpha: 0.06),
        border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
      ),
      child: Row(
        children: [
          Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withValues(alpha: 0.08),
            ),
            child: Icon(icon, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    value,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFFC5D2FF),
                    fontSize: 12,
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
