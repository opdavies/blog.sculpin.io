---
title: "Sculpin Returns"
author:
  shortname: "kevin"
  name: "Kevin Boyd"
  mastodon: "@kboyd@phpc.social"
---
Long-time users of Sculpin have probably noticed that it is getting a bit long in the tooth. Its dependencies are out of date. On newer PHP versions, lots of warnings are being thrown. And it has been years since the last stable release: 3.2.0, in October of 2022.

Development has stagnated for several reasons, but this summer the tide has turned.

Somehow, Sculpin has returned!

This weekend, a stable release of 3.3.0 will come out, which updates dependencies and quells some of those warnings. Users should be aware, though, that the minimum PHP version will be changing to 8.1. This is somewhat unusual for a Semver "Minor" release, but it's necessary in this case. As PHP 7.4 has been officially unsupported/end-of-life since November '22, this seems like it won't be much of an issue.

Over the remainder of summer, progress will be made on **Sculpin 4.0**.

New features are planned:

- Static binary installation option so users won't need to install php and composer
- User-friendly updates to init, run, and content-creation commands
- In-browser editor for sites under development
- Themes!

Sculpin 4.0 will be ready for a Preview Release by the end of Summer. The official release may be delayed until PHP 8.6 comes out in November - worth it for that sweet, sweet PFA action - or it may release early with a dependency on the unreleased PHP 8.6. 

So, that's the latest update. If you have suggestions and requests for Sculpin 4.0, please [join the Sculpin Discord](https://discord.gg/sHu82ABsw) or start a [Discussion on GitHub](https://github.com/sculpin/sculpin/discussions).