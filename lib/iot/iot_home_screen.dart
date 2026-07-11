part of '../main.dart';

class IotHomeScreen extends StatelessWidget {
  const IotHomeScreen({super.key});

  static const _areas = [
    _IotArea(
      title: 'Smart Home Automation',
      subtitle: 'Homes, switches, rooms, and appliances',
      icon: Icons.home_work_rounded,
      devices: [
        _IotDevice('Smart Lighting', 'Lights and lighting control',
            Icons.lightbulb_outline_rounded),
        _IotDevice('Home Appliance Control', 'Fan, TV, heater, and appliances',
            Icons.wind_power_rounded),
        _IotDevice('AC & Heating Control',
            'AC, heater, thermostat, comfort scheduling', Icons.ac_unit),
        _IotDevice('Water Pump / Motor Control',
            'Tank, timer, and motor control', Icons.water_drop_outlined),
        _IotDevice('Energy Monitoring', 'Power usage, load status, reports',
            Icons.bar_chart_rounded),
        _IotDevice('Gate & Door Control', 'Main gate, door lock, shutter',
            Icons.door_front_door_outlined),
        _IotDevice('Security & CCTV', 'Camera, alerts, entry monitoring',
            Icons.videocam_outlined),
        _IotDevice('Gas & Fire Detection', 'Gas leak, smoke, fire alerts',
            Icons.local_fire_department_outlined),
      ],
    ),
    _IotArea(
      title: 'Plug & Play Devices',
      subtitle: 'Quick devices for shop, home, and office',
      icon: Icons.power_settings_new_rounded,
      devices: [
        _IotDevice(
            'Smart Plug', 'Control equipment from mobile', Icons.power_rounded),
        _IotDevice('Door Sensor', 'Open-close alerts and history',
            Icons.sensors_rounded),
        _IotDevice('Motion Sensor', 'Occupancy-based automation',
            Icons.motion_photos_on_rounded),
        _IotDevice('Smart Switch', 'Retrofit switchboard controls',
            Icons.toggle_on_rounded),
      ],
    ),
    _IotArea(
      title: 'Mobile Control',
      subtitle: 'App and web dashboards for every user',
      icon: Icons.phone_iphone_rounded,
      devices: [
        _IotDevice('Live Dashboard', 'Usage, alerts, and device status',
            Icons.dashboard_rounded),
        _IotDevice('Role Access', 'Admin, staff, and family controls',
            Icons.admin_panel_settings_outlined),
        _IotDevice('Automation Rules', 'Schedules, timers, and scenes',
            Icons.rule_rounded),
        _IotDevice(
            'Reports', 'Energy and uptime insights', Icons.insights_rounded),
      ],
    ),
  ];

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
                      const _RoundIconButton(icon: Icons.settings_suggest),
                      const SizedBox(width: 18),
                      const Text(
                        'LysTing Smart IoT',
                        style: TextStyle(
                          color: Color(0xFF10203E),
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  const _IotHeroSelector(),
                  const SizedBox(height: 28),
                  _IotTitleStrip(areas: _areas),
                  const SizedBox(height: 24),
                  _AutomationAreaCarousel(areas: _areas),
                  const SizedBox(height: 24),
                  for (final area in _areas) ...[
                    _IotAreaPanel(area: area),
                    const SizedBox(height: 22),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _IotArea {
  const _IotArea({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.devices,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final List<_IotDevice> devices;
}

class _IotDevice {
  const _IotDevice(this.title, this.subtitle, this.icon);

  final String title;
  final String subtitle;
  final IconData icon;
}

class _RoundIconButton extends StatelessWidget {
  const _RoundIconButton({required this.icon, this.onTap});

  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFE2EAFF),
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: SizedBox(
          width: 58,
          height: 58,
          child: Icon(icon, color: const Color(0xFF0E1D3B), size: 30),
        ),
      ),
    );
  }
}

class _IotHeroSelector extends StatelessWidget {
  const _IotHeroSelector();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.86),
        borderRadius: BorderRadius.circular(34),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF2A5FB8).withValues(alpha: 0.08),
            blurRadius: 28,
            offset: const Offset(0, 18),
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _MiniPhone(
            title: 'Home\nAutomation',
            subtitle: 'Smart IoT',
            icon: Icons.wifi_rounded,
            selected: true,
          ),
          _MiniPhone(
            title: 'Lysting App',
            subtitle: 'Local hub',
            icon: Icons.shopping_cart_outlined,
            accent: Color(0xFFFF7B00),
          ),
          _MiniPhone(
            title: 'Lysmart',
            subtitle: 'Pure B2B',
            icon: Icons.groups_rounded,
          ),
        ],
      ),
    );
  }
}

