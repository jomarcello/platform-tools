#!/bin/bash

# GrindrPlus Installatie Script voor Android Emulator
# Gebruik dit script na het aanmaken van je Android emulator

echo "🎯 GrindrPlus Installatie Script"
echo "================================"

# Set paden
ADB_PATH="/Applications/Android Studio.app/Contents/platform-tools/adb"
GRINDRPLUS_APK="/Users/jovannitilborg/Downloads/platform-tools/GPlus_v4.4.0-25.12.1-release.apk"
LSPATCH_APK="/Users/jovannitilborg/Downloads/platform-tools/LSMirror/LSPatch-v0.7-430-9703dc4-release.apk"

# Check of ADB bestaat
if [ ! -f "$ADB_PATH" ]; then
    echo "❌ ADB niet gevonden op: $ADB_PATH"
    echo "Zorg dat Android Studio is geïnstalleerd"
    exit 1
fi

# Check of APK bestanden bestaan
if [ ! -f "$GRINDRPLUS_APK" ]; then
    echo "❌ GrindrPlus APK niet gevonden"
    exit 1
fi

if [ ! -f "$LSPATCH_APK" ]; then
    echo "❌ LSPatch APK niet gevonden"
    exit 1
fi

echo "✅ Alle bestanden gevonden"

# Check verbonden apparaten
echo ""
echo "📱 Controleren van verbonden apparaten..."
$ADB_PATH devices

# Wacht op gebruiker input
echo ""
echo "🔄 Zorg dat je emulator draait en druk op ENTER om te installeren..."
read -p ""

# Installeer LSPatch eerst
echo ""
echo "📦 LSPatch installeren..."
$ADB_PATH install "$LSPATCH_APK"
if [ $? -eq 0 ]; then
    echo "✅ LSPatch succesvol geïnstalleerd"
else
    echo "❌ LSPatch installatie mislukt"
    exit 1
fi

# Installeer GrindrPlus
echo ""
echo "📦 GrindrPlus installeren..."
$ADB_PATH install "$GRINDRPLUS_APK"
if [ $? -eq 0 ]; then
    echo "✅ GrindrPlus succesvol geïnstalleerd"
else
    echo "❌ GrindrPlus installatie mislukt"
    exit 1
fi

echo ""
echo "🎉 Installatie compleet!"
echo ""
echo "📋 Volgende stappen:"
echo "1. Open LSPatch app op je emulator"
echo "2. Klik op 'Install' en selecteer Grindr"
echo "3. Wacht tot de patch klaar is"
echo "4. Open de gepatchte Grindr Plus app"
echo ""
echo "💡 Tip: Long-press op 'Browse' tab om GrindrPlus status te checken"
