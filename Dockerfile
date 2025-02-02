FROM alpine:3.19

RUN apk update && apk add --no-cache tor

COPY torrc /etc/tor/torrc
RUN chown -R tor /etc/tor

USER tor

ENTRYPOINT ["tor"]
CMD ["-f", "/etc/tor/torrc"]
