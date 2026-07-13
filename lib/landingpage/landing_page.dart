part of '../main.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFF7FAFF), Color(0xFFE7F0FF)],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(24, 14, 24, 28),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1220),
                child: const _LandingContent(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LandingContent extends StatelessWidget {
  const _LandingContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _TopBar(),
        SizedBox(height: 22),
        _HeroBanner(),
        SizedBox(height: 14),
        _PhoneShowcase(),
        SizedBox(height: 18),
        _DownloadStrip(),
        SizedBox(height: 16),
        _KpiStrip(),
      ],
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      padding: const EdgeInsets.symmetric(horizontal: 22),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF16345F).withValues(alpha: 0.08),
            blurRadius: 28,
            offset: const Offset(0, 18),
          ),
        ],
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final compact = constraints.maxWidth < 360;
          return Row(
            children: [
              Container(
                width: compact ? 44 : 52,
                height: compact ? 44 : 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF2778FF), Color(0xFF1050D8)],
                  ),
                ),
                child: Icon(Icons.menu,
                    color: Colors.white, size: compact ? 26 : 30),
              ),
              const SizedBox(width: 12),
              Text(
                'LysTing',
                style: TextStyle(
                  color: const Color(0xFF667085),
                  fontSize: compact ? 23 : 27,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Spacer(),
              if (!compact)
                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xFF145BE5),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Contact Us',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

class _HeroBanner extends StatelessWidget {
  const _HeroBanner();

  @override
  Widget build(BuildContext context) {
    final compact = MediaQuery.sizeOf(context).width < 430;
    return Container(
      height: compact ? 210 : 246,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(42),
        gradient: const LinearGradient(
          colors: [Color(0xFF061329), Color(0xFF092A64), Color(0xFF061126)],
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            size: const Size(620, 150),
            painter: _OrbitPainter(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LysTing',
                style: TextStyle(
                  color: Color(0xFFF4F8FF),
                  fontSize: compact ? 56 : 86,
                  height: 0.95,
                  fontWeight: FontWeight.w900,
                  shadows: [
                    Shadow(
                      color: Color(0xAAFFFFFF),
                      blurRadius: 18,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              Text(
                'Your local solution hub',
                style: TextStyle(
                  color: Color(0xFFFFD56A),
                  fontSize: compact ? 18 : 22,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 0.7,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const Positioned(
            top: 42,
            child: Padding(
              padding: EdgeInsets.only(left: 150),
              child: Icon(Icons.wb_sunny, color: Color(0xFFFFB938), size: 22),
            ),
          ),
        ],
      ),
    );
  }
}

class _PhoneShowcase extends StatelessWidget {
  const _PhoneShowcase();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isCompact = constraints.maxWidth < 900;
        final cards = [
          _PhoneCard(
            title: 'LysTing Smart IoT',
            subtitle: 'Smart automation for\nconnected spaces',
            icon: Icons.wifi_rounded,
            accent: Color(0xFF246CFF),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const IotHomeScreen()),
              );
            },
            bullets: [
              'Plug & Play Devices',
              'Real-time Monitoring',
              'Energy Dashboard',
            ],
          ),
          _PhoneCard(
            title: 'Lysting App',
            subtitle: 'Your local solution hub\ndriven by customer reviews',
            icon: Icons.shopping_cart_outlined,
            accent: Color(0xFFFF7B00),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const LystingHomeScreen()),
              );
            },
            bullets: ['Food', 'Products', 'Services', 'All A to Z Service'],
          ),
          _PhoneCard(
            title: 'Lysmart',
            subtitle: 'Pure B2B',
            icon: Icons.groups_rounded,
            accent: Color(0xFF246CFF),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const LysmartHomeScreen()),
              );
            },
            bullets: [
              'Digital Showroom',
              'AI A to Z Service',
              'Pure B2B',
              'For Wholesalers',
            ],
          ),
        ];

        return Column(
          children: [
            if (isCompact)
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 18,
                runSpacing: 18,
                children: cards,
              )
            else
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var i = 0; i < cards.length; i += 1) ...[
                    Expanded(child: cards[i]),
                    if (i != cards.length - 1) const SizedBox(width: 20),
                  ],
                ],
              ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                _Dot(active: true),
                _Dot(),
                _Dot(),
              ],
            ),
          ],
        );
      },
    );
  }
}

