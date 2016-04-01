# Happy Friday!

A Slack ping application. Schedule this to run on Fridays.

# Requirements

 - Ruby `2.3.0` with bundler

# Getting Started

```bash
# Install dependencies
$ bundle install

# Run the notifier via rake
$ WEBHOOK_URL="https://slack.com/......" CHANNEL_NAME="#foobar" bin/rake friday
```

# Scheduling with the provided systemd timer

```bash
# Configure environment; edit .env file where appropriate
$ cp .env.example .env

# Install systemd service files
$ sudo cp systemd/* /etc/systemd/system/.

# Edit the paths in the service file to point at your cloned repo
$ $EDITOR /etc/systemd/system/happy-friday.service

# Enable and start the timer
$ sudo systemctl daemon-reload
$ sudo systemctl enable happy-friday.timer
$ sudo systemctl start happy-friday.timer
```
