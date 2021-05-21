#!/bin/sh

telegram_chat_id=1602030321
telegram_bot_token=1865954404:AAGF6Dunvf9GyMOViEk41CCV3xuRhoJ1ff0

curl -s -X POST \
https://api.telegram.org/bot"${telegram_bot_token}"/sendPhoto \
-F chat_id=${telegram_chat_id} -F photo="@Press.png" \
-F caption="Pressure"

curl -s -X POST \
https://api.telegram.org/bot"${telegram_bot_token}"/sendPhoto \
-F chat_id=${telegram_chat_id} -F photo="@Temp.png" \
-F caption="Temperature"

curl -s -X POST \
https://api.telegram.org/bot"${telegram_bot_token}"/sendPhoto \
-F chat_id=${telegram_chat_id} -F photo="@Vol.png" \
-F caption="Volume"

curl -s -X POST \
https://api.telegram.org/bot"${telegram_bot_token}"/sendPhoto \
-F chat_id=${telegram_chat_id} -F photo="@E_pair.png" \
-F caption="E_pair"

