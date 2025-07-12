Using a subset of CommonMark Markdown, with the following restrictions:
* No (unordered/ordered) lists
* Inline bold only for character names
* Gemtext-strictness code blocks (exactly three back-ticks)
* Links must appear on their own line

# Building
Currently using Zine (since it supports static-generation of Zig syntax highlighting), but the content is designed to not use Zine-specific features, so building with a different markdown-based SSG should be possible in the future.

https://github.com/kristoff-it/zine/releases/latest

First, download Zine from the above link, and put the executable at `./bin/zine`.
Then, build by running `./bin/zine`
