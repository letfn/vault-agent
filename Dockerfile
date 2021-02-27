FROM defn/vault:1.6.3

RUN apk upgrade

COPY service /service
RUN chmod 755 /service

ENTRYPOINT [ "/service" ]

CMD []
