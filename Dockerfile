FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
  curl dnsutils \
  && rm -rf "/var/lib/apt/lists"

COPY --from=mattipaksula/lolbear /lolbear /usr/bin
COPY --from=mattipaksula/lolbear /hostkey /hostkey
COPY --from=jpillora/chisel /app/chisel /usr/bin

WORKDIR /
COPY entrypoint.sh .

ENTRYPOINT [ "/entrypoint.sh" ]
