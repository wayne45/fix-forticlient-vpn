# Fix FortiClient VPN Script on macOS

A simple script to fix network issues caused by FortiClient VPN on macOS.

## Problem

FortiClient VPN modifies macOS `pf` (packet filter) firewall rules and sometimes fails to clean them up after disconnecting. This can cause broken network connectivity or routing issues even after the VPN is disconnected.

## What it does

The script resets the macOS packet filter to its default state:

1. Flushes all current `pf` rules (`pfctl -F all`)
2. Reloads the default macOS `pf` configuration from `/etc/pf.conf`

## Usage

```bash
chmod +x fixvpn.sh
./fixvpn.sh
```

You will be prompted for your password since the script requires `sudo`.

## Requirements

- macOS
- Administrator privileges