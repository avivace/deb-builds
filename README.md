# deb-builds
My debian packages builds. Some of them are simply vanilla builds of (currently) unavailable software in the official repositories, while others are source packages built with custom/modified `rules` to fix or restore a functionality. 

Refer to the package folder to find the exact details, the ready binaries and the scripts/rules files used to produce the builds. To install a binary, just download it and run `dpkg -i <package-name.deb>`.

All of them are tested and currently used on my `buster/sid` systems.

## Repository
Additionally, if you don't want to keep downloading binaries and manually install them, you can use my unofficial debian repository:

Add this line in your `/etc/apt/sources.list`
```
deb [arch=amd64] https://deb.avivace.com/ unstable main
```

Add the repository as trusted:
```
apt-key adv --keyserver keys.gnupg.net --recv-keys 9E78AF2A6AF2F3C7
```

Finally run `apt update`.

## Packages

### Chromium - Hangouts
(Debian) Chromium source package built with the `enable_hangout_services_extension` flag enabled. This allows the Google Hangouts screensharing feature to work correctly.

### i3-gaps
Vanilla build of `i3-gaps`, from the git repository.

---

#### Prefer versions from this repository instead of the already available ones

This is useful if the package you want is already in your repositories but you want the version (and updates) here, built differently.

To make apt track specific packages from this repository, and not the others where they're available, pin them in the `/etc/apt/preferences` file:

Add this to the `/etc/apt/preferences` file:
```
Package: *
Pin: origin "deb.avivace.com"
Pin-Priority: 1000
```

This will cause to always track packages from this repository, if they are available here. Replace `*` to `chromium` to track only the `chromium` package.
