FROM dart:3.5.4

WORKDIR /app
COPY pubspec.* ./
RUN dart pub get

COPY . .

ENV DART_VM_OPTIONS="--enable-asserts=false"

CMD ["dart", "bin/main.dart"]