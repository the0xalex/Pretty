swift build -c release -v -Xswiftc -Ounchecked -Xcc -O3 \
  && cp `swift build -c release --show-bin-path`/Pretty . \
  && mv Pretty pretty