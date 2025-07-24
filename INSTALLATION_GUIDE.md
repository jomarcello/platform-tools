# GrindrPlus Installatie Gids

## 📱 Vereisten
- **Android toestel** (geen root nodig voor LSPatch methode)
- **USB Debugging** ingeschakeld in Developer Options
- **Android Studio** geïnstalleerd (inclusief ADB tools)

## 📦 Gedownloade Bestanden
In deze map vind je:
- `GPlus_v4.4.0-25.12.1-release.apk` - GrindrPlus module (31.7 MB)
- `GrindrBase.apkm` - Originele Grindr app (138.3 MB)
- `LSMirror/` - Bevat LSPatch en LSPosed tools

## 🛠️ Android Studio Setup
Android Studio is nu geïnstalleerd en bevat:
- **ADB (Android Debug Bridge)** - voor app installatie via USB
- **SDK Manager** - voor Android SDK tools
- **Device Manager** - voor virtuele apparaten

### ADB vinden in Android Studio:
1. Open Android Studio
2. Ga naar **Tools → SDK Manager**
3. Noteer de **Android SDK Location** (bijv. `/Users/[username]/Library/Android/sdk`)
4. ADB pad: `[SDK Location]/platform-tools/adb`

## 🔧 Installatie Opties

### Optie 1: Geen Root (LSPatch)
1. **Installeer LSPatch:**
   - Installeer `LSMirror/LSPatch-v0.7-430-9703dc4-release.apk` op je Android toestel

2. **Installeer GrindrPlus:**
   - Installeer `GPlus_v4.4.0-25.12.1-release.apk` op je toestel
   - Open de "Grindr Plus" app
   - Klik op "Install" en selecteer de Grindr versie
   - Wacht tot de patch klaar is

3. **Google Login Fix (indien nodig):**
   - Verwijder originele Grindr
   - Installeer originele Grindr van Play Store
   - Log in met Google
   - Verwijder originele Grindr weer
   - Installeer gepatchte versie binnen 10 minuten

### Optie 2: Met Root (LSPosed)
1. **Root vereisten:**
   - Magisk of KernelSU geïnstalleerd
   - LSPosed framework actief

2. **Installatie:**
   - Installeer `GPlus_v4.4.0-25.12.1-release.apk`
   - Activeer module in LSPosed voor Grindr
   - Herstart Grindr app

## ⚠️ Belangrijke Opmerkingen

### Voor LSPatch gebruikers:
- **Google Login:** Mogelijk niet werkend zonder workaround
- **Google Maps:** Vereist custom API key setup
- **App crashes:** Normaal bij eerste starts, gewoon herstarten

### Algemeen:
- **Uninstall originele Grindr** voordat je begint
- **Check Secure Folder** op Samsung toestellen
- **Whitelist cdn.cookielaw.org** als profielen leeg zijn (AdBlock issue)

## 🎯 Verificatie
Na installatie:
1. Long-press op "Browse" tab → check GrindrPlus status
2. Controleer: Unlimited profiles
3. Controleer: Geen third-party ads

## 🆘 Troubleshooting
- **Installatie faalt:** Probeer meerdere keren
- **App crashed:** Herstart toestel
- **Blank profielen:** Disable AdBlocker
- **Google issues:** Zie FAQ sectie in README

## 📂 Bestandslocaties
Alle benodigde bestanden staan klaar in: `/Users/jovannitilborg/Downloads/platform-tools/`
