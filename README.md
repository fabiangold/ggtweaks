# GGTweaks

Jailbreak-Repo fuer iOS 15+ (rootless, `iphoneos-arm64`).

## In Sileo hinzufuegen

```
https://fabiangold.github.io/GGTweaks/
```

Sileo → Quellen → Bearbeiten → **+** → Adresse einfuegen.

## Pakete

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
