# GGTweaks

**Nur iOS 18. Sonst nichts.** · *iOS 18 only. Nothing else.*

Kleine Jailbreak-Tweaks für Leute, die ihrem Telefon beim Arbeiten über die
Schulter schauen wollen. Weißer Hut, offener Quellcode, keine Werbung, kein
Konto, kein „Pro“-Abo.

→ **[Webseite mit Sprachumschalter](https://fabiangold.github.io/ggtweaks/)**

## Quelle hinzufügen

```
https://fabiangold.github.io/ggtweaks/
```

Alles klein geschrieben — GitHub Pages unterscheidet Groß- und Kleinschreibung,
mit großen Buchstaben gibt es einen 404er.

## Warum nur iOS 18?

Weil ich genau ein Testgerät habe, und das läuft auf iOS 18. Alles andere wäre
geraten, und geratene Tweaks sind der Grund, warum Leute Angst vor Jailbreaks
haben.

Gebaut und getestet auf einem iPhone 11 mit Dopamine (rootless), `arm64` und
`arm64e`.

## Pakete

### VPN Kill Switch

Reißt die VPN-Verbindung ab, macht dieser Tweak sofort dicht — statt dass der
Datenverkehr klammheimlich am Tunnel vorbeispaziert.

- Reagiert auf Kernel-Ereignisse, statt im Sekundentakt nachzusehen
- Blockiert IPv4 **und** IPv6 — im Mobilfunk läuft das meiste über IPv6, ein
  reiner IPv4-Block ist ein Sieb mit Zertifikat
- Ausnahmeliste, damit die VPN-App sich neu verbinden kann
- Eigene Sperrliste, auch für ganze Bereiche wie `17.0.0.0/8`
- App mit Live-Anzeige: du *siehst*, dass nichts rausgeht, statt es zu glauben
- Notbremse gegen versehentliches Selbst-Aussperren

### Coulomb

Profilbasiertes Energiemanagement mit Telemetrie und eigener Steuer-App. Der
Akku hält dadurch nicht ewig, aber du weißt endlich, wer ihn frisst.

## Der weiße Hut

Alles hier dient dazu, das **eigene** Gerät zu verstehen und abzusichern. Kein
Ausspähen, keine fremden Netze, keine Umgehung von Schutzmaßnahmen anderer
Leute. Der Quellcode liegt offen — lies ihn, bevor du ihn installierst. Das gilt
für meine Pakete genauso wie für alle anderen.

---

## English

Small jailbreak tweaks for people who like to watch their phone work. White hat,
open source, no ads, no account, no “Pro” subscription.

**iOS 18 only** — because I own exactly one test device and it runs iOS 18.
Anything else would be guesswork, and guessed-at tweaks are why people are
nervous about jailbreaking in the first place.

Add the source in Sileo or Zebra:

```
https://fabiangold.github.io/ggtweaks/
```

Lowercase — GitHub Pages is case-sensitive.

**VPN Kill Switch** — if the VPN drops, everything is sealed off immediately.
Reacts to kernel events, blocks IPv4 *and* IPv6, keeps an allow-list so the VPN
app can reconnect, and ships an app with a live traffic view so you can see that
nothing leaves.

**Coulomb** — profile-based power management with telemetry and its own control
app.

Everything here exists to understand and secure *your own* device. The source is
open — read it before you install it.

---

Gebaut mit [Theos](https://theos.dev) · Läuft nur auf gejailbreakten Geräten.
