# Android Studio Installatie voor GrindrPlus

## ✅ Android Studio Status
**GEÏNSTALLEERD** via Homebrew op `/Applications/Android Studio.app`

## 📱 Android Studio Setup voor GrindrPlus

### 1. SDK Manager Configuratie
1. Open Android Studio
2. Klik op **"More Actions"** → **"SDK Manager"**
3. Ga naar **"SDK Tools"** tab
4. Zorg dat deze tools zijn aangevinkt:
   - ✅ Android SDK Platform-Tools
   - ✅ Android SDK Build-Tools
   - ✅ Android SDK Tools
5. Klik **"Apply"** om te installeren

### 2. ADB (Android Debug Bridge) Setup
ADB is nu beschikbaar via:
```
/Applications/Android Studio.app/Contents/platform-tools/adb
```

### 3. Device Setup
**Voor fysieke Android toestellen:**
1. Zet **USB Debugging** aan:
   - Settings → About Phone → Tap 7x on Build Number
   - Settings → Developer Options → USB Debugging (aan)
2. Verbind telefoon met USB kabel
3. Accepteer USB debugging prompt op telefoon

**Voor virtuele apparaten (optioneel):**
1. Android Studio → Device Manager
2. Create nieuwe Android Virtual Device
3. Selecteer Android 11+ voor Grindr compatibiliteit

## 🔧 Installatie via Android Studio

### Methode 1: Via ADB (Aanbevolen)
```bash
# Navigeer naar platform-tools
cd "/Applications/Android Studio.app/Contents/platform-tools"

# Installeer GrindrPlus module
./adb install /Users/jovannitilborg/Downloads/platform-tools/GPlus_v4.4.0-25.12.1-release.apk

# Installeer LSPatch (voor no-root)
./adb install /Users/jovannitilborg/Downloads/platform-tools/LSMirror/LSPatch-v0.7-430-9703dc4-release.apk
```

### Methode 2: Via Android Studio GUI
1. **Device File Explorer** openen:
   - Android Studio → View → Tool Windows → Device File Explorer
2. Sleep APK bestanden naar telefoon
3. Installeer via bestandsbeheer op telefoon

## 📋 Quick Start Commands

### Check verbonden apparaten:
```bash
/Applications/Android\ Studio.app/Contents/platform-tools/adb devices
```

### Installatie commando's:
```bash
# GrindrPlus module installeren
/Applications/Android\ Studio.app/Contents/platform-tools/adb install GPlus_v4.4.0-25.12.1-release.apk

# LSPatch installeren (voor no-root methode)
/Applications/Android\ Studio.app/Contents/platform-tools/adb install LSMirror/LSPatch-v0.7-430-9703dc4-release.apk
```

### Troubleshooting:
- **Device not found**: Zorg dat USB debugging aan staat
- **Installatie faalt**: Probeer `adb install -r` voor reinstall
- **Permission denied**: Gebruik `adb root` (alleen voor rooted devices)

## 🎯 Volgende stappen
1. Verbind je Android toestel
2. Installeer de APK's via ADB
3. Volg de rest van de installatie in de hoofdhandleiding
