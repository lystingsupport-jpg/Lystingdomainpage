part of '../main.dart';

class _IotCategoryScreen extends StatelessWidget {
  const _IotCategoryScreen({required this.area});

  final _IotArea area;

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
                      Icon(area.icon, color: const Color(0xFF1269FF), size: 34),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          area.title,
                          style: const TextStyle(
                            color: Color(0xFF10203E),
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: const Color(0xFFD7E5FF)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          area.subtitle,
                          style: const TextStyle(
                            color: Color(0xFF66728B),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 24),
                        GridView.builder(
                          itemCount: area.devices.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 18,
                            mainAxisSpacing: 18,
                            childAspectRatio: 2.1,
                          ),
                          itemBuilder: (context, index) {
                            final device = area.devices[index];
                            return _IotDeviceCard(area: area, device: device);
                          },
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
    );
  }
}
