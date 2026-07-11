part of '../main.dart';

class _LystingCategoryScreen extends StatelessWidget {
  const _LystingCategoryScreen({required this.category});

  final _LystingCategory category;

  @override
  Widget build(BuildContext context) {
    return _HubDetailScaffold(
      title: category.title,
      subtitle: category.subtitle,
      icon: category.icon,
      accent: category.accent,
      child: _HubCardGrid(
        items: category.items
            .map(
              (item) => _HubCardData(
                title: item.title,
                subtitle: item.subtitle,
                icon: item.icon,
                accent: category.accent,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => _LystingDetailScreen(
                        category: category,
                        item: item,
                      ),
                    ),
                  );
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
