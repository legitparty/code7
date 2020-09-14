# syntax=docker/dockerfile:experimental

FROM scratch AS export
ARG font="code7"
ENV font=${font}

COPY --from=ttf /code7/ttf /

