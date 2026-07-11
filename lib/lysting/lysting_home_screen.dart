part of '../main.dart';

class LystingHomeScreen extends StatelessWidget {
  const LystingHomeScreen({super.key});

  static const _categories = [
    _LystingCategory(
      title: 'Food',
      subtitle: 'Local restaurants, kitchens, and cafes',
      icon: Icons.restaurant_rounded,
      accent: Color(0xFFFF7B00),
      items: [
        _LystingItem(
            'Restaurants', 'Menus, reviews, offers', Icons.storefront_rounded),
        _LystingItem('Home Food', 'Homemade meals and cloud kitchens',
            Icons.home_filled),
        _LystingItem('Cafes', 'Coffee, bakery, snacks', Icons.local_cafe),
      ],
    ),
    _LystingCategory(
      title: 'Products',
      subtitle: 'Nearby products with trusted sellers',
      icon: Icons.shopping_bag_rounded,
      accent: Color(0xFFFF7B00),
      items: [
        _LystingItem('Daily Needs', 'Grocery, household, essentials',
            Icons.local_mall_outlined),
        _LystingItem('Electronics', 'Mobiles, accessories, gadgets',
            Icons.devices_rounded),
        _LystingItem('Fashion', 'Clothing, footwear, lifestyle',
            Icons.checkroom_rounded),
      ],
    ),
    _LystingCategory(
      title: 'Services',
      subtitle: 'A to Z local professionals',
      icon: Icons.handyman_rounded,
      accent: Color(0xFFFF7B00),
      items: [
        _LystingItem(
            'Repairs', 'Electrician, plumbing, appliance', Icons.build_rounded),
        _LystingItem(
            'Beauty & Wellness', 'Salon, spa, fitness', Icons.spa_rounded),
        _LystingItem('Travel Help', 'Drivers, booking, local support',
            Icons.directions_car_rounded),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return _HubHomeScaffold(
      title: 'Lysting App',
      subtitle: 'Local hub',
      icon: Icons.shopping_cart_outlined,
      accent: const Color(0xFFFF7B00),
      selectedIndex: 1,
      child: Column(
        children: [
          const _UnderConstructionCard(
            accent: Color(0xFFFF7B00),
            label: 'Lysting App modules',
          ),
          const SizedBox(height: 24),
          _HubCategoryGrid(
            title: 'Local solution categories',
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
                              _LystingCategoryScreen(category: category),
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

class _LystingCategory {
  const _LystingCategory({
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
  final List<_LystingItem> items;
}

class _LystingItem {
  const _LystingItem(this.title, this.subtitle, this.icon);

  final String title;
  final String subtitle;
  final IconData icon;
}
