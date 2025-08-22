#!/bin/bash
(
    cd $(dirname "$0")

    osascript -e "tell application \"Finder\" to delete \"$(realpath ./public)\" as POSIX file"

    ./bin/zine release

    git clone --bare . public/zig-guide.git
    git --git-dir=public/zig-guide.git update-server-info

    wrangler deploy --assets=public --name=zig-guide --compatibility-date=2025-07-20
)
