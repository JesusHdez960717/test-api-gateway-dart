FROM dart:3.5.4

WORKDIR /app
COPY pubspec.* ./
RUN dart pub get

COPY . .
CMD ["dart", "bin/main.dart"]
