# GGTweaks

**Nur iOS 18. Sonst nichts.**

Kleine Jailbreak-Tweaks für Leute, die ihrem Telefon beim Arbeiten über die
Schulter schauen wollen. Weißer Hut, offener Quellcode, keine Werbung, kein
Konto, kein „Pro"-Abo.

## In Sileo hinzufügen

```
https://fabiangold.github.io/ggtweaks/
```

Klein geschrieben — GitHub Pages unterscheidet Groß- und Kleinschreibung.

## Warum nur iOS 18?

Weil ich genau ein Testgerät habe und das läuft auf iOS 18. Alles andere wäre
geraten, und geratene Tweaks sind der Grund, warum Leute Angst vor Jailbreaks
haben.

Gebaut und getestet auf iPhone 11 mit Dopamine (rootless), `arm64` und `arm64e`.

Achtung: klein geschrieben. GitHub Pages liefert nur unter
`fabiangold.github.io/ggtweaks/` aus, die Variante mit Grossbuchstaben
gibt 404.

## Pakete

### VPN Kill Switch

Reißt die VPN-Verbindung ab, macht der Tweak sofort dicht — statt dass der
Datenverkehr klammheimlich am Tunnel vorbeispaziert.

- Reagiert über Kernel-Ereignisse statt Nachschauen im Sekundentakt
- Blockt IPv4 **und** IPv6 — im Mobilfunk läuft das meiste über IPv6, ein
  reiner IPv4-Block ist ein Sieb mit Zertifikat
- Ausnahmeliste, damit die VPN-App sich neu verbinden kann
- Eigene Sperrliste mit ganzen Bereichen, etwa `17.0.0.0/8`
- App mit Live-Verkehrsanzeige: du *siehst*, dass nichts rausgeht
- Notbremse gegen versehentliches Selbst-Aussperren

### Coulomb

Profilbasiertes Energiemanagement mit Telemetrie und eigener Steuer-App.

## Der weiße Hut

Alles hier ist dafür da, das **eigene** Gerät zu verstehen und abzusichern.
Kein Ausspähen, keine fremden Netze, keine Umgehung von Schutzmaßnahmen
anderer Leute. Der Quellcode liegt offen — lies ihn, bevor du ihn
installierst. Das gilt für meine Pakete genauso wie für alle anderen.

---

Gebaut mit [Theos](https://theos.dev). Läuft nur auf gejailbreakten Geräten.
