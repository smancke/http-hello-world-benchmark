FROM swiftdocker/swift

COPY . /data/swift-zewo
WORKDIR /data/swift-zewo

RUN apt-get update && apt-get install openssl libssl-dev -y && swift build --configuration release

EXPOSE 8080

CMD [ ".build/release/Zewo" ]
