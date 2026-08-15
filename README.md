# GGTweaks

Jailbreak-Repo fuer iOS 15+ (rootless, `iphoneos-arm64`).

## In Sileo hinzufuegen

```
https://fabiangold.github.io/GGTweaks/
```

Sileo → Quellen → Bearbeiten → **+** → Adresse einfuegen.

## Pakete

### Coulomb — Adaptive Power

Energiemanagement mit echter Messung statt Schaetzung. Fuer iPhone 11 Pro
(A13, OLED) gebaut, laeuft auf iOS 15+.

- **Momentanleistung in mW**, nicht in Prozent — gelesen direkt aus
  `AppleSmartBattery`. Dazu Strom, Spannung, Temperatur, Ladezyklen und
  Gesundheit aus `NominalChargeCapacity / DesignCapacity`, nicht der
  gerundete Wert aus den Systemeinstellungen
- **Stromfresser-Radar:** zeigt ueber `IOPMCopyAssertionsByProcess`
  namentlich, welcher Prozess das Geraet wachhaelt. Das ist die Ursache von
  Leerlaufverbrauch — keine geschaetzte Prozentzahl pro App
- **Prozess-Sperrliste** mit hart kodierter Schutzliste: SpringBoard,
  backboardd, CommCenter, clockd und Verwandte werden nie beendet.
  Wecker und Notruf haben Vorrang vor jeder Ersparnis
- Verlaufskurve der Leistung, Root-Konsole, Kill-Switch-Datei und
  Crash-Guard gegen Respring-Schleifen
- Steuerung komplett ueber die mitgelieferte App — PreferenceLoader liefert
  auf iOS 18.6.2 keine Eintraege mehr aus

**Stand:** Phase 1 von 7 abgeschlossen (API-Verifikation auf dem Geraet).
Telemetrie-Historie, Profile und Automatik folgen.

**Voraussetzung:** rootless Jailbreak (Dopamine, palera1n) auf iOS 15 oder neuer.

### VPN Kill Switch

Blockt den gesamten Netzwerkverkehr, sobald die VPN-Verbindung abbricht.

- Erkennung ueber die Routing-Tabelle, Reaktion in Millisekunden ueber
  Kernel-Ereignisse statt Polling
- Blockiert IPv4 **und** IPv6 – ein reiner IPv4-Block laesst im Mobilfunk
  den Grossteil des Verkehrs durch
- Allowlist fuer den VPN-Server, damit die VPN-App sich neu verbinden kann
- Eigene Sperrliste mit CIDR-Unterstuetzung (z. B. `17.0.0.0/8`)
- App mit Live-Verkehrsanzeige pro Interface, Installationstest und
  Diagnosebericht
- Notbremse gegen dauerhaftes Aussperren

**Voraussetzung:** rootless Jailbreak (Dopamine, palera1n) auf iOS 15 oder neuer.

## Hinweis

Gebaut mit [Theos](https://theos.dev). Die Pakete sind fake-signiert (ldid) und
laufen nur auf gejailbreakten Geraeten.
