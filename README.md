# deb-builds
My debian packagas builds. Some of them are simply vanilla builds of unavailable software, others are debian source packages built with custom/modified `debian/rules` to fix/restore a functionality.

In each folder, you will find the ready binary and the script and/or rules files used to produce that build.

All of them are tested and currently used on my `buster/sid` systems.

## Chromium - Hangouts
Debian Chromium source package built with the `enable_hangout_services_extension` flag enabled. This allows the Google Hangouts screensharing feature to work correctly.

## i3-gaps
Vanilla build of `i3-gaps`, from the git repository.
