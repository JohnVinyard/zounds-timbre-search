FROM zounds

COPY timbre.py timbre.py

EXPOSE 8888

RUN wget https://archive.org/download/FlavioGaete/FlavioGaete22.zip \
    && python timbre.py --build \
    && rm FlavioGaete22.zip

CMD python timbre.py --run --port 8888