class _PhoneCard extends StatelessWidget {
  const _PhoneCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.accent,
    required this.bullets,
    this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color accent;
  final List<String> bullets;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(48),
        onTap: onTap,
        child: Container(
          width: 285,
          height: 500,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(48),
            boxShadow: [
              BoxShadow(
                color: accent.withValues(alpha: 0.12),
                blurRadius: 30,
                offset: const Offset(0, 18),
              ),
            ],
          ),
          child: Container(
            padding: const EdgeInsets.fromLTRB(22, 26, 22, 18),
            decoration: BoxDecoration(
              color: const Color(0xFF111827),
              borderRadius: BorderRadius.circular(42),
            ),
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 38, 20, 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    accent.withValues(alpha: 0.08),
                    Colors.white,
                    const Color(0xFFF4F8FF),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 70,
                      height: 5,
                      decoration: BoxDecoration(
                        color: const Color(0xFF111827).withValues(alpha: 0.16),
                        borderRadius: BorderRadius.circular(999),
                      ),
                    ),
                  ),
                  const SizedBox(height: 22),
                  Container(
                    width: 62,
                    height: 62,
                    decoration: BoxDecoration(
                      color: accent,
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Icon(icon, color: Colors.white, size: 30),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFF10203E),
                      fontSize: 24,
                      height: 1.05,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: accent,
                      fontSize: 15,
                      height: 1.12,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 14),
                  for (final bullet in bullets)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: accent,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              bullet,
                              style: const TextStyle(
                                color: Color(0xFF34415D),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        'Learn More',
                        style: TextStyle(
                          color: accent,
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: accent.withValues(alpha: 0.12),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.arrow_forward, color: accent),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  const _Dot({this.active = false});

  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: active ? 28 : 9,
      height: 9,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: active ? const Color(0xFF1269FF) : const Color(0xFFC8DBFF),
        borderRadius: BorderRadius.circular(999),
      ),
    );
  }
}

class _DownloadStrip extends StatelessWidget {
  const _DownloadStrip();

  @override
  Widget build(BuildContext context) {
    final compact = MediaQuery.sizeOf(context).width < 430;
    return Container(
      height: compact ? 214 : 96,
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: compact ? 18 : 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [Color(0xFF136CFF), Color(0xFF092A66), Color(0xFF061B44)],
        ),
      ),
      child: compact
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Download our apps',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Launch the experience on the store that fits your device.',
                  style: TextStyle(
                    color: Color(0xFFD9E7FF),
                    fontSize: 14,
                    height: 1.25,
                  ),
                ),
                const SizedBox(height: 14),
                Wrap(
                  spacing: 12,
                  runSpacing: 10,
                  children: const [
                    _StoreBadge(icon: Icons.play_arrow, title: 'Google Play'),
                    _StoreBadge(icon: Icons.apple, title: 'App Store'),
                  ],
                ),
              ],
            )
          : Row(
              children: const [
                Text(
                  'Download our apps',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(width: 34),
                Expanded(
                  child: Text(
                    'Launch the experience on the store that fits your device.',
                    style: TextStyle(
                      color: Color(0xFFD9E7FF),
                      fontSize: 14,
                      height: 1.25,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                _StoreBadge(icon: Icons.play_arrow, title: 'Google Play'),
                SizedBox(width: 14),
                _StoreBadge(icon: Icons.apple, title: 'App Store'),
              ],
            ),
    );
  }
}

class _StoreBadge extends StatelessWidget {
  const _StoreBadge({required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 166,
      height: 62,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white.withValues(alpha: 0.16)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 25),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title == 'Google Play' ? 'GET IT ON' : 'Download on the',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 9,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _KpiStrip extends StatelessWidget {
  const _KpiStrip();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final useWrap = constraints.maxWidth < 1020;
        const cards = [
          _KpiCard(
            icon: Icons.groups_rounded,
            value: '500+',
            label: 'Happy Clients',
          ),
          _KpiCard(
            icon: Icons.group_rounded,
            value: '10K+',
            label: 'Active Users',
          ),
          _KpiCard(
            icon: Icons.shield_outlined,
            value: '99.9%',
            label: 'Uptime',
          ),
          _KpiCard(
            icon: Icons.support_agent_rounded,
            value: '24/7',
            label: 'Support',
          ),
        ];

        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF081D46),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF08265B).withValues(alpha: 0.18),
                blurRadius: 26,
                offset: const Offset(0, 16),
              ),
            ],
          ),
          child: useWrap
              ? Wrap(
                  spacing: 14,
                  runSpacing: 14,
                  alignment: WrapAlignment.center,
                  children: [
                    for (final card in cards) SizedBox(width: 210, child: card),
                    const _DesignButton(),
                  ],
                )
              : Row(
                  children: [
                    for (var i = 0; i < cards.length; i += 1) ...[
                      Expanded(child: cards[i]),
                      const SizedBox(width: 14),
                    ],
                    const _DesignButton(),
                  ],
                ),
        );
      },
    );
  }
}

