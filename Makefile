.PNONY: darwin

VERSION=$(or ${tag}, dev)

darwin:
	cross build --release --bin=bcrypt --target=x86_64-apple-darwin
	cp ./target/x86_64-apple-darwin/release/bcrypt ./dist/bcrypt.darwin-${VERSION}

linux:
	cross build --release --bin=bcrypt --target=x86_64-unknown-linux-gnu
	cp ./target/x86_64-unknown-linux-gnu/release/bcrypt ./dist/bcrypt.linux-${VERSION}

windows:
	cross build --release --bin=bcrypt --target=x86_64-pc-windows-gnu
	cp ./target/x86_64-pc-windows-gnu/release/bcrypt.exe ./dist/bcrypt.windows-${VERSION}.exe

build: darwin linux windows
