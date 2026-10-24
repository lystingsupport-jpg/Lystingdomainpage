# lysting.in website deployment

This is the main brand website, separate from the Android app backend/database/storage.

Local launch changes: LysTing App and Google Play badge open the public store URL configured at build time. With no valid URL they show a coming-soon message. iOS is a later phase. No fake package ID or testing URL is used.

## Build

Before launch: `flutter build web --release`

After public Google Play approval: `flutter build web --release --dart-define=LYSTING_GOOGLE_PLAY_URL=https://play.google.com/store/apps/details?id=YOUR_ACTUAL_PACKAGE_ID`

Replace YOUR_ACTUAL_PACKAGE_ID with the package ID shown in Console. Then deploy the generated build/web directory. Existing npm deploy commands build without this value, so for a published listing use the configured build above followed by the direct deploy command below.

## Cloudflare Pages

1. Refresh Cloudflare login with `npx wrangler login` (the previous session expired).
2. Verify the account with `npx wrangler whoami` and existing projects with `npx wrangler pages project list`.
3. Preview: `npx wrangler pages deploy build/web --project-name lystingdomainpage --branch preview`.
4. Review the preview on desktop/mobile, including all cards, contact buttons and coming-soon dialog.
5. Production: `npx wrangler pages deploy build/web --project-name lystingdomainpage`.
6. Add lysting.in in the Pages project's Custom domains section. Follow the DNS instructions for that account. Review existing DNS, email/MX and DNSSEC settings before changing nameservers; do not delete unrelated records.
7. Confirm HTTPS and apex/www behavior once DNS is active.

Policy pages in the mobile repository are drafts and must not be copied into a published site until finalized. This deployment does not deploy the mobile app backend or implement account-data cleanup.
