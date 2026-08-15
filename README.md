# GGTweaks

Jailbreak-Tweaks für iOS 18. Rootless, quelloffen.

**Quelle:** `https://fabiangold.github.io/ggtweaks/`

Die Adresse ist kleingeschrieben — GitHub Pages unterscheidet Groß- und
Kleinschreibung. In Sileo oder Zebra unter Quellen hinzufügen.

## Pakete

| Paket | Version | Beschreibung |
|---|---|---|
| [VPN Kill Switch](https://fabiangold.github.io/ggtweaks/depictions/vpnkillswitch/) | 3.7.0 | Blockiert den Netzwerkverkehr, sobald die VPN-Verbindung abbricht |
| [GG Status](https://fabiangold.github.io/ggtweaks/depictions/ggstatus/) | 0.1.0 | Zeigt den Zustand des VPN Kill Switch in der Statusleiste |
| [Coulomb](https://fabiangold.github.io/ggtweaks/depictions/coulomb/) | 1.2.0 | Profilbasiertes Energiemanagement mit Telemetrie und Steuer-App |

Ausführliche Beschreibungen stehen auf den jeweiligen Paketseiten.

## Kompatibilität

| | |
|---|---|
| System | iOS 18 |
| Umgebung | rootless (Dopamine, palera1n) |
| Architektur | arm64, arm64e |
| Getestet auf | iPhone 11, iOS 18.6.2, Dopamine |

Die Pakete werden auf einem einzigen Gerät entwickelt und getestet. Andere
Geräte und iOS-Versionen sind nicht geprüft.

## Aufbau des Repos

```
/                       Startseite mit Paketübersicht
/assets/                gemeinsames Stylesheet und Sprachumschaltung
/debs/                  die Pakete
/depictions/<paket>/    Paketseite (HTML, auch für Zebra und Cydia)
/depictions/<paket>.json  native Sileo-Depiction
/Packages, /Release     Index für die Paketverwaltung
```

Der Index wird aus den `.deb`-Dateien erzeugt; Prüfsummen und Depiction-Adressen
setzt das Erzeugungsskript.

---

## English

Jailbreak tweaks for iOS 18. Rootless, open source.

**Source:** `https://fabiangold.github.io/ggtweaks/` (lowercase — GitHub Pages is
case-sensitive). Add it under Sources in Sileo or Zebra.

| Package | Version | Description |
|---|---|---|
| [VPN Kill Switch](https://fabiangold.github.io/ggtweaks/depictions/vpnkillswitch/) | 3.7.0 | Blocks network traffic as soon as the VPN connection drops |
| [GG Status](https://fabiangold.github.io/ggtweaks/depictions/ggstatus/) | 0.1.0 | Shows the VPN Kill Switch state in the status bar |
| [Coulomb](https://fabiangold.github.io/ggtweaks/depictions/coulomb/) | 1.2.0 | Profile-based power management with telemetry and a control app |

Requires iOS 18 on a rootless jailbreak (Dopamine, palera1n), arm64 or arm64e.
Developed and tested on a single device; other devices and iOS versions are
unverified.

---

Gebaut mit [Theos](https://theos.dev), fake-signiert mit ldid. Läuft
ausschließlich auf gejailbreakten Geräten.
