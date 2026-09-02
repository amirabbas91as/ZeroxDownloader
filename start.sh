#!/bin/bash
# راه‌اندازی سریع Tor (بدون بلاک کردن) + بات
# Railway باید سریع پورت را باز کند وگرنه crash می‌کند

# Tor را بک‌گراند اجرا کن
tor -f /etc/tor/torrc-zerox > /tmp/tor.log 2>&1 &
disown

# بلافاصله بات را اجرا کن — بات خودش هر بار دانلود چک می‌کند Tor زنده است یا نه
# (fallback داخلی: اگر Tor نبود مستقیم می‌رود)
exec python3 bot.py
