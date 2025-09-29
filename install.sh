#!/bin/bash

arch=$(uname -m)
bin="$PREFIX/bin/dnstt-tweak"

case "$arch" in
    aarch64|armv8l)
        url="https://github.com/Veroniclover/dnstt-tweak/releases/download/v0.0.1/dnstt-arm64"
        ;;
    armv7l)
        url="https://github.com/Veroniclover/dnstt-tweak/releases/download/v0.0.1/dnstt-armv7"
        ;;
    i686)
        url="https://github.com/Veroniclover/dnstt-tweak/releases/download/v0.0.1/dnstt-x86"
        ;;
    x86_64)
        url="https://github.com/Veroniclover/dnstt-tweak/releases/download/v0.0.1/dnstt-x86_64"
        ;;
    *)
        echo "Architecture $arch not supported, contact owner for support"
        exit 1
        ;;
esac

curl -sL "$url" -o "$bin"
chmod +x "$bin"
echo "Installation Successful, you can proceed to the second command"
