# vuetify-mermaid-test

Demonstrate embedding mermaid diagrams in vuetify 3 components

## Configuration

```bash
git clone https://github.com/parasaurolophus/vuetify-mermaid-test.git
cd vuetify-mermaid-test
# assumes node and npm are installed
npm install
```

## Testing

```bash
# assumes GNU make and chromium-browser are installed
make test
```

## Building

```bash
# assumes GNU make is installed
# output will be in the dist subdirectory
make build
```

`Makefile` also supports `clean` and `all` targets where `all` combines `clean`
and `build`. Similarly, the `test` target combines `dev` and `browser` targets
that invoke the built in server and launch the chromium browser, respectively.
