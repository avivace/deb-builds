# deb-builds

#### Sway, i3-gaps, chromium, obs and wlc-dev repository and ready-to-install debian binaries.

Ready binaries to download are available in the [Releases](https://github.com/avivace/deb-builds/releases) page. Just run `dpkg -i <package-name.deb>` to install a package.

---

My debian packages builds. Some of them are simply vanilla builds of (currently) unavailable software in the official repositories, while others are source packages built with custom/modified `rules` to fix or restore a functionality. 

Check the package folder to find the exact details  and the scripts/rules files used to produce the builds.

All of them are tested and currently used on my `Sid` systems.

## Repository
If you don't want to keep downloading binaries and manually install them, you can use my unofficial debian repository:

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

### Sway
Vanilla build from the git repository. Release (`-DCMAKE_BUILD_TYPE=Release`).

### Chromium - Hangouts
(Debian) Chromium source package built with the `enable_hangout_services_extension` flag enabled. This allows the Google Hangouts screensharing feature to work correctly.

### i3-gaps
Vanilla build from the git repository.

### OBS-Studio
Vanilla build from the git repository.

### wlc-dev
Development wlc libraries. Vanilla build from the git repository.


## Further References

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
