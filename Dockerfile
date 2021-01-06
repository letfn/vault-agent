FROM defn/vault

RUN apk upgrade

COPY service /service
RUN chmod 755 /service

ENTRYPOINT [ "/service" ]

CMD []