class _KpiCard extends StatelessWidget {
  const _KpiCard({
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
      height: 78,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 21,
            backgroundColor: Colors.white.withValues(alpha: 0.08),
            child: Icon(icon, color: Colors.white, size: 22),
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    value,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFFD2DCF2),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
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

class _DesignButton extends StatelessWidget {
  const _DesignButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 28),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.12),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: const Row(
        children: [
          Icon(Icons.tune_rounded, color: Color(0xFF1269FF), size: 25),
          SizedBox(width: 12),
          Text(
            'Design',
            style: TextStyle(
              color: Color(0xFF1C2D4A),
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}

class _OrbitPainter extends CustomPainter {
  const _OrbitPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..color = const Color(0xFF2C7BFF).withValues(alpha: 0.35);
    final center = Offset(size.width / 2, size.height / 2);
    for (var i = 0; i < 5; i += 1) {
      canvas.drawOval(
        Rect.fromCenter(
          center: center,
          width: 220 + i * 88,
          height: 34 + i * 13,
        ),
        paint
          ..color = const Color(0xFF2C7BFF).withValues(alpha: 0.28 - i * 0.035),
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _HubHomeScaffold extends StatelessWidget {
  const _HubHomeScaffold({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.accent,
    required this.selectedIndex,
    required this.child,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color accent;
  final int selectedIndex;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F8FF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(32, 28, 32, 36),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1220),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      _RoundIconButton(
                        icon: Icons.arrow_back,
                        onTap: () => Navigator.of(context).pop(),
                      ),
                      const SizedBox(width: 14),
                      _SquareIcon(icon: icon, accent: accent),
                      const SizedBox(width: 18),
                      Text(
                        title,
                        style: const TextStyle(
                          color: Color(0xFF10203E),
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  _HubSelector(selectedIndex: selectedIndex),
                  const SizedBox(height: 34),
                  child,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _HubSelector extends StatelessWidget {
  const _HubSelector({required this.selectedIndex});

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    const entries = [
      _SelectorEntry(
        title: 'Home\nAutomation',
        subtitle: 'Smart IoT',
        icon: Icons.wifi_rounded,
        accent: Color(0xFF246CFF),
      ),
      _SelectorEntry(
        title: 'Lysting App',
        subtitle: 'Local hub',
        icon: Icons.shopping_cart_outlined,
        accent: Color(0xFFFF7B00),
      ),
      _SelectorEntry(
        title: 'Lysmart',
        subtitle: 'Pure B2B',
        icon: Icons.groups_rounded,
        accent: Color(0xFF246CFF),
      ),
    ];
    return Container(
      height: 210,
      padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.86),
        borderRadius: BorderRadius.circular(34),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (var i = 0; i < entries.length; i += 1)
            _MiniPhone(
              title: entries[i].title,
              subtitle: entries[i].subtitle,
              icon: entries[i].icon,
              accent: entries[i].accent,
              selected: i == selectedIndex,
            ),
        ],
      ),
    );
  }
}

class _SelectorEntry {
  const _SelectorEntry({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.accent,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color accent;
}

class _SquareIcon extends StatelessWidget {
  const _SquareIcon({required this.icon, required this.accent});

  final IconData icon;
  final Color accent;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58,
      height: 58,
      decoration: BoxDecoration(
        color: accent.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Icon(icon, color: accent, size: 31),
    );
  }
}

class _UnderConstructionCard extends StatelessWidget {
  const _UnderConstructionCard({
    required this.accent,
    required this.label,
  });

  final Color accent;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 280,
      decoration: BoxDecoration(
        color: const Color(0xFFEAF3FF),
        borderRadius: BorderRadius.circular(34),
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Container(
          width: 520,
          padding: const EdgeInsets.all(34),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(28),
            border: Border.all(color: accent.withValues(alpha: 0.22)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _SquareIcon(icon: Icons.construction_rounded, accent: accent),
              const SizedBox(height: 22),
              Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF10203E),
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HubCategoryData {
  const _HubCategoryData({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.accent,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color accent;
  final VoidCallback onTap;
}

class _HubCategoryGrid extends StatelessWidget {
  const _HubCategoryGrid({
    required this.title,
    required this.categories,
  });

  final String title;
  final List<_HubCategoryData> categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF10203E),
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 22),
          _HubCardGrid(
            items: categories
                .map(
                  (category) => _HubCardData(
                    title: category.title,
                    subtitle: category.subtitle,
                    icon: category.icon,
                    accent: category.accent,
                    onTap: category.onTap,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class _HubCardData {
  const _HubCardData({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.accent,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color accent;
  final VoidCallback onTap;
}

class _HubCardGrid extends StatelessWidget {
  const _HubCardGrid({required this.items});

  final List<_HubCardData> items;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        childAspectRatio: 2.2,
      ),
      itemBuilder: (context, index) {
        final item = items[index];
        return InkWell(
          borderRadius: BorderRadius.circular(22),
          onTap: item.onTap,
          child: Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: item.accent.withValues(alpha: 0.18)),
            ),
            child: Row(
              children: [
                Icon(item.icon, color: item.accent, size: 34),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Color(0xFF10203E),
                          fontSize: 17,
                          height: 1.05,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        item.subtitle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Color(0xFF66728B),
                          fontSize: 13,
                          height: 1.2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _HubDetailScaffold extends StatelessWidget {
  const _HubDetailScaffold({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.accent,
    required this.child,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color accent;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F8FF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(28),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      _RoundIconButton(
                        icon: Icons.arrow_back,
                        onTap: () => Navigator.of(context).pop(),
                      ),
                      const SizedBox(width: 16),
                      _SquareIcon(icon: icon, accent: accent),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                color: Color(0xFF10203E),
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              subtitle,
                              style: const TextStyle(
                                color: Color(0xFF66728B),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  Container(
                    padding: const EdgeInsets.all(28),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: accent.withValues(alpha: 0.15)),
                    ),
                    child: child,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _FeatureChecklist extends StatelessWidget {
  const _FeatureChecklist({
    required this.accent,
    required this.items,
  });

  final Color accent;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final item in items)
          Padding(
            padding: const EdgeInsets.only(bottom: 18),
            child: Row(
              children: [
                Icon(Icons.check_circle_outline, color: accent, size: 28),
                const SizedBox(width: 14),
                Expanded(
                  child: Text(
                    item,
                    style: const TextStyle(
                      color: Color(0xFF31415F),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
