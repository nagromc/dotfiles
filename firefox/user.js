// Some interesting resources to pimp your Firefox configuration :
// https://feeding.cloud.geek.nz/posts/tweaking-cookies-for-privacy-in-firefox/
// https://feeding.cloud.geek.nz/posts/tweaking-referrer-for-privacy-in-firefox/
// https://wiki.mozilla.org/Security/Cookies
// https://wiki.mozilla.org/Security/Referrer

user_pref("browser.fixup.alternate.prefix", "");
user_pref("browser.fixup.alternate.suffix", "");
user_pref("browser.newtabpage.activity-stream.enabled", false);
user_pref("browser.newtabpage.enabled", false);
user_pref("browser.shell.checkDefaultBrowser", true);
user_pref("browser.startup.homepage", "https://start.duckduckgo.com/?k5=2&kae=d&kaj=m&kak=-1&kam=osm&kap=-1&kaq=-1&kax=-1&kp=-2");
user_pref("browser.startup.page", 3);
user_pref("browser.urlbar.trimURLs", false);
user_pref("devtools.cache.disabled", true);
user_pref("devtools.chrome.enabled", true);
user_pref("devtools.theme", "dark");
user_pref("devtools.webconsole.timestampMessages", true);
user_pref("extensions.pocket.enabled", false);
user_pref("general.warnOnAboutConfig", false);
user_pref("network.cookie.cookieBehavior", 3);
user_pref("network.cookie.lifetime.days", 5);
user_pref("network.cookie.lifetimePolicy", 3);
user_pref("network.cookie.thirdparty.sessionOnly", true);
user_pref("network.http.referer.trimmingPolicy", 1);
user_pref("network.http.referer.XOriginPolicy", 2);
user_pref("network.http.referer.XOriginTrimmingPolicy", 2);
// 2 for login.aliexpress.com
user_pref("network.http.sendRefererHeader", 1);
user_pref("network.http.sendSecureXSiteReferrer", false);
user_pref("privacy.donottrackheader.enabled", true);
user_pref("privacy.firstparty.isolate", true);
user_pref("privacy.resistFingerprinting", false);
user_pref("privacy.trackingprotection.enabled", true);
user_pref("security.webauth.u2f", true);
user_pref("signon.rememberSignons", false);
