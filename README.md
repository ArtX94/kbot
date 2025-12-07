# kbot
This is a functional Telegram bot with root commands and settings. It will be able to process messages from users and respond to them.

## Link to bot
t.me/@artx00_bot

## Prerequisites
- Go 1.16 or later
- Telegram Bot Token (set as TELE_TOKEN environment variable)
- Required Go packages:
  - github.com/spf13/cobra
  - github.com/stianeikeland/go-rpio
  - gopkg.in/telebot.v4

## Usage

Start the bot:
```bash
./kbot start
```

### Available Commands

- `hello` - Get a greeting from the bot and show version
