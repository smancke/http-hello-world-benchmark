FROM swiftdocker/swift

COPY . /data/swift-perfect
WORKDIR /data/swift-perfect

RUN apt-get update && apt-get install libssl-dev uuid-dev -y && swift build --configuration release

EXPOSE 8080

CMD [ ".build/release/Perfect" ]
