# Design Config Quick Reference

Edit `lib/design_config.dart`, then hot restart or reload the Flutter preview.

Useful values:

- `heroHeightDesktop`, `heroHeightTablet`, `heroHeightMobile`: blue hero card height.
- `sunLeft`, `sunTop`, `sunSize`: sun/dot position in the `LysTing` wordmark.
- `orbitArtworkHeight`, `orbitCenterY`, `orbitPathStartY`: orbit/ring placement.
- `solutionPhoneMaxWidth`: width of each phone card.
- `solutionPhoneGap`: space between IoT, Ecommerce, and Pure B2B phones.
- `solutionPhoneAspectRatio`: phone height/width shape.
- `solutionTitleSize`, `solutionBulletSize`: phone card text sizing.
- `primaryButtonGradient`, `primaryButtonRadius`: top-right button style.
- `brandIconSize`, `brandTitleSize`: top-left brand area.

For responsive layout, prefer changing named spacing/size values here instead
of adding fixed X/Y positions directly in widgets.
