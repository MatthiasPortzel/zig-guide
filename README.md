Project started September 7th, 2024

Using a subset of CommonMark Markdown, with the following restrictions:
* No (unordered/ordered) lists
* Inline bold only for character names
* Gemtext-strictness code blocks (exactly three back-ticks)
* Links must appear on their own line

# Building
Currently using Zine (since it supports static-generation of Zig syntax highlighting), but the content is designed to not use Zine-specific features, so building with a different markdown-based SSG should be theoretically possible.

https://github.com/kristoff-it/zine/releases/tag/v0.10.3

First, download Zine from the above link, and put the executable at `./bin/zine`.
Then, build by running `./bin/zine`

# Lucide

Selected icons are from the Lucide icon pack (https://lucide.dev) and licensed under the ISC license.

```
ISC License

Copyright (c) for portions of Lucide are held by Cole Bemis 2013-2022 as part of Feather (MIT). All other copyright (c) for Lucide are held by Lucide Contributors 2022.

Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
```
