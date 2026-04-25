# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a dunst notification daemon configuration directory. Dunst is a lightweight notification daemon for Linux that displays desktop notifications.

## Configuration File

- `dunstrc` - Main configuration file (INI-style format)

## Configuration Structure

The config file uses INI-style sections:

### Global Settings (`[global]`)
Core notification behavior: positioning (`origin`, `offset`), appearance (`font`, `frame_color`, `transparency`), sizing (`width`, `height`), and interaction (`mouse_left_click`, `close`, `close_all`).

### Urgency Levels
- `[urgency_low]` - Low priority notifications (3s timeout)
- `[urgency_normal]` - Normal priority notifications (3s timeout)
- `[urgency_critical]` - Critical notifications (no timeout, red frame)

### Notification Rules
Custom sections match notifications by `appname`, `body`, `summary`, `category`, or `desktop_entry` and can override:
- `new_icon` - Custom icon path
- `urgency` - Override urgency level
- `timeout` - Custom timeout
- `background`/`foreground`/`frame_color` - Custom colors
- `script` - Execute script when rule matches

## Key Patterns in This Config

- Datadog alert integration with pattern matching on notification body (e.g., `body = .*Recovered.*`)
- Application-specific icons for Discord, Reddit, YouTube, GitLab, etc.
- System notifications for battery, brightness, touchpad
- Custom "Rayne" app notifications with distinct styling

## Testing Changes

```bash
# Reload dunst config
killall dunst; dunst &

# Send test notification
notify-send "Test Summary" "Test body message"

# Debug mode to see notification details
dunst -print
```

## Reference

See `man 5 dunst` for full configuration options.
