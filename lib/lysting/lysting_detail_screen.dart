part of '../main.dart';

class _LystingDetailScreen extends StatelessWidget {
  const _LystingDetailScreen({
    required this.category,
    required this.item,
  });

  final _LystingCategory category;
  final _LystingItem item;

  @override
  Widget build(BuildContext context) {
    return _HubDetailScaffold(
      title: item.title,
      subtitle: item.subtitle,
      icon: item.icon,
      accent: category.accent,
      child: _FeatureChecklist(
        accent: category.accent,
        items: const [
          'Search nearby verified listings',
          'Compare reviews, offers, and service quality',
          'Contact or request service from the app',
        ],
      ),
    );
  }
}
