# Android Emulator Setup voor GrindrPlus

## 🎯 Doel
GrindrPlus installeren op een Android emulator via Android Studio

## 📱 Emulator Vereisten
- **Android 11+** (API level 30+) voor Grindr compatibiliteit
- **Google Play Store** voor account login
- **x86_64 architectuur** voor beste prestaties
- **Minimaal 4GB RAM** voor emulator

## 🔧 Stap-voor-stap Emulator Setup

### Stap 1: Android Studio Device Manager
1. **Open Android Studio**
2. Klik op **"Device Manager"** (rechtsboven)
3. Klik op **"Create Device"**

### Stap 2: Device Selectie
**Aanbevolen configuratie:**
- **Device:** Pixel 5 of Pixel 6
- **Android versie:** Android 11 (API 30) met Google Play
- **Architecture:** x86_64
- **RAM:** 4GB minimum, 6GB aanbevolen
- **Storage:** 8GB+ voor apps en data

### Stap 3: AVD Creation
1. Selecteer **"Pixel 5"** uit de lijst
2. Download **"Android 11 (API 30)"** met Google Play
3. Configureer:
   - **RAM:** 4096 MB
   - **VM Heap:** 512 MB
   - **Internal Storage:** 8 GB
   - **SD Card:** 2 GB (optioneel)
4. Klik **"Finish"**

### Stap 4: Emulator Starten
1. Klik op **"Play"** knop bij je AVD
2. Wacht tot emulator volledig opgestart is
3. **Google Play Store** openen en inloggen met Google account

## 📦 APK Installatie op Emulator

### Methode 1: Via ADB (Aanbevolen)
```bash
# Check of emulator draait
/Applications/Android\ Studio.app/Contents/platform-tools/adb devices

# Output zou moeten zijn:
# emulator-5554   device

# Installeer LSPatch eerst
/Applications/Android\ Studio.app/Contents/platform-tools/adb install LSMirror/LSPatch-v0.7-430-9703dc4-release.apk

# Installeer GrindrPlus module
/Applications/Android\ Studio.app/Contents/platform-tools/adb install GPlus_v4.4.0-25.12.1-release.apk
```

### Methode 2: Via Drag & Drop
1. **Start emulator**
2. **Sleep APK bestanden** naar emulator venster
3. **Accepteer installatie prompts**

## 🚨 Belangrijke Opmerkingen voor Emulator

### Google Services
- **Google Play Store** is vereist voor account login
- **Google Play Services** moeten up-to-date zijn
- **Location services** inschakelen voor Grindr GPS

### Netwerk Configuratie
- **Internet verbinding** vereist
- **Gebruik host GPU** aanzetten voor betere prestaties
- **Cold boot** kan nodig zijn na installatie

### Emulator Limitaties
- **GPS spoofing** mogelijk via emulator settings
- **Camera** kan gesimuleerd worden
- **Microfoon** kan gesimuleerd worden
- **SMS** niet beschikbaar (geen impact op Grindr)

## 🎯 Installatie Volgorde

1. **Start emulator**
2. **Installeer LSPatch** via ADB
3. **Installeer GrindrPlus** via ADB
4. **Open Grindr Plus app**
5. **Volg installatie wizard**
6. **Configureer Google login**

## 🔍 Verificatie op Emulator
1. **Long-press op Browse tab**
2. **Check GrindrPlus status**
3. **Verifieer unlimited profiles**
4. **Test location services**

## 🆘 Troubleshooting Emulator

### Emulator start niet:
- **Cold boot** proberen
- **Wipe data** via AVD Manager
- **Meer RAM** toewijzen

### Installatie faalt:
- **Unknown sources** aanzetten in Settings
- **Google Play Protect** tijdelijk uitzetten
- **ADB restart**: `adb kill-server && adb start-server`

### Performance issues:
- **Host GPU** aanzetten
- **Meer RAM** toewijzen
- **Andere emulator** proberen (bijv. Pixel 6)

## 📋 Quick Commands

### Emulator starten:
```bash
# List alle emulators
/Applications/Android\ Studio.app/Contents/emulator/emulator -list-avds

# Start specifieke emulator
/Applications/Android\ Studio.app/Contents/emulator/emulator -avd Pixel_5_API_30
```

### Emulator beheer:
```bash
# Alle apparaten tonen
/Applications/Android\ Studio.app/Contents/platform-tools/adb devices

# Emulator stoppen
/Applications/Android\ Studio.app/Contents/platform-tools/adb -s emulator-5554 emu kill
