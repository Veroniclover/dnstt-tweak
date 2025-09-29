#!/bin/bash

arch=$(uname -m)

if [[ "$arch" == "aarch64" ]]; then
    curl -sL "https://github.com/Veroniclover/dnstt-tweak/releases/download/v0.0.1/dnstt-arm64" -o "$PREFIX/bin/dnstt-tweak"
    chmod +x "$PREFIX/bin/dnstt-tweak"
else
    echo "not supported, contact owner for support"
fi