class _MiniPhone extends StatelessWidget {
  const _MiniPhone({
    required this.title,
    required this.subtitle,
    required this.icon,
    this.accent = const Color(0xFF246CFF),
    this.selected = false,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color accent;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: selected ? 126 : 104,
      height: selected ? 176 : 158,
      padding: EdgeInsets.all(selected ? 10 : 7),
      decoration: BoxDecoration(
        color: selected ? accent : const Color(0xFF111827),
        borderRadius: BorderRadius.circular(selected ? 38 : 34),
        boxShadow: [
          BoxShadow(
            color: accent.withValues(alpha: 0.2),
            blurRadius: 18,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(14, 14, 14, 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 42,
                height: 5,
                decoration: BoxDecoration(
                  color: const Color(0xFFBFC8DC),
                  borderRadius: BorderRadius.circular(99),
                ),
              ),
            ),
            const SizedBox(height: 18),
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: accent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: Colors.white, size: 22),
            ),
            const Spacer(),
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF122144),
                fontSize: 14,
                height: 1,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: accent,
                fontSize: 12,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _IotTitleStrip extends StatelessWidget {
  const _IotTitleStrip({required this.areas});

  final List<_IotArea> areas;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              'LysTing Smart IoT',
              style: TextStyle(
                color: Color(0xFF10203E),
                fontSize: 34,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          for (final area in areas)
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: _AreaChip(area: area),
            ),
        ],
      ),
    );
  }
}

class _AreaChip extends StatelessWidget {
  const _AreaChip({required this.area});

  final _IotArea area;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => _IotCategoryScreen(area: area)),
        );
      },
      child: Container(
        width: 142,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFFEAF1FF),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xFFC9DAFF)),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: const Color(0xFFD7E5FF),
              child: Icon(area.icon, color: const Color(0xFF1269FF), size: 20),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    area.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color(0xFF263653),
                      fontSize: 13,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    area.subtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color(0xFF66728B),
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
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

class _AutomationAreaCarousel extends StatelessWidget {
  const _AutomationAreaCarousel({required this.areas});

  final List<_IotArea> areas;

  @override
  Widget build(BuildContext context) {
    final area = areas.first;
    return Container(
      padding: const EdgeInsets.all(26),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                'Automation areas',
                style: TextStyle(
                  color: Color(0xFF1269FF),
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Spacer(),
              _RoundIconButton(icon: Icons.arrow_back),
              SizedBox(width: 12),
              _RoundIconButton(icon: Icons.arrow_forward),
            ],
          ),
          const SizedBox(height: 26),
          InkWell(
            borderRadius: BorderRadius.circular(26),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (_) => _IotCategoryScreen(area: area)),
              );
            },
            child: Container(
              height: 150,
              padding: const EdgeInsets.symmetric(horizontal: 28),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF1E67FF),
                    Color(0xFF1449B9),
                    Color(0xFF071B46),
                  ],
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 62,
                    height: 62,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.14),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Icon(area.icon, color: Colors.white, size: 34),
                  ),
                  const SizedBox(width: 22),
                  Text(
                    area.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_Dot(active: true), _Dot()],
          ),
        ],
      ),
    );
  }
}

class _IotAreaPanel extends StatelessWidget {
  const _IotAreaPanel({required this.area});

  final _IotArea area;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(34, 34, 34, 32),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.78),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: const Color(0xFFD7E5FF)),
      ),
      child: Column(
        children: [
          Text(
            area.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF10203E),
              fontSize: 34,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 28),
          GridView.builder(
            itemCount: area.devices.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 18,
              crossAxisSpacing: 18,
              childAspectRatio: 2.15,
            ),
            itemBuilder: (context, index) {
              final device = area.devices[index];
              return _IotDeviceCard(area: area, device: device);
            },
          ),
        ],
      ),
    );
  }
}

class _IotDeviceCard extends StatelessWidget {
  const _IotDeviceCard({required this.area, required this.device});

  final _IotArea area;
  final _IotDevice device;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => _IotDeviceScreen(area: area, device: device),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xFFDDE8FF)),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF1C5FD1).withValues(alpha: 0.04),
              blurRadius: 16,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(device.icon, color: const Color(0xFF1269FF), size: 34),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    device.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color(0xFF142347),
                      fontSize: 16,
                      height: 1.05,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    device.subtitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color(0xFF64708A),
                      fontSize: 13,
                      height: 1.15,
                      fontWeight: FontWeight.w500,
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
