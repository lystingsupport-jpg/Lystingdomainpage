part of '../main.dart';

class LysmartHomeScreen extends StatelessWidget {
  const LysmartHomeScreen({super.key});

  static const _categories = [
    _LysmartCategory(
      title: 'Digital Showroom',
      subtitle: 'B2B product catalog and dealer display',
      icon: Icons.store_mall_directory_rounded,
      accent: Color(0xFF246CFF),
      items: [
        _LysmartItem('Product Catalog', 'SKUs, pricing, stock',
            Icons.inventory_2_rounded),
        _LysmartItem(
            'Dealer Profile', 'Brand story and contact', Icons.badge_rounded),
        _LysmartItem('Lead Enquiries', 'Wholesale buyer requests',
            Icons.mark_email_read_rounded),
      ],
    ),
    _LysmartCategory(
      title: 'AI A to Z Service',
      subtitle: 'Smart assistance for sellers and buyers',
      icon: Icons.auto_awesome_rounded,
      accent: Color(0xFF246CFF),
      items: [
        _LysmartItem(
            'AI Matching', 'Connect demand to supply', Icons.hub_rounded),
        _LysmartItem('Smart Quote', 'Generate quote suggestions',
            Icons.request_quote_rounded),
        _LysmartItem('Follow-up Bot', 'Buyer reminders and updates',
            Icons.smart_toy_rounded),
      ],
    ),
    _LysmartCategory(
      title: 'Pure B2B',
      subtitle: 'Wholesalers, distributors, and bulk orders',
      icon: Icons.groups_rounded,
      accent: Color(0xFF246CFF),
      items: [
        _LysmartItem('Bulk Orders', 'MOQ, pricing tiers, delivery',
            Icons.local_shipping_rounded),
        _LysmartItem(
            'Wholesalers', 'Verified B2B network', Icons.handshake_rounded),
        _LysmartItem('Payments', 'Invoices and settlement tracking',
            Icons.payments_rounded),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return _HubHomeScaffold(
      title: 'Lysmart',
      subtitle: 'Pure B2B',
      icon: Icons.groups_rounded,
      accent: const Color(0xFF246CFF),
      selectedIndex: 2,
      child: Column(
        children: [
          const _UnderConstructionCard(
            accent: Color(0xFF246CFF),
            label: 'Lysmart B2B modules',
          ),
          const SizedBox(height: 24),
          _HubCategoryGrid(
            title: 'B2B growth areas',
            categories: _categories
                .map(
                  (category) => _HubCategoryData(
                    title: category.title,
                    subtitle: category.subtitle,
                    icon: category.icon,
                    accent: category.accent,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) =>
                              _LysmartCategoryScreen(category: category),
                        ),
                      );
                    },
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class _LysmartCategory {
  const _LysmartCategory({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.accent,
    required this.items,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color accent;
  final List<_LysmartItem> items;
}

class _LysmartItem {
  const _LysmartItem(this.title, this.subtitle, this.icon);

  final String title;
  final String subtitle;
  final IconData icon;
}
