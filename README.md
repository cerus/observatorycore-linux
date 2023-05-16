# observatorycore-linux

> **Important notice:** Linux support will be officially dropped by ObservatoryCore. See issue [#3](https://github.com/cerus/observatorycore-linux/issues/3) for more details.

**Unofficial** Linux builds for [ObservatoryCore](https://github.com/Xjph/ObservatoryCore)

## Tested distributions

| Distro     | Version | Status | Notes                                                                   | Updated    |
|------------|---------|--------|-------------------------------------------------------------------------|------------|
| Arch Linux | /       | ✅      |                                                                         | Mar 03, 23 |
| Linux Mint | 21.1    | ⚠️     | See issue [#1](https://github.com/cerus/observatorycore-linux/issues/1) | Mar 03, 23 |

## Setup

1. Download the `linux64.tar.gz` file from the latest release *or* clone the repo and run the build script
2. Unzip the `linux64.tar.gz` file (`tar -xvf linux64.tar.gz`)
3. Ensure that you've installed .NET 6
4. Run the `ObservatoryCore` executable

## Nightly releases

A ObservatoryCore Linux build will be published every night. Check the releases tab
or [click here](https://github.com/cerus/observatorycore-linux/releases/tag/nightly/latest).

## Requirements

- .NET 6
    - Arch package: `dotnet-sdk-6.0`

## How to build

Run build.sh

## Known issues

### "Notifications steal the focus from Elite: Dangerous"

This is a problem with your window manager. Look for a setting that says something about focus stealing.\
On KDE the setting is `Window Management > Window Behavior > Focus > Focus stealing prevention` (set it to `High`
whenever you're playing)

## Images

![Img](https://i.imgur.com/Hx595j4.png)
