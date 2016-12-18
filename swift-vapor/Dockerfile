FROM swiftdocker/swift

COPY . /data/swift-vapor
WORKDIR /data/swift-vapor

RUN [ "swift", "build", "--configuration", "release" ]

EXPOSE 8080

CMD [ ".build/release/App" ]
