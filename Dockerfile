FROM google/dart:latest

ENV INPUT_NAME="John Doe"

COPY action_app/ /action_app/

RUN cd /action_app \
    && pub get \

ENTRYPOINT [ "dart", "/action_app/bin/main.dart" ]
