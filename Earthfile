VERSION 0.8

# Wrangler requires node 20
FROM node:20-bullseye

WORKDIR /src

nodeversion:
    RUN node --version

installzine:
    RUN curl -L -o /tmp/zine.tar.xz https://github.com/kristoff-it/zine/releases/download/v0.11.1/x86_64-linux-musl.tar.xz && \
        tar --extract -f /tmp/zine.tar.xz --directory /usr/local/bin/ && \
        chmod +x /usr/local/bin/zine

release:
    FROM +installzine
    COPY --dir assets content layouts zine.ziggy ./
    RUN zine release
    SAVE ARTIFACT public

installwrangler:
    # Install wrangler@^4.0 globally
    RUN npm install -g wrangler@^4.0.0

deploy:
    FROM +installwrangler
    COPY --dir +release/public /src/public

    RUN --push --secret CLOUDFLARE_ACCOUNT_ID --secret CLOUDFLARE_API_TOKEN wrangler deploy \
        --assets=./public \
        --name=zig-guide \
        --compatibility-date=2025-07-20
