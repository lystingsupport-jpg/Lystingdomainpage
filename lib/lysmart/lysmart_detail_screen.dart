part of '../main.dart';

class _LysmartDetailScreen extends StatelessWidget {
  const _LysmartDetailScreen({
    required this.category,
    required this.item,
  });

  final _LysmartCategory category;
  final _LysmartItem item;

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
          'Create a verified business profile',
          'Manage catalog, leads, and buyer follow-ups',
          'Track wholesale order pipeline in one place',
        ],
      ),
    );
  }
}
