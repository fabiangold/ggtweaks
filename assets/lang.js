// Sprachwahl: gespeicherte Auswahl vor Browsersprache, sonst Deutsch.
// Wird von allen Seiten geteilt, damit die Wahl beim Blaettern erhalten bleibt.
(function () {
  var html = document.documentElement;

  function apply(lang) {
    html.setAttribute('lang', lang);
    var de = document.getElementById('btn-de');
    var en = document.getElementById('btn-en');
    if (de) de.setAttribute('aria-pressed', String(lang === 'de'));
    if (en) en.setAttribute('aria-pressed', String(lang === 'en'));
    try { localStorage.setItem('ggtweaks-lang', lang); } catch (e) {}
  }

  var saved = null;
  try { saved = localStorage.getItem('ggtweaks-lang'); } catch (e) {}
  if (saved !== 'de' && saved !== 'en') {
    saved = (navigator.language || 'de').toLowerCase().indexOf('de') === 0 ? 'de' : 'en';
  }

  document.addEventListener('DOMContentLoaded', function () {
    apply(saved);
    var de = document.getElementById('btn-de');
    var en = document.getElementById('btn-en');
    if (de) de.addEventListener('click', function () { apply('de'); });
    if (en) en.addEventListener('click', function () { apply('en'); });
  });
  apply(saved);
})();
