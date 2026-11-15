# iPad 2 apps (no jailbreak)

Build your own apps for an **iPad 2 / iOS 9.3.5** (32-bit) **in the cloud** with GitHub Actions - no Xcode, no jailbreak.

## How it works
1. Edit the code in `src/`.
2. Push to GitHub. The **Actions** tab builds an unsigned `HelloIPad2.ipa`.
3. Download the `.ipa` artifact from the finished run.
4. On your Mac, open **Sideloadly**, drag in the `.ipa`, enter a (throwaway) Apple ID, and install it on the iPad 2.
5. On the iPad: **Settings -> General -> Device Management -> Trust** your Apple ID, then open the app.

Free Apple IDs: the app works for 7 days, then just install it again.

## Build locally (optional)
Needs Theos + an armv7 SDK. The cloud build is easier.
