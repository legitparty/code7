ARG font="code7"
ENV font=${font}

FROM ubuntu AS ${font}

ARG font="code7"
ENV font=${font}

COPY / /code7
WORKDIR /code7

RUN apt install python3-pip python3-fontforge
RUN pip3 install bdf2ttf
RUN mkdir ttf
RUN bdf2ttf ${font}.bdf --out ttf/${font}.ttf

FROM sratch

ARG font="code7"
ENV font=${font}

COPY --from ${font} /code7/ttf /

