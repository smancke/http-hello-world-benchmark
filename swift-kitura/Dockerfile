FROM swiftdocker/swift

COPY . /data/swift-kitura
WORKDIR /data/swift-kitura

RUN apt-get update && apt-get install openssl libssl-dev -y && swift build --configuration release

EXPOSE 8080

CMD [ ".build/release/KituraHello" ]
